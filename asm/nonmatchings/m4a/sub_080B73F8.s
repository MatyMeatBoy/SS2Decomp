	thumb_func_start sub_080B73F8
sub_080B73F8: @ 0x080B73F8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _080B74C4
	movs r0, #0x8f
	strh r0, [r1, #0]
	ldr r2, _080B74C8
	movs r0, #0x77
	strh r0, [r2, #0]
	ldr r0, _080B74CC
	movs r1, #8
	strb r1, [r0, #0]
	adds r0, #6
	strb r1, [r0, #0]
	adds r0, #0x10
	strb r1, [r0, #0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0, #0]
	adds r0, #8
	strb r1, [r0, #0]
	adds r0, #0x10
	strb r1, [r0, #0]
	ldr r1, _080B74D0
	movs r0, #0
	strb r0, [r1, #0]
	ldr r1, _080B74D4
	adds r0, r1, #0
	strh r0, [r2, #0]
	ldr r0, _080B74D8
	ldr r4, [r0, #0]
	ldr r6, [r4, #0]
	ldr r0, _080B74DC
	cmp r6, r0
	bne _080B74BC
	adds r0, r6, #1
	str r0, [r4, #0]
	ldr r1, _080B74E0
	ldr r0, _080B74E4
	str r0, [r1, #0x20]
	ldr r0, _080B74E8
	str r0, [r1, #0x44]
	ldr r0, _080B74EC
	str r0, [r1, #0x4c]
	ldr r0, _080B74F0
	str r0, [r1, #0x70]
	ldr r0, _080B74F4
	str r0, [r1, #0x74]
	ldr r0, _080B74F8
	str r0, [r1, #0x78]
	ldr r0, _080B74FC
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _080B7500
	str r0, [r2, #0]
	adds r1, #0x84
	ldr r0, _080B7504
	str r0, [r1, #0]
	str r5, [r4, #0x1c]
	ldr r0, _080B7508
	str r0, [r4, #0x28]
	ldr r0, _080B750C
	str r0, [r4, #0x2c]
	ldr r0, _080B7510
	str r0, [r4, #0x30]
	ldr r0, _080B7514
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp, #0]
	ldr r2, _080B7518
	mov r0, sp
	adds r1, r5, #0
	bl sub_080B8578
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1, #0]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1, #0]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1, #0]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1, #0]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4, #0]
_080B74BC:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080B74C4: .4byte 0x04000084
_080B74C8: .4byte 0x04000080
_080B74CC: .4byte 0x04000063
_080B74D0: .4byte 0x04000070
_080B74D4: .4byte 0x0000FF77
_080B74D8: .4byte gUnk_03007FF0
_080B74DC: .4byte 0x68736D53
_080B74E0: .4byte gUnk_03007430
_080B74E4: .4byte sub_080B82F4
_080B74E8: .4byte sub_080B70A4
_080B74EC: .4byte sub_080B70B8
_080B74F0: .4byte sub_080B844C
_080B74F4: .4byte sub_080B703C
_080B74F8: .4byte sub_080B7610
_080B74FC: .4byte sub_080B6DE0
_080B7500: .4byte sub_080B7994
_080B7504: .4byte sub_080B7A14
_080B7508: .4byte sub_080B7C3C
_080B750C: .4byte sub_080B7B84
_080B7510: .4byte sub_080B7ADC
_080B7514: .4byte 0x0000003C
_080B7518: .4byte 0x05000040
	thumb_func_end sub_080B73F8
