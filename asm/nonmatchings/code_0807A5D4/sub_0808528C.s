	thumb_func_start sub_0808528C
sub_0808528C: @ 0x0808528C
	push {lr}
	ldr r0, _080852A4
	movs r1, #4
	strh r1, [r0, #0]
	movs r0, #0x9f
	bl sub_08001108
	ldr r0, _080852A8
	bl sub_0800115C
	pop {r0}
	bx r0
_080852A4: .4byte 0x04000012
_080852A8: .4byte sub_080852AC
	thumb_func_end sub_0808528C
