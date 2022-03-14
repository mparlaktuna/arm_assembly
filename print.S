	.section .rodata
msg:
	.asciz	"Hello Assembly\n"
	.text
	.type	main, %function
	.global	main
main:
	stp	x29, x30, [sp, #-16]!

	ldr	x0, =msg
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], #16
	ret
	.size	main, (. - main)
