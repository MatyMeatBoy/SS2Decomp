	thumb_func_start sub_080852AC
sub_080852AC: @ 0x080852AC
	push {lr}
	ldr r0, _080852C4
	movs r1, #0
	strh r1, [r0, #0]
	movs r0, #0x88
	bl sub_08001108
	ldr r0, _080852C8
	bl sub_0800115C
	pop {r0}
	bx r0
_080852C4: .4byte 0x04000012
_080852C8: .4byte sub_0808528C
	thumb_func_end sub_080852AC
