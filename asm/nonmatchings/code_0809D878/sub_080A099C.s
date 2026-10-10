	thumb_func_start sub_080A099C
sub_080A099C: @ 0x080A099C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	bl sub_0809689C
	movs r0, #0
	movs r1, #0x38
	bl sub_08097D0C
	ldr r3, _080A0A34
	adds r1, r3, #0
	adds r1, #0x70
	movs r2, #0
	movs r0, #0x1e
	strh r0, [r1, #0]
	adds r1, #2
	movs r0, #0x19
	strh r0, [r1, #0]
	movs r1, #0x1e
	adds r0, r3, #0
	adds r0, #0x74
	strh r1, [r0, #0]
	movs r1, #0x19
	adds r0, #2
	strh r1, [r0, #0]
	ldr r0, _080A0A38
	strb r2, [r0, #0]
	ldr r0, _080A0A3C
	mov sl, r0
	ldr r6, _080A0A40
	ldr r1, _080A0A44
	mov r8, r1
	movs r7, #0xa6
	lsls r7, r7, #1
	movs r0, #0x8c
	add r0, r8
	mov r9, r0
_080A09EA:
	mov r1, sl
	ldrb r0, [r1, #0]
	movs r1, #0
	ldrsb r1, [r6, r1]
	bl sub_08097D7C
	ldr r0, _080A0A38
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080A0A58
	ldr r0, _080A0A48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _080A0A86
	ldr r1, _080A0A4C
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne _080A0A60
	movs r0, #0x14
	strb r0, [r1, #0]
	mov r1, sl
	ldrb r0, [r1, #0]
	cmp r0, #1
	bls _080A0A1E
	subs r0, #1
	strb r0, [r1, #0]
_080A0A1E:
	ldrb r2, [r6, #0]
	movs r1, #0
	ldrsb r1, [r6, r1]
	cmp r1, #0
	bge _080A0A50
	movs r0, #6
	negs r0, r0
	cmp r1, r0
	bge _080A0A86
	adds r0, r2, #1
	b _080A0A84
_080A0A34: .4byte gUnk_03003170
_080A0A38: .4byte gUnk_03000338
_080A0A3C: .4byte gUnk_0300033B
_080A0A40: .4byte gUnk_0300033C
_080A0A44: .4byte gUnk_03003CE0
_080A0A48: .4byte gUnk_03000339
_080A0A4C: .4byte gUnk_0300033A
_080A0A50:
	cmp r1, #6
	ble _080A0A86
	subs r0, r2, #1
	b _080A0A84
_080A0A58:
	ldr r1, _080A0A68
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _080A0A6C
_080A0A60:
	subs r0, #1
	strb r0, [r1, #0]
	b _080A0A86
	.2byte 0x0000
_080A0A68: .4byte gUnk_0300033A
_080A0A6C:
	movs r0, #0x14
	strb r0, [r1, #0]
	ldrb r0, [r6, #0]
	movs r1, #0
	ldrsb r1, [r6, r1]
	cmp r1, #0
	beq _080A0A86
	cmp r1, #0
	bge _080A0A82
	adds r0, #1
	b _080A0A84
_080A0A82:
	subs r0, #1
_080A0A84:
	strb r0, [r6, #0]
_080A0A86:
	ldr r0, _080A0B38
	adds r0, #0x7e
	ldrh r0, [r0, #0]
	movs r1, #0x64
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_08097D0C
	bl sub_080968C0
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	adds r2, r4, #0
	muls r2, r7, r2
	mov r1, r8
	adds r1, #0x94
	adds r2, r2, r1
	muls r0, r7, r0
	add r0, r9
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	adds r2, r4, #0
	muls r2, r7, r2
	mov r1, r8
	adds r1, #0x98
	adds r2, r2, r1
	muls r0, r7, r0
	ldr r1, _080A0B3C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	bl sub_080020F4
	muls r0, r7, r0
	add r0, r9
	movs r1, #1
	bl sub_08096AF4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_080020F4
	muls r0, r7, r0
	add r0, r9
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	bl sub_08097E28
	ldr r0, _080A0B40
	ldr r4, [r0, #0]
	movs r5, #0
_080A0B00:
	ldrh r1, [r4, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080A0B26
	ldrh r0, [r4, #8]
	lsrs r0, r0, #5
	cmp r0, #0
	bne _080A0B26
	adds r0, r4, #0
	movs r1, #1
	bl sub_08096AF4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08097E28
_080A0B26:
	adds r4, #0x20
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _080A0B00
	bl sub_080003F0
	b _080A09EA
_080A0B38: .4byte gUnk_03003170
_080A0B3C: .4byte gUnk_03003D70
_080A0B40: .4byte gUnk_03005D58
	thumb_func_end sub_080A099C
