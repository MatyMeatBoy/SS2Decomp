	thumb_func_start sub_08097E28
sub_08097E28: @ 0x08097E28
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	bl sub_0800CCCC
	cmp r0, #0
	bne _08097E9C
	bl sub_0800CC98
	cmp r0, #0
	bne _08097E9C
	bl sub_0800CD8C
	cmp r0, #0
	bne _08097E9C
	bl sub_0800CD34
	cmp r0, #0
	bne _08097E9C
	ldr r1, _08097EA4
	ldr r0, _08097EA8
	ldrb r0, [r0, #0xd]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r1, r0, #0x10
	movs r0, #0xe0
	lsls r0, r0, #7
	subs r2, r0, r1
	ldr r0, [r4, #4]
	cmp r2, r0
	ble _08097E76
	str r2, [r4, #4]
_08097E76:
	movs r0, #0xa0
	lsls r0, r0, #8
	subs r2, r0, r1
	ldr r0, [r4, #4]
	cmp r2, r0
	bge _08097E84
	str r2, [r4, #4]
_08097E84:
	ldr r1, [r4, #0]
	ldr r0, _08097EAC
	cmp r1, r0
	bgt _08097E90
	adds r0, #1
	str r0, [r4, #0]
_08097E90:
	ldr r0, [r4, #0]
	movs r1, #0xe0
	lsls r1, r1, #8
	cmp r0, r1
	ble _08097E9C
	str r1, [r4, #0]
_08097E9C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08097EA4: .4byte gUnk_080B9704
_08097EA8: .4byte gUnk_030002A0
_08097EAC: .4byte 0x000008FF
	thumb_func_end sub_08097E28
