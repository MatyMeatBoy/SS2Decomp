	thumb_func_start sub_08097DBC
sub_08097DBC: @ 0x08097DBC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	movs r4, #0
	bl sub_0800CCCC
	cmp r0, #0
	bne _08097E18
	bl sub_0800CC98
	cmp r0, #0
	bne _08097E18
	bl sub_0800CD8C
	cmp r0, #0
	bne _08097E18
	bl sub_0800CD34
	cmp r0, #0
	bne _08097E18
	ldr r1, _08097E20
	ldr r0, _08097E24
	ldrb r0, [r0, #0xd]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r2, r0, #0x10
	movs r0, #0xe0
	lsls r0, r0, #7
	subs r0, r0, r2
	cmp r0, r6
	ble _08097E0A
	movs r4, #0xf
_08097E0A:
	movs r0, #0xa0
	lsls r0, r0, #8
	subs r0, r0, r2
	cmp r0, r6
	bge _08097E18
	movs r0, #0xf
	orrs r4, r0
_08097E18:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08097E20: .4byte gUnk_080B9704
_08097E24: .4byte gUnk_030002A0
	thumb_func_end sub_08097DBC
