	thumb_func_start sub_080923FC
sub_080923FC: @ 0x080923FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x11c]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x120]
	ldr r1, _08092478
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x14
	movs r2, #7
	adds r3, r5, #0
	bl sub_08065158
	add r6, sp, #0x48
	ldr r1, _0809247C
	str r4, [sp, #0]
	adds r0, r6, #0
	movs r2, #8
	adds r3, r5, #0
	bl sub_08065158
	mov r5, sp
	adds r5, #0x37
	movs r2, #0
	strb r2, [r5, #0]
	add r0, sp, #0x6c
	strb r4, [r0, #0]
	movs r0, #0xd4
	str r0, [sp, #0x128]
	ldr r0, _08092480
	movs r1, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	ldr r2, _08092484
	ldr r0, _08092488
	strh r1, [r0, #0]
	strh r1, [r2, #0]
	ldr r1, _0809248C
	movs r2, #0xc
	negs r2, r2
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r1, _08092490
	movs r0, #0xc
	strh r0, [r1, #0]
	movs r3, #3
	str r3, [sp, #0x130]
	movs r0, #6
	bl sub_0801AB50
	b _08092498
_08092478: .4byte 0x00050022
_0809247C: .4byte 0x00050026
_08092480: .4byte gUnk_03001250
_08092484: .4byte gUnk_03000250
_08092488: .4byte gUnk_03000254
_0809248C: .4byte gUnk_03000252
_08092490: .4byte gUnk_03000256
_08092494:
	bl sub_080003F0
_08092498:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08092494
	movs r0, #0xf7
	bl sub_0805865C
	movs r7, #0x3c
	mov r8, r7
	movs r0, #6
	bl sub_08092E28
	movs r0, #0x3c
	bl sub_08092E1C
	ldr r4, _08092540
	ldr r6, _08092544
_080924BA:
	bl sub_08092E34
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	bl sub_0800CCCC
	cmp r0, #0
	bne _080924EE
	bl sub_0800CC98
	cmp r0, #0
	bne _080924EE
	bl sub_0800CD34
	cmp r0, #0
	bne _080924EE
	ldr r0, _08092548
	ldrh r0, [r0, #0]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r0
	strh r0, [r4, #2]
	ldr r0, _0809254C
	ldrh r0, [r0, #0]
	adds r1, r1, r0
	strh r1, [r4, #6]
_080924EE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #1
	bne _080924FC
	b _08092C52
_080924FC:
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r8, r6
	bne _080924BA
	ldr r1, _08092548
	ldr r2, _08092540
	ldrh r0, [r2, #2]
	strh r0, [r1, #0]
	ldr r1, _0809254C
	ldrh r0, [r2, #6]
	strh r0, [r1, #0]
	movs r5, #0
	mov r0, sp
	adds r0, #0xa8
	str r0, [sp, #0x148]
	mov r1, sp
	adds r1, #0x7c
	str r1, [sp, #0x144]
	adds r4, r0, #0
	adds r6, r1, #0
_0809252A:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08092550
	lsls r2, r5, #2
	adds r3, r4, r2
	lsls r1, r5, #4
	adds r0, r1, #0
	adds r0, #0x70
	b _0809255A
	.2byte 0x0000
_08092540: .4byte gUnk_03001250
_08092544: .4byte 0x0000FFFF
_08092548: .4byte gUnk_03000252
_0809254C: .4byte gUnk_03000256
_08092550:
	lsls r2, r5, #2
	adds r3, r4, r2
	lsls r1, r5, #4
	movs r0, #0x70
	subs r0, r0, r1
_0809255A:
	lsls r0, r0, #8
	str r0, [r3, #0]
	adds r0, r6, r2
	subs r1, r1, r5
	lsls r1, r1, #2
	adds r1, #0x1e
	str r1, [r0, #0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _0809252A
	movs r2, #0
	mov r9, r2
	movs r3, #0
	str r3, [sp, #0x124]
	movs r7, #0xf0
	mov r8, r7
	movs r0, #4
	bl sub_08092E28
	ldr r0, _080925E8
	mov sl, r0
_08092588:
	bl sub_08092E34
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r2, [sp, #0x124]
	lsls r1, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r1, r1, r3
	lsrs r0, r1, #0x10
	str r0, [sp, #0x124]
	asrs r1, r1, #0x18
	ldr r3, _080925EC
	ldrh r2, [r3, #0]
	subs r2, r2, r1
	strh r2, [r3, #0]
	mov r3, sl
	ldrh r0, [r3, #0]
	adds r0, r0, r1
	strh r0, [r3, #0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x10
	negs r0, r0
	cmp r2, r0
	bgt _080925C0
	ldr r1, _080925EC
	strh r0, [r1, #0]
_080925C0:
	mov r2, sl
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0x1f
	ble _080925CE
	movs r0, #0x20
	strh r0, [r2, #0]
_080925CE:
	mov r0, r8
	cmp r0, #0x77
	bhi _08092674
	mov r1, r9
	cmp r1, #0xf
	bhi _080925F0
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	movs r6, #1
	b _080925F6
_080925E8: .4byte gUnk_03000256
_080925EC: .4byte gUnk_03000252
_080925F0:
	movs r2, #0x10
	mov r9, r2
	movs r6, #0
_080925F6:
	movs r0, #0x10
	str r0, [sp, #0]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0x22
	movs r2, #1
	mov r3, r9
	bl sub_0800903C
	ldr r1, [sp, #0x54]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #0x11
	movs r2, #1
	bl sub_08000AF0
	bl sub_0800CCCC
	cmp r0, #0
	bne _08092674
	bl sub_0800CC98
	cmp r0, #0
	bne _08092674
	bl sub_0800CD34
	cmp r0, #0
	bne _08092674
	movs r5, #0
	add r4, sp, #0x64
	lsls r6, r6, #0x18
_08092636:
	lsls r2, r5, #2
	ldr r1, [sp, #0x148]
	adds r0, r1, r2
	ldr r1, [r0, #0]
	ldr r3, _080927E8
	adds r1, r1, r3
	str r1, [r0, #0]
	ldr r0, [sp, #0x144]
	adds r2, r0, r2
	ldr r0, [r2, #0]
	asrs r1, r1, #8
	adds r2, r5, #7
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, [sp, #0x130]
	str r3, [sp, #0]
	str r4, [sp, #4]
	ldr r3, [sp, #0x50]
	str r3, [sp, #8]
	ldr r3, [sp, #0x48]
	str r3, [sp, #0xc]
	lsrs r3, r6, #0x18
	str r3, [sp, #0x10]
	movs r3, #0
	bl sub_080087AC
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _08092636
_08092674:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080926AE
	bl sub_0800CC98
	cmp r0, #0
	bne _080926AE
	bl sub_0800CD34
	cmp r0, #0
	bne _080926AE
	ldr r0, _080927EC
	ldrh r0, [r0, #0]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r0
	ldr r7, _080927F0
	strh r0, [r7, #0]
	ldr r2, _080927F4
	ldrh r0, [r2, #0]
	strh r0, [r7, #2]
	ldr r0, _080927F8
	ldrh r0, [r0, #0]
	subs r0, r0, r1
	strh r0, [r7, #4]
	mov r3, sl
	ldrh r0, [r3, #0]
	strh r0, [r7, #6]
_080926AE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #1
	bne _080926BC
	b _08092C52
_080926BC:
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _080927FC
	cmp r8, r0
	beq _080926CE
	b _08092588
_080926CE:
	movs r7, #0x78
	mov r8, r7
	ldr r0, _080927F0
	mov r9, r0
	movs r1, #0x7c
	lsls r1, r1, #0x10
	mov sl, r1
_080926DC:
	bl sub_08092E34
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r2, [sp, #0x128]
	lsls r0, r2, #0x10
	ldr r3, _08092800
	adds r0, r0, r3
	lsrs r1, r0, #0x10
	str r1, [sp, #0x128]
	asrs r0, r0, #0x10
	movs r1, #0x38
	negs r1, r1
	cmp r0, r1
	bge _080926FE
	ldr r2, _08092804
	str r2, [sp, #0x128]
_080926FE:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080927A8
	bl sub_0800CC98
	cmp r0, #0
	bne _080927A8
	bl sub_0800CD34
	cmp r0, #0
	bne _080927A8
	ldr r1, [sp, #0x20]
	adds r1, #0xe0
	movs r0, #0x10
	movs r2, #1
	bl sub_08000AF0
	ldr r3, [sp, #0x128]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #0x130]
	str r0, [sp, #0]
	add r0, sp, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xc]
	mov r2, sl
	asrs r0, r2, #0x10
	movs r2, #0
	movs r3, #0
	bl sub_08007870
	ldr r1, [sp, #0x54]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #0x11
	movs r2, #1
	bl sub_08000AF0
	movs r5, #0
	lsls r6, r7, #0x10
	add r4, sp, #0x64
_0809275A:
	lsls r2, r5, #2
	ldr r7, [sp, #0x148]
	adds r0, r7, r2
	ldr r1, [r0, #0]
	ldr r3, _080927E8
	adds r1, r1, r3
	str r1, [r0, #0]
	ldr r7, [sp, #0x144]
	adds r2, r7, r2
	ldr r0, [r2, #0]
	asrs r1, r1, #8
	adds r2, r5, #7
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, [sp, #0x130]
	str r3, [sp, #0]
	str r4, [sp, #4]
	ldr r3, [sp, #0x50]
	str r3, [sp, #8]
	ldr r3, [sp, #0x48]
	str r3, [sp, #0xc]
	movs r3, #0
	bl sub_08007870
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _0809275A
	ldr r0, _080927EC
	ldrh r0, [r0, #0]
	asrs r1, r6, #0x10
	adds r0, r1, r0
	mov r7, r9
	strh r0, [r7, #0]
	ldr r0, _080927F8
	ldrh r0, [r0, #0]
	subs r0, r0, r1
	strh r0, [r7, #4]
_080927A8:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #1
	bne _080927B6
	b _08092C52
_080927B6:
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _080927FC
	cmp r8, r0
	bne _080926DC
	movs r0, #1
	bl sub_0800CBF8
	movs r0, #0xf8
	bl sub_0805865C
	ldr r1, [sp, #0x120]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _08092824
	cmp r0, #2
	bgt _08092808
	cmp r0, #1
	beq _08092812
	b _08092862
	.2byte 0x0000
_080927E8: .4byte 0xFFFFFF00
_080927EC: .4byte gUnk_03000250
_080927F0: .4byte gUnk_03001250
_080927F4: .4byte gUnk_03000252
_080927F8: .4byte gUnk_03000254
_080927FC: .4byte 0x0000FFFF
_08092800: .4byte 0xFFFA0000
_08092804: .4byte 0x0000FFC8
_08092808:
	cmp r0, #3
	beq _08092830
	cmp r0, #4
	beq _0809284C
	b _08092862
_08092812:
	movs r2, #0x86
	str r2, [sp, #0x12c]
	ldr r1, _08092820
	movs r3, #1
	negs r3, r3
	b _0809283C
	.2byte 0x0000
_08092820: .4byte 0x00050022
_08092824:
	movs r3, #0x70
	str r3, [sp, #0x12c]
	ldr r1, _0809282C
	b _08092836
_0809282C: .4byte 0x00050023
_08092830:
	movs r7, #0x6b
	str r7, [sp, #0x12c]
	ldr r1, _08092848
_08092836:
	movs r3, #1
	negs r3, r3
	movs r0, #1
_0809283C:
	str r0, [sp, #0]
	add r0, sp, #0x14
	movs r2, #7
	bl sub_08065158
	b _08092862
_08092848: .4byte 0x00050024
_0809284C:
	movs r0, #0x63
	str r0, [sp, #0x12c]
	ldr r1, _08092B1C
	movs r3, #1
	negs r3, r3
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x14
	movs r2, #7
	bl sub_08065158
_08092862:
	movs r0, #0
	movs r1, #0x37
	add r1, sp
	strb r0, [r1, #0]
	movs r2, #0
	str r2, [sp, #0x130]
	movs r3, #0xff
	lsls r3, r3, #8
	str r3, [sp, #0x128]
	movs r7, #0x7c
	lsls r4, r7, #0x10
_08092878:
	ldr r1, [sp, #0x128]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xc
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0x128]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080928CA
	bl sub_0800CC98
	cmp r0, #0
	bne _080928CA
	bl sub_0800CD34
	cmp r0, #0
	bne _080928CA
	ldr r1, [sp, #0x20]
	adds r1, #0xe0
	movs r0, #0x10
	movs r2, #1
	bl sub_08000AF0
	ldr r3, [sp, #0x128]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r7, [sp, #0x130]
	str r7, [sp, #0]
	add r0, sp, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xc]
	asrs r0, r4, #0x10
	movs r2, #0
	movs r3, #0
	bl sub_08007870
_080928CA:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #1
	bne _080928D8
	b _08092C52
_080928D8:
	ldr r0, [sp, #0x12c]
	lsls r1, r0, #0x10
	ldr r2, [sp, #0x128]
	lsls r0, r2, #0x10
	cmp r1, r0
	bgt _08092878
	lsrs r1, r1, #0x10
	str r1, [sp, #0x128]
	movs r0, #0xf9
	bl sub_0805865C
	movs r0, #8
	bl sub_08092E28
	movs r3, #0
	str r3, [sp, #0x124]
	movs r7, #0xb4
	mov r8, r7
	ldr r0, _08092B20
	mov r9, r0
	movs r1, #0x7c
	lsls r1, r1, #0x10
	str r1, [sp, #0x13c]
	ldr r2, [sp, #0x128]
	lsls r2, r2, #0x10
	mov sl, r2
	ldr r6, _08092B24
_0809290E:
	bl sub_08092E34
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	bl sub_0800CCCC
	cmp r0, #0
	bne _080929AE
	bl sub_0800CC98
	cmp r0, #0
	bne _080929AE
	bl sub_0800CD34
	cmp r0, #0
	bne _080929AE
	ldr r1, [sp, #0x20]
	adds r1, #0xe0
	movs r0, #0x10
	movs r2, #1
	bl sub_08000AF0
	ldr r3, [sp, #0x130]
	str r3, [sp, #0]
	add r0, sp, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x13c]
	asrs r0, r1, #0x10
	mov r2, sl
	asrs r1, r2, #0x10
	movs r2, #0
	movs r3, #0
	bl sub_08007870
	ldr r3, [sp, #0x124]
	lsls r1, r3, #0x10
	movs r0, #0x80
	lsls r0, r0, #0xb
	adds r1, r1, r0
	ldr r4, _08092B28
	lsrs r2, r1, #0x10
	str r2, [sp, #0x124]
	asrs r1, r1, #0x18
	ldrh r2, [r4, #0]
	subs r2, r2, r1
	strh r2, [r4, #0]
	ldr r5, _08092B2C
	ldrh r0, [r5, #0]
	adds r0, r0, r1
	strh r0, [r5, #0]
	lsls r2, r2, #0x10
	mov r1, r9
	asrs r3, r1, #0x10
	cmp r2, r9
	bgt _08092986
	strh r3, [r4, #0]
_08092986:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x31
	ble _08092992
	movs r0, #0x32
	strh r0, [r5, #0]
_08092992:
	ldr r0, _08092B30
	ldrh r0, [r0, #0]
	strh r0, [r6, #0]
	ldrh r0, [r4, #0]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r0
	strh r0, [r6, #2]
	ldr r0, _08092B34
	ldrh r0, [r0, #0]
	strh r0, [r6, #4]
	ldrh r0, [r5, #0]
	subs r0, r0, r1
	strh r0, [r6, #6]
_080929AE:
	mov r2, r8
	cmp r2, #0x3c
	bne _080929BA
	movs r0, #0xf7
	bl sub_0805865C
_080929BA:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #1
	bne _080929C8
	b _08092C52
_080929C8:
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _08092B38
	cmp r8, r0
	bne _0809290E
	movs r3, #0x10
	mov r9, r3
	ldr r4, _08092B24
	movs r0, #0x7c
	lsls r7, r0, #0x10
	ldr r1, [sp, #0x128]
	lsls r5, r1, #0x10
_080929E6:
	mov r0, r9
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	bl sub_0800CCCC
	cmp r0, #0
	bne _08092A60
	bl sub_0800CC98
	cmp r0, #0
	bne _08092A60
	bl sub_0800CD34
	adds r1, r0, #0
	cmp r1, #0
	bne _08092A60
	movs r0, #0x10
	str r0, [sp, #0]
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #0x22
	movs r2, #1
	mov r3, r9
	bl sub_0800903C
	bl sub_08092E34
	ldr r1, _08092B28
	ldrh r1, [r1, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, r1
	strh r1, [r4, #2]
	ldr r1, _08092B2C
	ldrh r1, [r1, #0]
	subs r1, r1, r0
	strh r1, [r4, #6]
	ldr r1, [sp, #0x20]
	adds r1, #0xe0
	movs r0, #0x10
	movs r2, #1
	bl sub_08000AF0
	ldr r2, [sp, #0x130]
	str r2, [sp, #0]
	add r0, sp, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	asrs r0, r7, #0x10
	asrs r1, r5, #0x10
	movs r2, #0
	movs r3, #0
	bl sub_080087AC
_08092A60:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #1
	bne _08092A6E
	b _08092C52
_08092A6E:
	mov r3, r9
	cmp r3, #0
	bne _080929E6
	ldr r7, [sp, #0x11c]
	lsls r0, r7, #0x18
	asrs r0, r0, #7
	lsrs r0, r0, #0x10
	str r0, [sp, #0x138]
	movs r0, #6
	bl sub_08092E28
	movs r0, #0
	str r0, [sp, #0x134]
	ldr r1, [sp, #0x138]
	cmp r0, r1
	blo _08092A90
	b _08092C52
_08092A90:
	mov r2, sp
	adds r2, #0xec
	str r2, [sp, #0x140]
	movs r3, #0x82
	lsls r3, r3, #1
	add r3, sp
	mov r9, r3
	add r7, sp, #0xd4
	mov sl, r7
_08092AA2:
	movs r5, #0
_08092AA4:
	bl sub_0800086C
	lsls r4, r5, #2
	ldr r1, [sp, #0x148]
	adds r6, r1, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x78
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08092AC2
	negs r0, r0
_08092AC2:
	subs r0, #0x8c
	lsls r0, r0, #8
	str r0, [r6, #0]
	ldr r2, [sp, #0x144]
	adds r1, r2, r4
	adds r4, r5, #1
	lsls r0, r4, #0xc
	str r0, [r1, #0]
	lsls r5, r5, #1
	ldr r3, [sp, #0x140]
	adds r1, r3, r5
	movs r0, #0
	strh r0, [r1, #0]
	bl sub_0800086C
	mov r7, r9
	adds r2, r7, r5
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r6, r4, #0
	cmp r1, #0
	bge _08092AF2
	adds r0, r1, #3
_08092AF2:
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08092B02
	negs r0, r0
_08092B02:
	strh r0, [r2, #0]
	ldr r0, [sp, #0x134]
	cmp r0, #0
	bne _08092B3C
	bl sub_0800086C
	mov r1, sl
	adds r4, r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x78
	b _08092B4A
	.2byte 0x0000
_08092B1C: .4byte 0x00050025
_08092B20: .4byte 0xFFBE0000
_08092B24: .4byte gUnk_03001250
_08092B28: .4byte gUnk_03000252
_08092B2C: .4byte gUnk_03000256
_08092B30: .4byte gUnk_03000250
_08092B34: .4byte gUnk_03000254
_08092B38: .4byte 0x0000FFFF
_08092B3C:
	bl sub_0800086C
	mov r2, sl
	adds r4, r2, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x18
_08092B4A:
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08092B58
	negs r0, r0
_08092B58:
	strh r0, [r4, #0]
	lsls r0, r6, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xa
	bls _08092AA4
	movs r3, #0xb
	mov r8, r3
_08092B66:
	bl sub_0800CCCC
	cmp r0, #0
	bne _08092C14
	bl sub_0800CC98
	cmp r0, #0
	bne _08092C14
	bl sub_0800CD34
	cmp r0, #0
	bne _08092C14
	ldr r1, [sp, #0x54]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r1, r1, r7
	movs r0, #0x18
	movs r2, #1
	bl sub_08000AF0
	movs r5, #0
_08092B90:
	lsls r0, r5, #1
	mov r1, sl
	adds r2, r1, r0
	ldrh r1, [r2, #0]
	adds r6, r0, #0
	cmp r1, #0
	beq _08092BA4
	subs r0, r1, #1
	strh r0, [r2, #0]
	b _08092C0A
_08092BA4:
	lsls r3, r5, #2
	ldr r2, [sp, #0x148]
	adds r4, r2, r3
	ldr r0, [r4, #0]
	ldr r7, _08092C5C
	cmp r0, r7
	bgt _08092C00
	ldr r0, [sp, #0x140]
	adds r2, r0, r6
	ldrh r0, [r2, #0]
	mov r7, r9
	adds r1, r7, r6
	adds r0, #4
	ldrh r1, [r1, #0]
	adds r0, r0, r1
	strh r0, [r2, #0]
	ldrh r0, [r2, #0]
	ldr r1, [r4, #0]
	adds r1, r1, r0
	str r1, [r4, #0]
	ldr r2, [sp, #0x144]
	adds r0, r2, r3
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	asrs r1, r1, #8
	ldr r3, [sp, #0x130]
	str r3, [sp, #0]
	add r2, sp, #0x64
	str r2, [sp, #4]
	ldr r2, [sp, #0x50]
	str r2, [sp, #8]
	ldr r2, [sp, #0x48]
	str r2, [sp, #0xc]
	adds r2, r5, #0
	movs r3, #0
	bl sub_08007870
	ldr r0, [r4, #0]
	ldr r7, _08092C5C
	cmp r0, r7
	ble _08092C00
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08092C00:
	mov r0, r9
	adds r1, r0, r6
	ldrh r0, [r1, #0]
	adds r0, #1
	strh r0, [r1, #0]
_08092C0A:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xa
	bls _08092B90
_08092C14:
	bl sub_08092E34
	ldr r1, _08092C60
	ldrh r1, [r1, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, r1
	ldr r2, _08092C64
	strh r1, [r2, #2]
	ldr r1, _08092C68
	ldrh r1, [r1, #0]
	subs r1, r1, r0
	strh r1, [r2, #6]
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #1
	beq _08092C52
	mov r3, r8
	cmp r3, #0
	bne _08092B66
	ldr r0, [sp, #0x134]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x134]
	ldr r7, [sp, #0x138]
	cmp r0, r7
	bhs _08092C52
	b _08092AA2
_08092C52:
	movs r0, #6
	bl sub_0801ABE8
	b _08092C70
	.2byte 0x0000
_08092C5C: .4byte 0x0000C7FF
_08092C60: .4byte gUnk_03000252
_08092C64: .4byte gUnk_03001250
_08092C68: .4byte gUnk_03000256
_08092C6C:
	bl sub_080003F0
_08092C70:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08092C6C
	movs r0, #0
	str r0, [sp, #0]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
	bl sub_08092DB8
	movs r0, #0xf7
	bl sub_0805867C
	movs r0, #3
	bl sub_080586D0
	bl sub_08092DF0
	bl sub_0800CC18
	bl sub_0800CC68
	bl sub_08098028
	add sp, #0x14c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080923FC
