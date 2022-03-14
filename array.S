	.section .rodata
arrtext:
	.asciz	"Index: %d  Val: %d\n"
	.text
	.type main, %function
	.type printarr, %function
	.type setuparr, %function	
	.global main
setuparr:
	stp	x29, x30, [sp, #-16]!
	adr	x21, array
	mov	x19, #0	
.loop:
	cmp	x19, #100
	bge	.done
	add	x22, x19, #10
	str	w22, [x21], #4
	add	x19, x19, #1		
	b	.loop
.done:	
	ldp	x29, x30, [sp], #16	
	ret	

printarr:
	stp	x29, x30, [sp, #-16]!
	adr	x21, array	
	mov	x19, #0
loop:
	adr	x0, arrtext	
	cmp	x19, #100
	bge	done
	mov	w1, w19
	ldr	w2, [x21], #4
	bl	printf
	add	x19, x19, #1
	b	loop
done:	
	ldp	x29, x30, [sp], #16	
	ret	
	.size	printarr, (. - printarr)
main:	
	stp	x29, x30, [sp, #-16]!
	bl	setuparr
	bl	printarr
	mov	x0, 0
	ldp	x29, x30, [sp], #16
	ret
	.size	main, (. - main)
	.section .data
array:
	.fill 100, 4
	.align 4
	

