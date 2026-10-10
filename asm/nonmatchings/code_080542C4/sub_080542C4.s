	thumb_func_start sub_080542C4
sub_080542C4: @ 0x080542C4
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080542F4
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _08054300
	ldr r0, _080542F8
	ldr r0, [r0, #0]
	ldr r1, _080542FC
	b _08054306
_080542F4: .4byte gUnk_03003CE0
_080542F8: .4byte gUnk_03005CF4
_080542FC: .4byte 0x000001C7
_08054300:
	ldr r0, _08054324
	ldr r0, [r0, #0]
	ldr r1, _08054328
_08054306:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08054314
	b _0805441A
_08054314:
	bl sub_0800CE30
	cmp r0, #0
	beq _08054330
	ldr r0, _08054324
	ldr r0, [r0, #0]
	ldr r1, _0805432C
	b _08054336
_08054324: .4byte gUnk_03005CF4
_08054328: .4byte 0x000001BB
_0805432C: .4byte 0x000001C7
_08054330:
	ldr r0, _08054344
	ldr r0, [r0, #0]
	ldr r1, _08054348
_08054336:
	adds r2, r0, r1
	ldrb r1, [r2, #0]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2, #0]
	b _08054350
	.2byte 0x0000
_08054344: .4byte gUnk_03005CF4
_08054348: .4byte 0x000001BB
_0805434C:
	bl sub_080003F0
_08054350:
	bl sub_0805F184
	cmp r0, #0
	bne _0805434C
	b _0805435E
_0805435A:
	bl sub_080003F0
_0805435E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0805435A
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08054380
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08054388
	.2byte 0x0000
_08054380: .4byte 0x00140284
_08054384:
	bl sub_080003F0
_08054388:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08054384
	adds r0, r5, #0
	movs r1, #0
	bl sub_080290E4
	b _080543A0
_0805439C:
	bl sub_080003F0
_080543A0:
	bl sub_0805F184
	cmp r0, #0
	bne _0805439C
	b _080543AE
_080543AA:
	bl sub_080003F0
_080543AE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080543AA
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080543D0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080543D8
	.2byte 0x0000
_080543D0: .4byte 0x00140285
_080543D4:
	bl sub_080003F0
_080543D8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080543D4
	movs r1, #0x9c
	lsls r1, r1, #1
	movs r0, #2
	movs r2, #0xc8
	movs r3, #0
	bl sub_08028AAC
	ldr r2, _08054424
	movs r0, #1
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08054428
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
_0805441A:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08054424: .4byte 0x0000270F
_08054428: .4byte gUnk_03003CE0
	thumb_func_end sub_080542C4
