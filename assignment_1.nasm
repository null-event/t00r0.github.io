; author: paul
; purpose: SLAE_32 course assignment 1 bind tcp shellcode

global _start

section .text
_start:
  ; from: https://github.com/deadbits/shells/blob/master/bindshell.c
  ; we find we need the following syscalls - socket, bind, listen, accept, dup stdin stdout stderr and execve
  ;man 2 dup2
  ;man 2 socket
  ;man 2 bind
  ;man 2 listen
  ;man 2 accept
  ;man 2 execve


section .data


;int dup2(int oldfd, int newfd);
;   *  If  oldfd  is  not a valid file descriptor, then the call fails, and
          newfd is not closed.

       *  If oldfd is a valid file descriptor, and newfd has the same value as
          oldfd, then dup2() does nothing, and returns newfd.

       After  a  successful return from one of these system calls, the old and
       new file descriptors may be used interchangeably.  They  refer  to  the
       same open file description (see open(2)) and thus share file offset and
       file status flags; for example, if the file offset is modified by using
       lseek(2)  on one of the descriptors, the offset is also changed for the
       other.

;On success, these system calls return the new descriptor.  On error, -1
       is returned, and errno is set appropriately.

;int socket(int domain, int type, int protocol);
