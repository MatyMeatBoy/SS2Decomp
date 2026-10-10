	thumb_func_start sub_0804534C
sub_0804534C: @ 0x0804534C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08045370
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	b _08045378
	.2byte 0x0000
_08045370: .4byte gUnk_03003CE0
_08045374:
	bl sub_080003F0
_08045378:
	bl sub_0805F184
	cmp r0, #0
	bne _08045374
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0804539C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080453A4
	.2byte 0x0000
_0804539C: .4byte 0x0014021C
_080453A0:
	bl sub_080003F0
_080453A4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080453A0
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _080453BA
	b _08045544
_080453BA:
	bl sub_0805CFA0
	movs r1, #1
	cmp r0, #0
	bge _080453C6
	movs r1, #0
_080453C6:
	cmp r1, #0
	beq _08045472
	ldr r0, _08045410
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080453DC
	movs r0, #0x33
	bl sub_08006D08
_080453DC:
	movs r1, #1
	movs r2, #0x29
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	add r1, sp, #0xc
	movs r2, #0
_080453EC:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _080453EC
	movs r4, #0
_080453F8:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _080453F8
	ldr r0, _08045414
	movs r1, #0x14
	bl sub_08068070
	b _0804541C
	.2byte 0x0000
_08045410: .4byte gUnk_030027D0
_08045414: .4byte sub_08059968
_08045418:
	bl sub_080003F0
_0804541C:
	bl sub_0805F184
	cmp r0, #0
	bne _08045418
	b _0804542A
_08045426:
	bl sub_080003F0
_0804542A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08045426
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0804544C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08045454
_0804544C: .4byte 0x0014021D
_08045450:
	bl sub_080003F0
_08045454:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08045460
	b _080455BC
_08045460:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08045450
	bl sub_0805EFBC
	b _080455BC
_0804546E:
	bl sub_080003F0
_08045472:
	bl sub_0805F184
	cmp r0, #0
	bne _0804546E
	b _08045480
_0804547C:
	bl sub_080003F0
_08045480:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804547C
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080454A4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080454AC
	.2byte 0x0000
_080454A4: .4byte 0x0014021E
_080454A8:
	bl sub_080003F0
_080454AC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080454C2
	bl sub_0800CDF8
	cmp r0, #0
	beq _080454A8
	bl sub_0805EFBC
_080454C2:
	ldr r7, _080454D0
	ldr r0, _080454D4
	ldr r0, [r0, #0]
	ldr r1, _080454D8
	adds r4, r0, r1
	movs r5, #0
	b _080454E0
_080454D0: .4byte sub_0804534C
_080454D4: .4byte gUnk_03005CF4
_080454D8: .4byte 0x00000E34
_080454DC:
	adds r5, #1
	adds r4, #0x28
_080454E0:
	cmp r5, #0x1d
	bhi _080455BC
	adds r0, r4, #0
	bl sub_08000470
	adds r6, r0, #0
	cmp r6, #0
	bne _080454DC
	movs r0, #0x97
	lsls r0, r0, #8
	str r0, [sp, #8]
	ldr r0, _0804553C
	str r0, [sp, #0xc]
	add r1, sp, #8
	movs r0, #0x10
	strh r0, [r1, #8]
	movs r0, #8
	strh r0, [r1, #0xa]
	str r7, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x18]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _08045540
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #0x24]
	adds r0, r4, #0
	add r1, sp, #8
	movs r2, #1
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
	b _080455BC
	.2byte 0x0000
_0804553C: .4byte 0x00016D00
_08045540: .4byte sub_0805A874
_08045544:
	ldr r7, _08045554
	ldr r0, _08045558
	ldr r0, [r0, #0]
	ldr r1, _0804555C
	adds r4, r0, r1
	movs r5, #0
	b _08045564
	.2byte 0x0000
_08045554: .4byte sub_0804534C
_08045558: .4byte gUnk_03005CF4
_0804555C: .4byte 0x00000E34
_08045560:
	adds r5, #1
	adds r4, #0x28
_08045564:
	cmp r5, #0x1d
	bhi _080455BC
	adds r0, r4, #0
	bl sub_08000470
	adds r6, r0, #0
	cmp r6, #0
	bne _08045560
	movs r0, #0x97
	lsls r0, r0, #8
	str r0, [sp, #8]
	ldr r0, _080455E4
	str r0, [sp, #0xc]
	add r1, sp, #8
	movs r0, #0x10
	strh r0, [r1, #8]
	movs r0, #8
	strh r0, [r1, #0xa]
	str r7, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x18]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _080455E8
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #0x24]
	adds r0, r4, #0
	add r1, sp, #8
	movs r2, #1
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_080455BC:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080455EC
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080455E4: .4byte 0x00016D00
_080455E8: .4byte sub_0805A874
_080455EC: .4byte gUnk_03003CE0
	thumb_func_end sub_0804534C
