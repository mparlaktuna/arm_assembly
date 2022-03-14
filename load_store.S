	.text
	.type	main, %function
	.global main
main:
	stp	x29, x30, [sp, #-16]!
	mov	x29, #0x0
	mov	x30, #0x0
	ldp	x29, x30, [sp], #16
	ret
	.size 	main, (. - main)
