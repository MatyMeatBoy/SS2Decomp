	thumb_func_start sub_0801DB94
sub_0801DB94: @ 0x0801DB94
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r4, #3
	bhi _0801DBB0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _0801DBAC
	adds r6, r1, r0
	b _0801DBC4
_0801DBAC: .4byte gUnk_03003CE0
_0801DBB0:
	ldr r0, _0801DBDC
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #3
	subs r1, r1, r4
	lsls r1, r1, #5
	ldr r3, _0801DBE0
	adds r1, r1, r3
	ldr r0, [r0, #0]
	adds r3, r0, r1
_0801DBC4:
	movs r0, #0x64
	strh r0, [r5, #2]
	subs r0, r2, #1
	cmp r0, #6
	bls _0801DBD0
	b _0801DD88
_0801DBD0:
	lsls r0, r0, #2
	ldr r1, _0801DBE4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0801DBDC: .4byte gUnk_030056F4
_0801DBE0: .4byte 0xFFFFF480
_0801DBE4: .4byte _0801DBE8
_0801DBE8:
	.4byte _0801DC04
_0801DBEC: .4byte _0801DC0C
_0801DBF0: .4byte _0801DC38
_0801DBF4: .4byte _0801DCAC
_0801DBF8: .4byte _0801DC76
_0801DBFC: .4byte _0801DCCC
_0801DC00: .4byte _0801DD28
_0801DC04:
	movs r0, #1
	strh r0, [r5, #4]
	movs r0, #4
	b _0801DD8E
_0801DC0C:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0801DC24
	bl sub_0800CD34
	cmp r0, #0
	bne _0801DC24
	movs r0, #0xc1
	lsls r0, r0, #1
	bl sub_0805865C
_0801DC24:
	movs r0, #3
	strh r0, [r5, #4]
	bl sub_080008C8
	movs r1, #0x3c
	bl sub_080B95E4
	adds r1, r0, #0
	adds r0, #0xf0
	b _0801DD8E
_0801DC38:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08021E44
	bl sub_0800CCCC
	cmp r0, #0
	bne _0801DC58
	bl sub_0800CD34
	cmp r0, #0
	bne _0801DC58
	movs r0, #0xc2
	lsls r0, r0, #1
	bl sub_0805865C
_0801DC58:
	movs r0, #2
	strh r0, [r5, #4]
	bl sub_080008C8
	movs r1, #0x50
	bl sub_080B95E4
	adds r1, r0, #0
	cmp r4, #3
	bhi _0801DC70
	adds r0, #0x78
	b _0801DD8E
_0801DC70:
	adds r0, r1, #0
	adds r0, #0x64
	b _0801DD8E
_0801DC76:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0801DC8C
	bl sub_0800CD34
	cmp r0, #0
	bne _0801DC8C
	ldr r0, _0801DCA8
	bl sub_0805865C
_0801DC8C:
	movs r0, #5
	strh r0, [r5, #4]
	bl sub_080008C8
	movs r1, #0x96
	lsls r1, r1, #1
	bl sub_080B95E4
	adds r1, r0, #0
	movs r2, #0x96
	lsls r2, r2, #2
	adds r0, r1, r2
	b _0801DD8E
	.2byte 0x0000
_0801DCA8: .4byte 0x00000181
_0801DCAC:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0801DCC2
	bl sub_0800CD34
	cmp r0, #0
	bne _0801DCC2
	ldr r0, _0801DCC8
	bl sub_0805865C
_0801DCC2:
	movs r0, #4
	strh r0, [r5, #4]
	b _0801DD8E
_0801DCC8: .4byte 0x00000185
_0801DCCC:
	cmp r4, #3
	bhi _0801DCDA
	adds r0, r6, #0
	adds r0, #0x62
	movs r3, #0
	ldrsh r0, [r0, r3]
	b _0801DCE4
_0801DCDA:
	movs r1, #0xeb
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
_0801DCE4:
	movs r1, #0x19
	bl sub_080B9394
	adds r4, r0, #0
	bl sub_0800CCCC
	cmp r0, #0
	bne _0801DD02
	bl sub_0800CD34
	cmp r0, #0
	bne _0801DD02
	ldr r0, _0801DD24
	bl sub_0805865C
_0801DD02:
	strh r4, [r5, #6]
	movs r0, #1
	str r0, [r5, #0x18]
	movs r0, #6
	strh r0, [r5, #4]
	bl sub_080008C8
	movs r1, #6
	bl sub_080B95E4
	adds r1, r0, #0
	adds r1, #0xa
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, #1
	b _0801DD8E
_0801DD24: .4byte 0x00000183
_0801DD28:
	cmp r4, #3
	bhi _0801DD36
	adds r0, r6, #0
	adds r0, #0x62
	movs r3, #0
	ldrsh r0, [r0, r3]
	b _0801DD40
_0801DD36:
	movs r1, #0xeb
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
_0801DD40:
	lsls r0, r0, #3
	movs r1, #0x64
	bl sub_080B9394
	adds r4, r0, #0
	bl sub_0800CCCC
	cmp r0, #0
	bne _0801DD60
	bl sub_0800CD34
	cmp r0, #0
	bne _0801DD60
	ldr r0, _0801DD84
	bl sub_0805865C
_0801DD60:
	strh r4, [r5, #6]
	movs r0, #7
	strh r0, [r5, #4]
	bl sub_080008C8
	movs r1, #6
	bl sub_080B95E4
	adds r1, r0, #0
	adds r1, #0xa
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, #1
	strh r0, [r5, #0]
	movs r0, #1
	str r0, [r5, #0x18]
	b _0801DD90
_0801DD84: .4byte 0x00000183
_0801DD88:
	movs r0, #0
	strh r0, [r5, #4]
	ldr r0, _0801DD98
_0801DD8E:
	strh r0, [r5, #0]
_0801DD90:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_0801DD98: .4byte 0x0000FFFF
	thumb_func_end sub_0801DB94
