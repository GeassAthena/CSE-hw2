#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include <stdio.h>
#include <setjmp.h>

jmp_buf trampoline, jb0, jb1;
char buf_s[64];
ssize_t nread, nwritten;
int fd_from, fd_to, saved_errno;

void handle_error() {
    saved_errno = errno;

    close(fd_from);
    if (fd_to >= 0)
        close(fd_to);

    errno = saved_errno;
}

void switch_thread(jmp_buf old_buf, jmp_buf new_buf) {
    if (!setjmp(old_buf)) {
        longjmp(new_buf, 1);
    }
}

void read_thread() {
    char b[4096];
    b[4095] = 1;
    while (nread = read(fd_from, buf_s, sizeof(buf_s)), nread > 0) {
        printf("Reader thread reads %d bytes.\n", nread);
        switch_thread(jb1, jb0);
    }
}

void write_thread() {
    do {
        nwritten = write(fd_to, buf_s, nread);
        if (nwritten >= 0) {
            printf("Writer thread writes %d bytes.\n", nwritten);
            nread -= nwritten;
            switch_thread(jb0, jb1);
        } else if (errno != EINTR) {
            handle_error();
        }
    } while (nread > 0);
}


int cp(const char *to, const char *from) {
    printf("Start...\n");
    fd_from = open(from, O_RDONLY);
    if (fd_from < 0)
        return -1;

    fd_to = open(to, O_WRONLY | O_CREAT | O_EXCL, 0666);
    if (fd_to < 0) {
        handle_error();
        return -1;
    }
    if (!setjmp(trampoline)) {
        if (!setjmp(jb0)) {
            longjmp(trampoline, 1);
        } else {
            write_thread();
        }
    } else {
        read_thread();
    }

    if (nread == 0) {
        if (close(fd_to) < 0) {
            fd_to = -1;
            handle_error();
            return -1;
        }
        close(fd_from);
        printf("Done...\n");
        /* Success! */
        return 0;
    }
    return -1;
}

int main(int argc, char *argv[]) {
    if (argc != 3) {
        printf("usage: ./cpy <from> <to>\n");
        return 1;
    }

    char *from;
    char *to;

    from = argv[1];
    to = argv[2];

    cp(to, from);
}

