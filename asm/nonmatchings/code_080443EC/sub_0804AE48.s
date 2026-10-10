	thumb_func_start sub_0804AE48
sub_0804AE48: @ 0x0804AE48
	push {r4, r5, r6, lr}
	ldr r6, _0804AE58
	ldr r0, _0804AE5C
	ldr r0, [r0, #0]
	ldr r1, _0804AE60
	adds r4, r0, r1
	movs r5, #0
	b _0804AE68
_0804AE58: .4byte sub_080567D4
_0804AE5C: .4byte gUnk_03005CF4
_0804AE60: .4byte 0x00000E34
_0804AE64:
	adds r5, #1
	adds r4, #0x28
_0804AE68:
	cmp r5, #0x1d
	bhi _0804AEA6
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804AE64
	b _0804AE7C
_0804AE78:
	bl sub_080003F0
_0804AE7C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804AE78
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
_0804AEA6:
	ldr r6, _0804AEB4
	ldr r0, _0804AEB8
	ldr r0, [r0, #0]
	ldr r1, _0804AEBC
	adds r4, r0, r1
	movs r5, #0
	b _0804AEC4
_0804AEB4: .4byte sub_080567D4
_0804AEB8: .4byte gUnk_03005CF4
_0804AEBC: .4byte 0x00000E34
_0804AEC0:
	adds r5, #1
	adds r4, #0x28
_0804AEC4:
	cmp r5, #0x1d
	bhi _0804AF02
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804AEC0
	b _0804AED8
_0804AED4:
	bl sub_080003F0
_0804AED8:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804AED4
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
_0804AF02:
	bl sub_0800CE30
	adds r1, r0, #0
	cmp r1, #0
	beq _0804AF24
	ldr r0, _0804AF1C
	ldr r0, [r0, #0]
	ldr r2, _0804AF20
	adds r1, r0, r2
	movs r0, #0
	strb r0, [r1, #0]
	b _0804AF2E
	.2byte 0x0000
_0804AF1C: .4byte gUnk_03005CF4
_0804AF20: .4byte 0x000001C1
_0804AF24:
	ldr r0, _0804AF48
	ldr r0, [r0, #0]
	ldr r2, _0804AF4C
	adds r0, r0, r2
	strb r1, [r0, #0]
_0804AF2E:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804AF78
	bl sub_0801AB24
	cmp r0, #1
	beq _0804AF5C
	cmp r0, #1
	bgt _0804AF50
	cmp r0, #0
	beq _0804AF56
	b _0804AF70
_0804AF48: .4byte gUnk_03005CF4
_0804AF4C: .4byte 0x000001B5
_0804AF50:
	cmp r0, #2
	beq _0804AF64
	b _0804AF70
_0804AF56:
	bl sub_080576A8
	b _0804AF70
_0804AF5C:
	movs r0, #6
	bl sub_0801AB50
	b _0804AF70
_0804AF64:
	movs r0, #6
	bl sub_0801AB90
	b _0804AF70
_0804AF6C:
	bl sub_080003F0
_0804AF70:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804AF6C
_0804AF78:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_0804AE48
