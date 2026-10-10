	thumb_func_start sub_0804B100
sub_0804B100: @ 0x0804B100
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	bl sub_0800CE30
	cmp r0, #0
	beq _0804B124
	ldr r0, _0804B11C
	ldr r0, [r0, #0]
	ldr r1, _0804B120
	adds r0, r0, r1
	b _0804B12C
_0804B11C: .4byte gUnk_03005CF4
_0804B120: .4byte 0x000001C5
_0804B124:
	ldr r0, _0804B1AC
	ldr r0, [r0, #0]
	ldr r2, _0804B1B0
	adds r0, r0, r2
_0804B12C:
	ldrb r0, [r0, #0]
	asrs r5, r0, #2
	movs r0, #1
	ands r5, r0
	cmp r5, #0
	bne _0804B1C0
	ldr r0, _0804B1B4
	mov r9, r0
	movs r1, #2
	mov r8, r1
	movs r6, #1
	ldr r1, _0804B1B8
	ldr r0, [r1, #0]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	bne _0804B15E
	adds r7, r1, #0
	movs r4, #2
_0804B152:
	bl sub_080003F0
	ldr r0, [r7, #0]
	ands r0, r4
	cmp r0, #0
	beq _0804B152
_0804B15E:
	ldr r1, _0804B1BC
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #3
	subs r0, r0, r6
	lsls r0, r0, #5
	ldr r2, [r1, #0]
	adds r0, r2, r0
	mov r1, r9
	str r1, [r0, #0x38]
	mov r1, r8
	str r1, [r0, #0x3c]
	movs r1, #0
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	movs r3, #0
	ldr r6, _0804B1B8
	movs r7, #1
	movs r4, #0
_0804B184:
	adds r1, r7, #0
	lsls r1, r3
	ldr r0, [r6, #0]
	ands r0, r1
	cmp r0, #0
	beq _0804B198
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _0804B198
	strh r4, [r2, #0xc]
_0804B198:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _0804B184
	bl sub_08019F04
	b _0804B1DA
	.2byte 0x0000
_0804B1AC: .4byte gUnk_03005CF4
_0804B1B0: .4byte 0x000001B9
_0804B1B4: .4byte sub_0804B32C
_0804B1B8: .4byte gUnk_030056FC
_0804B1BC: .4byte gUnk_030056F4
_0804B1C0:
	ldr r4, _0804B22C
	movs r0, #1
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08028AAC
	movs r0, #2
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08028AAC
_0804B1DA:
	bl sub_0800CCCC
	adds r2, r0, #0
	ldr r0, _0804B230
	ldr r0, [r0, #0]
	movs r1, #0x10
	ldr r0, [r0, #0x38]
	ands r0, r1
	cmp r0, #0
	bne _0804B2DC
	cmp r5, #0
	bne _0804B2DC
	cmp r2, #0
	bne _0804B2DC
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804B234
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_0800CC98
	cmp r0, #0
	bne _0804B266
	bl sub_0801AB24
	cmp r0, #1
	beq _0804B244
	cmp r0, #1
	bgt _0804B238
	cmp r0, #0
	beq _0804B23E
	b _0804B258
_0804B22C: .4byte 0x0000270F
_0804B230: .4byte gUnk_03005CF4
_0804B234: .4byte gUnk_03003CE0
_0804B238:
	cmp r0, #2
	beq _0804B24C
	b _0804B258
_0804B23E:
	bl sub_080576A8
	b _0804B258
_0804B244:
	movs r0, #6
	bl sub_0801AB50
	b _0804B258
_0804B24C:
	movs r0, #6
	bl sub_0801AB90
	b _0804B258
_0804B254:
	bl sub_080003F0
_0804B258:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804B254
	b _0804B266
_0804B262:
	bl sub_080003F0
_0804B266:
	bl sub_0805F184
	cmp r0, #0
	bne _0804B262
	b _0804B274
_0804B270:
	bl sub_080003F0
_0804B274:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804B270
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804B294
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804B29C
_0804B294: .4byte 0x0014003E
_0804B298:
	bl sub_080003F0
_0804B29C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804B298
	ldr r0, _0804B2D4
	ldr r2, [r0, #0]
	movs r1, #0x10
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804B2D8
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	b _0804B31E
	.2byte 0x0000
_0804B2D4: .4byte gUnk_03005CF4
_0804B2D8: .4byte gUnk_03003CE0
_0804B2DC:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804B31E
	bl sub_0801AB24
	cmp r0, #1
	beq _0804B302
	cmp r0, #1
	bgt _0804B2F6
	cmp r0, #0
	beq _0804B2FC
	b _0804B316
_0804B2F6:
	cmp r0, #2
	beq _0804B30A
	b _0804B316
_0804B2FC:
	bl sub_080576A8
	b _0804B316
_0804B302:
	movs r0, #6
	bl sub_0801AB50
	b _0804B316
_0804B30A:
	movs r0, #6
	bl sub_0801AB90
	b _0804B316
_0804B312:
	bl sub_080003F0
_0804B316:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804B312
_0804B31E:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0804B100
