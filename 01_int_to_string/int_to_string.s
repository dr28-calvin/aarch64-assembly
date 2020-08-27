.text
.global int_to_string
int_to_string:
	subs x2, x2, #1
	mov x4, #10
int_to_string_loop:
	mov w3, #0x30
	udiv x9, x0, x4
	msub x5, x4, x9, x0
	add x3, x3, x5
	strb w3, [x1, x2]
	mov x0, x9
	subs x2, x2, #1
	bpl int_to_string_loop
	ret
