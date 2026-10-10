	thumb_func_start sub_0804D020
sub_0804D020: @ 0x0804D020
	push {r4, r5, r6, r7, lr}
	ldr r7, _0804D030
	ldr r0, _0804D034
	ldr r0, [r0, #0]
	ldr r1, _0804D038
	adds r4, r0, r1
	movs r5, #0
	b _0804D040
_0804D030: .4byte sub_0804D330
_0804D034: .4byte gUnk_03005CF4
_0804D038: .4byte 0x00000E34
_0804D03C:
	adds r5, #1
	adds r4, #0x28
_0804D040:
	cmp r5, #0x1d
	bhi _0804D080
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804D03C
	b _0804D054
_0804D050:
	bl sub_080003F0
_0804D054:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804D050
	movs r0, #0x3c
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000274
	adds r6, r4, #0
_0804D080:
	movs r0, #0xe8
	movs r1, #0x8c
	movs r2, #0x96
	movs r3, #0x6e
	bl sub_0802A080
	ldr r0, _0804D0CC
	ldr r2, [r0, #0]
	movs r1, #4
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	cmp r6, #0
	beq _0804D0AC
	adds r0, r6, #0
	bl sub_08000470
	cmp r0, #0
	beq _0804D0AC
	adds r0, r6, #0
	bl sub_080003A8
_0804D0AC:
	bl sub_0800CB9C
	cmp r0, #0
	bne _0804D0D8
	ldr r0, _0804D0D0
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804D0DE
	ldr r1, _0804D0D4
	movs r0, #4
	str r0, [r1, #0]
	bl sub_08006CB4
	b _0804D0DE
_0804D0CC: .4byte gUnk_03005CF4
_0804D0D0: .4byte gUnk_030027D0
_0804D0D4: .4byte gUnk_03005CF8
_0804D0D8:
	movs r0, #0
	bl sub_080586B4
_0804D0DE:
	movs r4, #1
	b _0804D0EC
_0804D0E2:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804D0F8
_0804D0EC:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804D0E2
_0804D0F8:
	bl sub_0805EFBC
_0804D0FC:
	bl sub_080003F0
	bl sub_0805F184
	cmp r0, #0
	bne _0804D0FC
	ldr r6, _0804D118
	ldr r0, _0804D11C
	ldr r0, [r0, #0]
	ldr r1, _0804D120
	adds r4, r0, r1
	movs r5, #0
	b _0804D128
	.2byte 0x0000
_0804D118: .4byte sub_0804D330
_0804D11C: .4byte gUnk_03005CF4
_0804D120: .4byte 0x00000E34
_0804D124:
	adds r5, #1
	adds r4, #0x28
_0804D128:
	cmp r5, #0x1d
	bhi _0804D166
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804D124
	b _0804D13C
_0804D138:
	bl sub_080003F0
_0804D13C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804D138
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
_0804D166:
	ldr r6, _0804D174
	ldr r0, _0804D178
	ldr r0, [r0, #0]
	ldr r1, _0804D17C
	adds r4, r0, r1
	movs r5, #0
	b _0804D184
_0804D174: .4byte sub_0804D330
_0804D178: .4byte gUnk_03005CF4
_0804D17C: .4byte 0x00000E34
_0804D180:
	adds r5, #1
	adds r4, #0x28
_0804D184:
	cmp r5, #0x1d
	bhi _0804D1C2
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804D180
	b _0804D198
_0804D194:
	bl sub_080003F0
_0804D198:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804D194
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
_0804D1C2:
	ldr r6, _0804D1D0
	ldr r0, _0804D1D4
	ldr r0, [r0, #0]
	ldr r1, _0804D1D8
	adds r4, r0, r1
	movs r5, #0
	b _0804D1E0
_0804D1D0: .4byte sub_0804D330
_0804D1D4: .4byte gUnk_03005CF4
_0804D1D8: .4byte 0x00000E34
_0804D1DC:
	adds r5, #1
	adds r4, #0x28
_0804D1E0:
	cmp r5, #0x1d
	bhi _0804D21E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804D1DC
	b _0804D1F4
_0804D1F0:
	bl sub_080003F0
_0804D1F4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804D1F0
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
_0804D21E:
	ldr r6, _0804D22C
	ldr r0, _0804D230
	ldr r0, [r0, #0]
	ldr r1, _0804D234
	adds r4, r0, r1
	movs r5, #0
	b _0804D23C
_0804D22C: .4byte sub_0804D330
_0804D230: .4byte gUnk_03005CF4
_0804D234: .4byte 0x00000E34
_0804D238:
	adds r5, #1
	adds r4, #0x28
_0804D23C:
	cmp r5, #0x1d
	bhi _0804D27A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804D238
	b _0804D250
_0804D24C:
	bl sub_080003F0
_0804D250:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804D24C
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
_0804D27A:
	ldr r6, _0804D288
	ldr r0, _0804D28C
	ldr r0, [r0, #0]
	ldr r1, _0804D290
	adds r4, r0, r1
	movs r5, #0
	b _0804D298
_0804D288: .4byte sub_0804D330
_0804D28C: .4byte gUnk_03005CF4
_0804D290: .4byte 0x00000E34
_0804D294:
	adds r5, #1
	adds r4, #0x28
_0804D298:
	cmp r5, #0x1d
	bhi _0804D2D6
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804D294
	b _0804D2AC
_0804D2A8:
	bl sub_080003F0
_0804D2AC:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804D2A8
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
_0804D2D6:
	movs r4, #0x1e
	b _0804D2E4
_0804D2DA:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804D2F0
_0804D2E4:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804D2DA
_0804D2F0:
	ldr r0, _0804D328
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _0804D32C
	movs r6, #1
	movs r4, #0
_0804D2FC:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _0804D310
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _0804D310
	strh r4, [r2, #0xc]
_0804D310:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _0804D2FC
	bl sub_08019F04
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0804D328: .4byte gUnk_030056F4
_0804D32C: .4byte gUnk_030056FC
	thumb_func_end sub_0804D020
