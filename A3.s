.global _start
_start:
    MOV R0, #1
    LDR R1, =message
    LDR R2, =13
    MOV R7, #4 // system call to print to terminal
    SWI 0

    // exit the program 
    MOV R0, #0
    MOV R7, #1
    SWI 0

.section .data
message: 
    .asciz "Hello World\n"
    