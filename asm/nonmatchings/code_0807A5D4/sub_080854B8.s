	thumb_func_start sub_080854B8
sub_080854B8: @ 0x080854B8
	push {r4, r5, lr}
	sub sp, #4
	movs r5, #0
	str r5, [sp, #0]
	ldr r4, _080854E0
	ldr r1, [r4, #0]
	adds r1, #0xf4
	ldr r2, _080854E4
	mov r0, sp
	bl sub_080B8578
	ldr r1, [r4, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r5, [r1, #0x20]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_080854E0: .4byte gUnk_03006440
_080854E4: .4byte 0x05000004
	thumb_func_end sub_080854B8
