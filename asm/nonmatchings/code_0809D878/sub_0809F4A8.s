	thumb_func_start sub_0809F4A8
sub_0809F4A8: @ 0x0809F4A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x98
	ldr r1, _0809F51C
	ldr r0, _0809F520
	ldrh r2, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065158
	mov r2, sp
	adds r2, #0x6a
	movs r0, #0
	strh r0, [r2, #0]
	add r1, sp, #0x68
	strh r0, [r1, #0]
	str r0, [sp, #0x80]
	movs r3, #0
	str r3, [sp, #0x70]
	str r0, [sp, #0x7c]
	movs r3, #0xf0
	str r3, [sp, #0x78]
	mov sl, r0
	mov r0, sp
	adds r0, #0x64
	str r0, [sp, #0x94]
	subs r1, #0x24
	str r1, [sp, #0x8c]
	subs r2, #0x22
	str r2, [sp, #0x90]
	adds r2, r0, #0
	movs r1, #0
_0809F4F4:
	mov r3, sl
	adds r0, r2, r3
	strb r1, [r0, #0]
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #3
	bls _0809F4F4
	movs r0, #0
	str r0, [sp, #0x84]
_0809F50C:
	ldr r1, [sp, #0x84]
	cmp r1, #5
	bhi _0809F5F8
	lsls r0, r1, #2
	ldr r1, _0809F524
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0809F51C: .4byte 0x00050008
_0809F520: .4byte gUnk_03000314
_0809F524: .4byte _0809F528
_0809F528:
	.4byte _0809F540
_0809F52C: .4byte _0809F56C
_0809F530: .4byte _0809F588
_0809F534: .4byte _0809F5A4
_0809F538: .4byte _0809F5C0
_0809F53C: .4byte _0809F5DC
_0809F540:
	ldr r2, [sp, #0x70]
	cmp r2, #0x18
	ble _0809F550
	movs r3, #0x18
	str r3, [sp, #0x70]
	movs r0, #1
	str r0, [sp, #0x84]
	b _0809F562
_0809F550:
	ldr r0, _0809F568
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809F562
	ldr r1, [sp, #0x70]
	adds r1, #1
	str r1, [sp, #0x70]
_0809F562:
	movs r2, #0x10
	str r2, [sp, #0x74]
	b _0809F5F8
_0809F568: .4byte gUnk_03002344
_0809F56C:
	ldr r1, [sp, #0x7c]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x7c]
	cmp r1, #0x1e
	bls _0809F582
	movs r3, #0
	str r3, [sp, #0x7c]
	movs r0, #2
	str r0, [sp, #0x84]
_0809F582:
	movs r1, #0x11
	str r1, [sp, #0x74]
	b _0809F5F8
_0809F588:
	ldr r1, [sp, #0x7c]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x7c]
	cmp r1, #0x1e
	bls _0809F59E
	movs r2, #0
	str r2, [sp, #0x7c]
	movs r3, #3
	str r3, [sp, #0x84]
_0809F59E:
	movs r0, #0x12
	str r0, [sp, #0x74]
	b _0809F5F8
_0809F5A4:
	ldr r1, [sp, #0x7c]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x7c]
	cmp r1, #0x1e
	bls _0809F5BA
	movs r1, #0
	str r1, [sp, #0x7c]
	movs r2, #4
	str r2, [sp, #0x84]
_0809F5BA:
	movs r3, #0x13
	str r3, [sp, #0x74]
	b _0809F5F8
_0809F5C0:
	ldr r1, [sp, #0x7c]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x7c]
	cmp r1, #0x3c
	bls _0809F5D6
	movs r0, #0
	str r0, [sp, #0x7c]
	movs r1, #5
	str r1, [sp, #0x84]
_0809F5D6:
	movs r2, #0x14
	str r2, [sp, #0x74]
	b _0809F5F8
_0809F5DC:
	ldr r0, [sp, #0x78]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x78]
	ldr r0, _0809F824
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809F5F8
	ldr r3, [sp, #0x70]
	adds r3, #2
	str r3, [sp, #0x70]
_0809F5F8:
	movs r0, #0
	mov sl, r0
	mov r1, sp
	adds r1, #0x68
	str r1, [sp, #0x88]
_0809F602:
	mov r2, sl
	lsls r6, r2, #3
	ldr r3, [sp, #0x8c]
	adds r3, r3, r6
	mov r8, r3
	ldr r0, _0809F828
	ldr r5, [r0, #0]
	ldr r4, _0809F82C
	lsls r0, r2, #6
	ldr r1, [sp, #0x80]
	adds r0, r1, r0
	movs r1, #0xff
	bl __modsi3
	adds r1, r0, #0
	adds r1, #0x40
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r3, [sp, #0x70]
	adds r2, r1, #0
	muls r2, r3, r2
	ldr r1, [r5, #0x14]
	adds r1, r1, r2
	mov r2, r8
	str r1, [r2, #0]
	ldr r3, [sp, #0x90]
	adds r7, r3, r6
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, [sp, #0x70]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r3, _0809F830
	adds r1, r1, r3
	ldr r0, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r7, #0]
	ldr r0, _0809F824
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	mov r9, r6
	cmp r0, #0
	beq _0809F66C
	ldr r0, [sp, #0x80]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x80]
_0809F66C:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809F706
	bl sub_0800CC98
	cmp r0, #0
	bne _0809F706
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809F706
	bl sub_0800CD34
	adds r6, r0, #0
	cmp r6, #0
	bne _0809F706
	add r2, sp, #0x10
	ldr r1, _0809F834
	ldrh r0, [r1, #0]
	strb r0, [r2, #0x1c]
	ldrh r0, [r1, #0]
	adds r0, #0x10
	ldr r2, _0809F828
	ldr r1, [r2, #0]
	ldr r3, _0809F838
	adds r1, r1, r3
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	ldr r1, [sp, #0x74]
	ldr r2, [sp, #0x88]
	mov r3, sp
	adds r3, #0x6a
	bl sub_08065370
	mov r1, r8
	ldr r0, [r1, #0]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r7, #0]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x6c
	mov r5, sp
	adds r5, #0x6e
	str r6, [sp, #0]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	movs r2, #0
	ldrsh r0, [r4, r2]
	ldr r1, [sp, #0x88]
	ldrh r3, [r1, #0]
	str r6, [sp, #0]
	add r1, sp, #0x2c
	str r1, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r1, #0xa0
	ldr r2, [sp, #0x74]
	bl sub_08007870
	movs r2, #0
	ldrsh r1, [r5, r2]
	str r1, [r0, #0xc]
_0809F706:
	ldr r3, [sp, #0x84]
	cmp r3, #5
	beq _0809F70E
	b _0809F884
_0809F70E:
	bl sub_080020F4
	ldr r1, [sp, #0x8c]
	add r1, r9
	ldr r4, [r1, #0]
	asrs r4, r4, #8
	ldr r6, _0809F83C
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080020F4
	ldr r1, [sp, #0x90]
	add r1, r9
	ldr r1, [r1, #0]
	asrs r1, r1, #8
	adds r1, #0xc
	muls r0, r5, r0
	adds r2, r6, #0
	adds r2, #0x90
	adds r0, r0, r2
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r1, r1, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [sp, #0x94]
	add r0, sl
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0809F776
	b _0809F884
_0809F776:
	cmp r1, #0xb
	bls _0809F77C
	b _0809F884
_0809F77C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0809F786
	b _0809F884
_0809F786:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809F884
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809F884
	ldr r4, _0809F828
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	beq _0809F884
	bl sub_080020F4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0809F884
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0809F884
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _0809F884
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _0809F884
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _0809F884
	bl sub_080020F4
	ldr r2, [r4, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r0, r6, #0
	adds r0, #0xe4
	adds r1, r1, r0
	ldr r1, [r1, #0]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	beq _0809F884
	bl sub_0800CE30
	cmp r0, #1
	bne _0809F840
	movs r0, #4
	movs r1, #0x1e
	movs r2, #1
	bl sub_08029CEC
	b _0809F84A
	.2byte 0x0000
_0809F824: .4byte gUnk_03002344
_0809F828: .4byte gUnk_03000310
_0809F82C: .4byte gUnk_080B9704
_0809F830: .4byte 0xFFFFE000
_0809F834: .4byte gUnk_03000314
_0809F838: .4byte 0x000002DA
_0809F83C: .4byte gUnk_03003CE0
_0809F840:
	movs r0, #4
	movs r1, #0xa
	movs r2, #1
	bl sub_08029CEC
_0809F84A:
	bl sub_080020F4
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	ldr r3, _0809F8B8
	adds r0, r0, r3
	adds r0, #0xb0
	ldr r1, _0809F8BC
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r1, _0809F8C0
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r4, r0
	adds r1, r1, r0
	ldr r0, _0809F8B8
	adds r0, #0xe4
	adds r1, r1, r0
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r2, #0x50]
	ldr r0, [sp, #0x94]
	add r0, sl
	movs r2, #1
	strb r2, [r0, #0]
_0809F884:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #3
	bhi _0809F894
	b _0809F602
_0809F894:
	bl sub_080003F0
	ldr r3, [sp, #0x78]
	cmp r3, #0
	beq _0809F8A0
	b _0809F50C
_0809F8A0:
	ldr r0, _0809F8C4
	ldr r0, [r0, #0]
	str r3, [r0, #8]
	add sp, #0x98
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0809F8B8: .4byte gUnk_03003CE0
_0809F8BC: .4byte 0x0000FFFE
_0809F8C0: .4byte gUnk_03000310
_0809F8C4: .4byte gUnk_03000328
	thumb_func_end sub_0809F4A8
