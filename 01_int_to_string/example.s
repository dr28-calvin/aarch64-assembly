.text
.extern int_to_string
.global _start
_start:
	mov x0, 0xFFFFFFFFF
	ldr  x1, =number
    mov x2, len_number
    bl int_to_string
    /* write */
    mov x0, #1
    ldr x1, =number
    mov x2, len_number
    mov x8, #64
    svc #0
    /* write */
    mov x0, #1
    ldr x1, =new_line
    mov x2, len_new_line
    mov x8, #64
    svc #0
    /* write */
    mov x0, #1
    ldr x1, =msg
    mov x2, len
    mov x8, #64
    svc #0
    /* exit */
    mov x0, #0
    mov x8, #93
    svc #0
.data
new_line:
    .ascii "\n\n"
len_new_line = . - new_line

msg:
    .ascii "Hello World!\n"
len = . - msg
number:
	.ascii "0000000000000"
len_number = . - number
;max_number = len_number - 1

