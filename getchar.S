	.section .rodata
formatString:
	.string	"char: %c\n"
	.text
	.type	main, %function
	.global	main
main:
	stp	x29, x30, [sp, #-16]!

	bl	getchar
	mov	w9, w0

	ldr	x0, =formatString
	mov	w1, w9
	bl	printf

	mov	w0, 0
	ldp	x29, x30, [sp], #16
	ret
	.size	main, (. - main)
	
