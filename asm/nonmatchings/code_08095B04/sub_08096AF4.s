	thumb_func_start sub_08096AF4
sub_08096AF4: @ 0x08096AF4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	movs r5, #0
	bl sub_0800CCCC
	cmp r0, #0
	bne _08096B9E
	bl sub_0800CC98
	cmp r0, #0
	bne _08096B9E
	bl sub_0800CD8C
	cmp r0, #0
	bne _08096B9E
	bl sub_0800CD34
	cmp r0, #0
	bne _08096B9E
	cmp r6, #0
	beq _08096B58
	ldr r2, _08096B50
	movs r0, #0xd
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	ldr r1, [r4, #0]
	adds r1, r1, r0
	str r1, [r4, #0]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r5, r0, r1
	ldr r3, _08096B54
	ldrb r0, [r2, #0xe]
	ldrb r1, [r2, #0xd]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r5, r1
	asrs r1, r1, #8
	b _08096B98
_08096B50: .4byte gUnk_030002A0
_08096B54: .4byte gUnk_080B9704
_08096B58:
	ldr r2, [r4, #0]
	ldr r0, _08096B8C
	adds r5, r2, r0
	cmp r5, #0
	bge _08096B64
	negs r5, r5
_08096B64:
	ldr r1, _08096B90
	ldrb r0, [r1, #0xe]
	ldrb r1, [r1, #0xd]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	ldr r1, _08096B94
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r5, r0
	asrs r1, r0, #8
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r2, r0
	ble _08096B98
	ldr r0, [r4, #4]
	subs r0, r0, r1
	b _08096B9C
	.2byte 0x0000
_08096B8C: .4byte 0xFFFF8000
_08096B90: .4byte gUnk_030002A0
_08096B94: .4byte gUnk_080B9704
_08096B98:
	ldr r0, [r4, #4]
	adds r0, r0, r1
_08096B9C:
	str r0, [r4, #4]
_08096B9E:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08096AF4
