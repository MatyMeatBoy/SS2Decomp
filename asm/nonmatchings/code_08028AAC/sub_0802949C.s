	thumb_func_start sub_0802949C
sub_0802949C: @ 0x0802949C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r4, r1, #0
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r6, r0
	bls _080294F4
	ldr r0, _080294E8
	ldr r0, [r0, #0]
	ldr r2, _080294EC
	adds r1, r0, r2
	movs r2, #0
_080294BE:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _080294F0
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080294BE
	bl sub_080003F0
	movs r3, #0
	str r3, [sp, #0]
_080294D4:
	ldr r0, [sp, #0]
	cmp r0, #0
	bne _080294DC
	b _08029778
_080294DC:
	adds r2, r0, #0
	ldr r1, [r2, #8]
	ldr r2, [r2, #0xc]
	str r1, [sp, #4]
	str r2, [sp, #8]
	b _08029544
_080294E8: .4byte gUnk_03005CF4
_080294EC: .4byte 0x000007A4
_080294F0:
	str r1, [sp, #0]
	b _080294D4
_080294F4:
	cmp r6, #0
	beq _08029528
	subs r6, #1
	cmp r6, #4
	bls _08029500
	b _08029778
_08029500:
	ldr r0, _08029520
	lsls r1, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #3
	subs r1, r1, r6
	lsls r1, r1, #5
	ldr r0, [r0, #0]
	adds r0, r0, r1
	mov r9, r0
	mov r1, r9
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r6, #1
	b _08029544
_08029520: .4byte gUnk_030056F4
_08029524:
	adds r0, r1, #0
	b _0802956A
_08029528:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08029578
	adds r1, r1, r0
	mov sl, r1
	mov r0, sl
	adds r0, #0x8c
	ldr r2, [r0, #0]
	ldr r3, [r0, #4]
	str r2, [sp, #4]
	str r3, [sp, #8]
_08029544:
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r4, r0
	bls _08029584
	ldr r0, _0802957C
	ldr r0, [r0, #0]
	ldr r3, _08029580
	adds r1, r0, r3
	movs r2, #0
_08029556:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _08029524
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08029556
	bl sub_080003F0
	movs r0, #0
_0802956A:
	cmp r0, #0
	bne _08029570
	b _08029778
_08029570:
	ldr r1, [r0, #8]
	ldr r2, [r0, #0xc]
	b _080295C0
	.2byte 0x0000
_08029578: .4byte gUnk_03003CE0
_0802957C: .4byte gUnk_03005CF4
_08029580: .4byte 0x000007A4
_08029584:
	cmp r4, #0
	beq _080295AC
	subs r4, #1
	cmp r4, #4
	bls _08029590
	b _08029778
_08029590:
	ldr r0, _080295A8
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #3
	subs r1, r1, r4
	lsls r1, r1, #5
	ldr r0, [r0, #0]
	adds r0, r0, r1
	ldr r1, [r0, #0x14]
	ldr r2, [r0, #0x18]
	b _080295C0
	.2byte 0x0000
_080295A8: .4byte gUnk_030056F4
_080295AC:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _080295D0
	adds r0, r0, r1
	adds r0, #0x8c
	ldr r1, [r0, #0]
	ldr r2, [r0, #4]
_080295C0:
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r6, r0
	bls _080295D4
	ldr r3, [sp, #0]
	ldrh r0, [r3, #0x24]
	strh r0, [r3, #0x26]
	b _080295E6
_080295D0: .4byte gUnk_03003CE0
_080295D4:
	cmp r6, #0
	beq _080295E0
	mov r3, r9
	ldrh r0, [r3, #8]
	strh r0, [r3, #0xa]
	b _080295E6
_080295E0:
	mov r3, sl
	ldrh r0, [r3, #0x1c]
	strh r0, [r3, #0x1e]
_080295E6:
	ldr r3, [sp, #4]
	subs r0, r1, r3
	lsls r0, r0, #8
	ldr r3, [sp, #8]
	subs r1, r2, r3
	lsls r1, r1, #8
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl sub_080B8570
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x14
	adds r0, r0, r1
	lsrs r7, r0, #0x1c
	ldr r0, _08029618
	adds r0, r7, r0
	ldrb r7, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r6, r0
	bls _0802961C
	ldr r2, [sp, #0]
	ldrh r0, [r2, #0x24]
	b _0802962A
_08029618: .4byte gUnk_084790B4
_0802961C:
	cmp r6, #0
	beq _08029626
	mov r3, r9
	ldrh r0, [r3, #8]
	b _0802962A
_08029626:
	mov r1, sl
	ldrh r0, [r1, #0x1c]
_0802962A:
	subs r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08029648
	movs r1, #1
	cmp r0, #4
	bgt _08029652
	ldr r1, _08029644
	b _08029652
	.2byte 0x0000
_08029644: .4byte 0x0000FFFF
_08029648:
	negs r0, r0
	ldr r1, _0802967C
	cmp r0, #4
	bgt _08029652
	movs r1, #1
_08029652:
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r6, r0
	bls _080296BE
	ldr r2, [sp, #0]
	ldrh r4, [r2, #0x24]
	movs r3, #0x24
	ldrsh r0, [r2, r3]
	cmp r0, r7
	bne _08029668
	b _08029778
_08029668:
	lsls r1, r1, #0x10
	mov r8, r1
_0802966C:
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	adds r0, r6, #0
	bl sub_080290E4
	movs r5, #2
	b _0802968A
	.2byte 0x0000
_0802967C: .4byte 0x0000FFFF
_08029680:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08029696
_0802968A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08029680
_08029696:
	asrs r0, r4, #0x10
	mov r2, r8
	asrs r1, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _080296AC
	movs r4, #0
	b _080296B2
_080296AC:
	cmp r0, #0
	bge _080296B2
	movs r4, #7
_080296B2:
	ldr r3, [sp, #0]
	movs r1, #0x24
	ldrsh r0, [r3, r1]
	cmp r0, r7
	bne _0802966C
	b _08029778
_080296BE:
	cmp r6, #0
	beq _0802971E
	mov r2, r9
	ldrh r4, [r2, #8]
	movs r3, #8
	ldrsh r0, [r2, r3]
	cmp r0, r7
	beq _08029778
	lsls r1, r1, #0x10
	mov r8, r1
_080296D2:
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	adds r0, r6, #0
	bl sub_080290E4
	movs r5, #2
	b _080296EA
_080296E0:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080296F6
_080296EA:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080296E0
_080296F6:
	asrs r0, r4, #0x10
	mov r2, r8
	asrs r1, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _0802970C
	movs r4, #0
	b _08029712
_0802970C:
	cmp r0, #0
	bge _08029712
	movs r4, #7
_08029712:
	mov r3, r9
	movs r1, #8
	ldrsh r0, [r3, r1]
	cmp r0, r7
	bne _080296D2
	b _08029778
_0802971E:
	mov r2, sl
	ldrh r4, [r2, #0x1c]
	movs r3, #0x1c
	ldrsh r0, [r2, r3]
	cmp r0, r7
	beq _08029778
	lsls r1, r1, #0x10
	mov r8, r1
_0802972E:
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	adds r0, r6, #0
	bl sub_080290E4
	movs r5, #2
	b _08029746
_0802973C:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08029752
_08029746:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0802973C
_08029752:
	asrs r0, r4, #0x10
	mov r2, r8
	asrs r1, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _08029768
	movs r4, #0
	b _0802976E
_08029768:
	cmp r0, #0
	bge _0802976E
	movs r4, #7
_0802976E:
	mov r3, sl
	movs r1, #0x1c
	ldrsh r0, [r3, r1]
	cmp r0, r7
	bne _0802972E
_08029778:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0802949C
