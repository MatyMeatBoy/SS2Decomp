	thumb_func_start sub_08051E98
sub_08051E98: @ 0x08051E98
	push {r4, r5, lr}
	sub sp, #8
	movs r0, #9
	movs r1, #0x58
	movs r2, #0x46
	bl sub_080289C0
	adds r5, r0, #0
	movs r1, #0x11
	bl sub_0802939C
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08051EE4
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_0800CC98
	cmp r0, #0
	bne _08051F10
	bl sub_0801AB24
	cmp r0, #1
	beq _08051EF4
	cmp r0, #1
	bgt _08051EE8
	cmp r0, #0
	beq _08051EEE
	b _08051F08
_08051EE4: .4byte gUnk_03003CE0
_08051EE8:
	cmp r0, #2
	beq _08051EFC
	b _08051F08
_08051EEE:
	bl sub_080576A8
	b _08051F08
_08051EF4:
	movs r0, #6
	bl sub_0801AB50
	b _08051F08
_08051EFC:
	movs r0, #6
	bl sub_0801AB90
	b _08051F08
_08051F04:
	bl sub_080003F0
_08051F08:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08051F04
_08051F10:
	movs r1, #0xd9
	ldr r0, _08051F2C
	str r1, [r0, #0]
	ldr r0, _08051F30
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08051F38
	movs r0, #0xd9
	bl sub_08006CB4
	b _08051F38
	.2byte 0x0000
_08051F2C: .4byte gUnk_03005CF8
_08051F30: .4byte gUnk_030027D0
_08051F34:
	bl sub_080003F0
_08051F38:
	bl sub_0805F184
	cmp r0, #0
	bne _08051F34
	b _08051F46
_08051F42:
	bl sub_080003F0
_08051F46:
	bl sub_0805EF90
	cmp r0, #0
	bne _08051F42
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08051F68
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08051F70
	.2byte 0x0000
_08051F68: .4byte 0x0014008C
_08051F6C:
	bl sub_080003F0
_08051F70:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08051F6C
	b _08051F80
_08051F7C:
	bl sub_080003F0
_08051F80:
	bl sub_0805F184
	cmp r0, #0
	bne _08051F7C
	b _08051F8E
_08051F8A:
	bl sub_080003F0
_08051F8E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08051F8A
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08051FEC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x10
	bl sub_0802939C
	movs r2, #0x50
	negs r2, r2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0x3c
	bl sub_08028D98
	ldr r0, _08051FF0
	ldr r0, [r0, #0]
	ldr r2, _08051FF4
	adds r1, r0, r2
	movs r2, #0
_08051FCC:
	ldr r0, [r1, #0]
	cmp r0, r5
	beq _08051FE0
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08051FCC
	bl sub_080003F0
	movs r1, #0
_08051FE0:
	cmp r1, #0
	beq _08051FFC
	movs r0, #4
	strh r0, [r1, #0x36]
	b _08051FFC
	.2byte 0x0000
_08051FEC: .4byte 0x0014008D
_08051FF0: .4byte gUnk_03005CF4
_08051FF4: .4byte 0x000007A4
_08051FF8:
	bl sub_080003F0
_08051FFC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08051FF8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08052050
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	movs r1, #0xa5
	ldr r0, _08052054
	str r1, [r0, #0]
	ldr r0, _08052058
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805203C
	movs r0, #0xa5
	bl sub_08006CB4
_0805203C:
	ldr r0, _0805205C
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2, #4]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
_08052050: .4byte gUnk_03003CE0
_08052054: .4byte gUnk_03005CF8
_08052058: .4byte gUnk_030027D0
_0805205C: .4byte gUnk_03005CF4
	thumb_func_end sub_08051E98
