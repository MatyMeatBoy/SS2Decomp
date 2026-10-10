	thumb_func_start sub_080308B4
sub_080308B4: @ 0x080308B4
	push {r4, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080308E8
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _080308F0
	ldr r0, _080308EC
	ldr r0, [r0, #0]
	movs r1, #0xdf
	lsls r1, r1, #1
	b _080308F8
	.2byte 0x0000
_080308E8: .4byte gUnk_03003CE0
_080308EC: .4byte gUnk_03005CF4
_080308F0:
	ldr r0, _0803090C
	ldr r0, [r0, #0]
	movs r1, #0xd9
	lsls r1, r1, #1
_080308F8:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	cmp r0, #4
	bls _08030902
	b _08030AFE
_08030902:
	lsls r0, r0, #2
	ldr r1, _08030910
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0803090C: .4byte gUnk_03005CF4
_08030910: .4byte _08030914
_08030914:
	.4byte _0803092C
_08030918: .4byte _08030982
_0803091C: .4byte _080309DA
_08030920: .4byte _08030A30
_08030924: .4byte _08030AB0
_08030928:
	bl sub_080003F0
_0803092C:
	bl sub_0805F184
	cmp r0, #0
	bne _08030928
	b _0803093A
_08030936:
	bl sub_080003F0
_0803093A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08030936
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803095C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030964
_0803095C: .4byte 0x001400DC
_08030960:
	bl sub_080003F0
_08030964:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08030970
	b _08030AFE
_08030970:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030960
	bl sub_0805EFBC
	b _08030AFE
_0803097E:
	bl sub_080003F0
_08030982:
	bl sub_0805F184
	cmp r0, #0
	bne _0803097E
	b _08030990
_0803098C:
	bl sub_080003F0
_08030990:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803098C
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080309B4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080309BC
	.2byte 0x0000
_080309B4: .4byte 0x001400DD
_080309B8:
	bl sub_080003F0
_080309BC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080309C8
	b _08030AFE
_080309C8:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080309B8
	bl sub_0805EFBC
	b _08030AFE
_080309D6:
	bl sub_080003F0
_080309DA:
	bl sub_0805F184
	cmp r0, #0
	bne _080309D6
	b _080309E8
_080309E4:
	bl sub_080003F0
_080309E8:
	bl sub_0805EF90
	cmp r0, #0
	bne _080309E4
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030A0C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030A14
	.2byte 0x0000
_08030A0C: .4byte 0x001400DE
_08030A10:
	bl sub_080003F0
_08030A14:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08030AFE
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030A10
	bl sub_0805EFBC
	b _08030AFE
_08030A2C:
	bl sub_080003F0
_08030A30:
	bl sub_0805F184
	cmp r0, #0
	bne _08030A2C
	b _08030A3E
_08030A3A:
	bl sub_080003F0
_08030A3E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08030A3A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030A60
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030A68
_08030A60: .4byte 0x001400DF
_08030A64:
	bl sub_080003F0
_08030A68:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08030A7E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030A64
	bl sub_0805EFBC
_08030A7E:
	movs r4, #3
	bl sub_0800CE30
	cmp r0, #0
	beq _08030A98
	ldr r0, _08030A90
	ldr r0, [r0, #0]
	ldr r1, _08030A94
	b _08030A9E
_08030A90: .4byte gUnk_03005CF4
_08030A94: .4byte 0x000001BF
_08030A98:
	ldr r0, _08030AA4
	ldr r0, [r0, #0]
	ldr r1, _08030AA8
_08030A9E:
	adds r0, r0, r1
	strb r4, [r0, #0]
	b _08030AFE
_08030AA4: .4byte gUnk_03005CF4
_08030AA8: .4byte 0x000001B3
_08030AAC:
	bl sub_080003F0
_08030AB0:
	bl sub_0805F184
	cmp r0, #0
	bne _08030AAC
	b _08030ABE
_08030ABA:
	bl sub_080003F0
_08030ABE:
	bl sub_0805EF90
	cmp r0, #0
	bne _08030ABA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030AE0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030AE8
_08030AE0: .4byte 0x001400E0
_08030AE4:
	bl sub_080003F0
_08030AE8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08030AFE
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030AE4
	bl sub_0805EFBC
_08030AFE:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08030B24
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_08030B24: .4byte gUnk_03003CE0
	thumb_func_end sub_080308B4
