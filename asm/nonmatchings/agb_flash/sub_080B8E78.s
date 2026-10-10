	thumb_func_start sub_080B8E78
sub_080B8E78: @ 0x080B8E78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _080B8E90
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0xa]
	cmp r4, r0
	blo _080B8E98
	ldr r0, _080B8E94
	b _080B8F14
_080B8E90: .4byte gUnk_030076E0
_080B8E94: .4byte 0x000080FF
_080B8E98:
	adds r0, r4, #0
	bl sub_080B8C44
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _080B8F12
	mov r0, sp
	bl sub_080B87C8
	ldr r3, _080B8ED4
	ldrh r1, [r3, #0]
	ldr r0, _080B8ED8
	ands r1, r0
	ldr r0, _080B8EDC
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r3, #0]
	ldr r1, _080B8EE0
	ldr r0, [r2, #4]
	strh r0, [r1, #0]
	ldrb r0, [r2, #8]
	lsls r4, r0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r4, r4, r0
	adds r6, r1, #0
	b _080B8EEE
	.2byte 0x0000
_080B8ED4: .4byte 0x04000204
_080B8ED8: .4byte 0x0000FFFC
_080B8EDC: .4byte gUnk_030076E0
_080B8EE0: .4byte gUnk_030076E4
_080B8EE4:
	ldrh r0, [r6, #0]
	subs r0, #1
	strh r0, [r6, #0]
	adds r7, #1
	adds r4, #1
_080B8EEE:
	ldrh r0, [r6, #0]
	cmp r0, #0
	beq _080B8F04
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080B8CE0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080B8EE4
_080B8F04:
	ldr r2, _080B8F1C
	ldrh r0, [r2, #0]
	ldr r1, _080B8F20
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2, #0]
_080B8F12:
	adds r0, r5, #0
_080B8F14:
	add sp, #0x40
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080B8F1C: .4byte 0x04000204
_080B8F20: .4byte 0x0000FFFC
	thumb_func_end sub_080B8E78
