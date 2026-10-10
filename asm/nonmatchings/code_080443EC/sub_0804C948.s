	thumb_func_start sub_0804C948
sub_0804C948: @ 0x0804C948
	push {r4, r5, r6, lr}
	bl sub_0800CC98
	cmp r0, #0
	bne _0804C98C
	bl sub_0801AB24
	cmp r0, #1
	beq _0804C970
	cmp r0, #1
	bgt _0804C964
	cmp r0, #0
	beq _0804C96A
	b _0804C984
_0804C964:
	cmp r0, #2
	beq _0804C978
	b _0804C984
_0804C96A:
	bl sub_080576A8
	b _0804C984
_0804C970:
	movs r0, #6
	bl sub_0801AB50
	b _0804C984
_0804C978:
	movs r0, #6
	bl sub_0801AB90
	b _0804C984
_0804C980:
	bl sub_080003F0
_0804C984:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804C980
_0804C98C:
	ldr r6, _0804C99C
	ldr r0, _0804C9A0
	ldr r0, [r0, #0]
	ldr r1, _0804C9A4
	adds r4, r0, r1
	movs r5, #0
	b _0804C9AC
	.2byte 0x0000
_0804C99C: .4byte sub_0805664C
_0804C9A0: .4byte gUnk_03005CF4
_0804C9A4: .4byte 0x00000E34
_0804C9A8:
	adds r5, #1
	adds r4, #0x28
_0804C9AC:
	cmp r5, #0x1d
	bhi _0804C9EA
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804C9A8
	b _0804C9C0
_0804C9BC:
	bl sub_080003F0
_0804C9C0:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804C9BC
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000274
_0804C9EA:
	ldr r6, _0804C9F8
	ldr r0, _0804C9FC
	ldr r0, [r0, #0]
	ldr r1, _0804CA00
	adds r4, r0, r1
	movs r5, #0
	b _0804CA08
_0804C9F8: .4byte sub_0805664C
_0804C9FC: .4byte gUnk_03005CF4
_0804CA00: .4byte 0x00000E34
_0804CA04:
	adds r5, #1
	adds r4, #0x28
_0804CA08:
	cmp r5, #0x1d
	bhi _0804CA46
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804CA04
	b _0804CA1C
_0804CA18:
	bl sub_080003F0
_0804CA1C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804CA18
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000274
_0804CA46:
	ldr r6, _0804CA54
	ldr r0, _0804CA58
	ldr r0, [r0, #0]
	ldr r1, _0804CA5C
	adds r4, r0, r1
	movs r5, #0
	b _0804CA64
_0804CA54: .4byte sub_0805664C
_0804CA58: .4byte gUnk_03005CF4
_0804CA5C: .4byte 0x00000E34
_0804CA60:
	adds r5, #1
	adds r4, #0x28
_0804CA64:
	cmp r5, #0x1d
	bhi _0804CAA2
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804CA60
	b _0804CA78
_0804CA74:
	bl sub_080003F0
_0804CA78:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804CA74
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000274
_0804CAA2:
	ldr r6, _0804CAB0
	ldr r0, _0804CAB4
	ldr r0, [r0, #0]
	ldr r1, _0804CAB8
	adds r4, r0, r1
	movs r5, #0
	b _0804CAC0
_0804CAB0: .4byte sub_0805664C
_0804CAB4: .4byte gUnk_03005CF4
_0804CAB8: .4byte 0x00000E34
_0804CABC:
	adds r5, #1
	adds r4, #0x28
_0804CAC0:
	cmp r5, #0x1d
	bhi _0804CAFE
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804CABC
	b _0804CAD4
_0804CAD0:
	bl sub_080003F0
_0804CAD4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804CAD0
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000274
_0804CAFE:
	ldr r6, _0804CB0C
	ldr r0, _0804CB10
	ldr r0, [r0, #0]
	ldr r1, _0804CB14
	adds r4, r0, r1
	movs r5, #0
	b _0804CB1C
_0804CB0C: .4byte sub_0805664C
_0804CB10: .4byte gUnk_03005CF4
_0804CB14: .4byte 0x00000E34
_0804CB18:
	adds r5, #1
	adds r4, #0x28
_0804CB1C:
	cmp r5, #0x1d
	bhi _0804CB5A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804CB18
	b _0804CB30
_0804CB2C:
	bl sub_080003F0
_0804CB30:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804CB2C
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08000274
_0804CB5A:
	ldr r6, _0804CB68
	ldr r0, _0804CB6C
	ldr r0, [r0, #0]
	ldr r1, _0804CB70
	adds r4, r0, r1
	movs r5, #0
	b _0804CB78
_0804CB68: .4byte sub_0805664C
_0804CB6C: .4byte gUnk_03005CF4
_0804CB70: .4byte 0x00000E34
_0804CB74:
	adds r5, #1
	adds r4, #0x28
_0804CB78:
	cmp r5, #0x1d
	bhi _0804CBB6
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804CB74
	b _0804CB8C
_0804CB88:
	bl sub_080003F0
_0804CB8C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804CB88
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #5
	bl sub_08000274
_0804CBB6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_0804C948
