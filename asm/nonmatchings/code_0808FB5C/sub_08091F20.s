	thumb_func_start sub_08091F20
sub_08091F20: @ 0x08091F20
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0
	b _08091F38
_08091F2C:
	adds r7, #1
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xfe
	bhi _08091F42
_08091F38:
	ldrb r1, [r7, #0]
	cmp r1, #0
	beq _08091F42
	cmp r1, #0xfd
	bne _08091F2C
_08091F42:
	movs r0, #0x51
	strb r0, [r7, #0]
	adds r7, #1
	adds r0, r4, #0
	movs r1, #0x64
	bl sub_080B956C
	adds r6, r0, #0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	adds r0, r4, #0
	movs r1, #0x64
	bl sub_080B95E4
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_080B956C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_080B95E4
	lsls r0, r0, #0x18
	adds r6, #0x41
	strb r6, [r7, #0]
	adds r7, #1
	adds r4, #0x41
	strb r4, [r7, #0]
	adds r7, #1
	movs r1, #0x82
	lsls r1, r1, #0x17
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	strb r0, [r7, #0]
	movs r0, #0xfd
	strb r0, [r7, #1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08091F20
