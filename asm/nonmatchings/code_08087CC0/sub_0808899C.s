	thumb_func_start sub_0808899C
sub_0808899C: @ 0x0808899C
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08001494
	ldr r1, _080889C8
	str r0, [r1, #0x20]
	ldr r2, _080889CC
	adds r0, r0, r2
	str r0, [r1, #0x10]
	movs r0, #0x64
	str r0, [r1, #8]
	movs r0, #0
	str r0, [r1, #0x24]
	ldr r0, _080889D0
	str r0, [r1, #0xc]
	adds r0, r1, #0
	movs r1, #0
	bl sub_08000274
	pop {r0}
	bx r0
_080889C8: .4byte gUnk_03006450
_080889CC: .4byte 0x00000FFC
_080889D0: .4byte sub_08087CC0
	thumb_func_end sub_0808899C
