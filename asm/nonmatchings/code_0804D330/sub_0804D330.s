	thumb_func_start sub_0804D330
sub_0804D330: @ 0x0804D330
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	cmp r0, #6
	bls _0804D342
	b _0804DA34
_0804D342:
	lsls r0, r0, #2
	ldr r1, _0804D34C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0804D34C: .4byte _0804D350
_0804D350:
	.4byte _0804D36C
_0804D354: .4byte _0804D946
_0804D358: .4byte _0804D95C
_0804D35C: .4byte _0804D978
_0804D360: .4byte _0804D994
_0804D364: .4byte _0804D9B0
_0804D368: .4byte _0804D9D0
_0804D36C:
	add r6, sp, #0x18
	add r5, sp, #0x1c
	mov r0, sp
	adds r0, #0xc
	str r0, [sp, #0x20]
	b _0804D37C
_0804D378:
	bl sub_080003F0
_0804D37C:
	bl sub_0805F184
	cmp r0, #0
	bne _0804D378
	b _0804D38A
_0804D386:
	bl sub_080003F0
_0804D38A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804D386
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804D3AC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804D3B4
	.2byte 0x0000
_0804D3AC: .4byte 0x0014004E
_0804D3B0:
	bl sub_080003F0
_0804D3B4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804D3B0
	ldr r0, _0804D434
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	mov r8, r2
	adds r0, #0x82
	movs r1, #0
	ldrsh r7, [r0, r1]
	movs r4, #0
	mov sl, r4
	ldr r2, _0804D438
	mov r9, r2
_0804D3D8:
	adds r0, r6, #0
	mov r1, r8
	mov r3, sl
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r5, #0
	adds r1, r7, #0
	mov r3, r9
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x1c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	adds r4, #0x22
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _0804D3D8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804D43C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	b _0804D444
	.2byte 0x0000
_0804D434: .4byte gUnk_03003170
_0804D438: .4byte 0xFFE20000
_0804D43C: .4byte gUnk_03003CE0
_0804D440:
	bl sub_080003F0
_0804D444:
	bl sub_0805F184
	cmp r0, #0
	bne _0804D440
	b _0804D452
_0804D44E:
	bl sub_080003F0
_0804D452:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804D44E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804D474
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804D47C
	.2byte 0x0000
_0804D474: .4byte 0x0014004F
_0804D478:
	bl sub_080003F0
_0804D47C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804D478
	b _0804D48C
_0804D488:
	bl sub_080003F0
_0804D48C:
	bl sub_0805F184
	cmp r0, #0
	bne _0804D488
	b _0804D49A
_0804D496:
	bl sub_080003F0
_0804D49A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804D496
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804D4D4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	movs r1, #1
	movs r2, #0x1c
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r1, #0
	ldr r2, [sp, #0x20]
	movs r3, #0
_0804D4C8:
	adds r0, r2, r1
	strb r3, [r0, #0]
	adds r1, #1
	cmp r1, #0xb
	bls _0804D4C8
	b _0804D4DC
_0804D4D4: .4byte 0x00140050
_0804D4D8:
	bl sub_080003F0
_0804D4DC:
	movs r0, #0xe8
	lsls r0, r0, #8
	movs r1, #0x8c
	lsls r1, r1, #8
	add r2, sp, #8
	bl sub_08067B9C
	cmp r0, #0
	beq _0804D4D8
	b _0804D4F4
_0804D4F0:
	bl sub_080003F0
_0804D4F4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804D4F0
	ldr r6, _0804D50C
	ldr r0, _0804D510
	ldr r0, [r0, #0]
	ldr r1, _0804D514
	adds r4, r0, r1
	movs r5, #0
	b _0804D51C
_0804D50C: .4byte sub_0804D330
_0804D510: .4byte gUnk_03005CF4
_0804D514: .4byte 0x00000E34
_0804D518:
	adds r5, #1
	adds r4, #0x28
_0804D51C:
	cmp r5, #0x1d
	bhi _0804D560
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804D518
	b _0804D530
_0804D52C:
	bl sub_080003F0
_0804D530:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804D52C
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
	movs r1, #6
	bl sub_08000274
	b _0804D560
_0804D55C:
	bl sub_080003F0
_0804D560:
	bl sub_0805F184
	cmp r0, #0
	bne _0804D55C
	b _0804D56E
_0804D56A:
	bl sub_080003F0
_0804D56E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804D56A
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804D590
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804D598
	.2byte 0x0000
_0804D590: .4byte 0x00140051
_0804D594:
	bl sub_080003F0
_0804D598:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804D594
	b _0804D5A8
_0804D5A4:
	bl sub_080003F0
_0804D5A8:
	bl sub_0805F184
	cmp r0, #0
	bne _0804D5A4
	b _0804D5B6
_0804D5B2:
	bl sub_080003F0
_0804D5B6:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804D5B2
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804D604
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	movs r0, #0xe8
	lsls r0, r0, #8
	movs r1, #0x8c
	lsls r1, r1, #8
	movs r2, #6
	bl sub_0805D37C
	bl sub_080687A8
	movs r1, #1
	movs r2, #2
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r1, #0
	ldr r2, [sp, #0x20]
	movs r3, #0
_0804D5F6:
	adds r0, r2, r1
	strb r3, [r0, #0]
	adds r1, #1
	cmp r1, #0xb
	bls _0804D5F6
	b _0804D60C
	.2byte 0x0000
_0804D604: .4byte 0x00140052
_0804D608:
	bl sub_080003F0
_0804D60C:
	movs r0, #0xe8
	lsls r0, r0, #8
	movs r1, #0x8c
	lsls r1, r1, #8
	add r2, sp, #8
	bl sub_08067B9C
	cmp r0, #0
	beq _0804D608
	b _0804D624
_0804D620:
	bl sub_080003F0
_0804D624:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804D620
	ldr r6, _0804D63C
	ldr r0, _0804D640
	ldr r0, [r0, #0]
	ldr r3, _0804D644
	adds r4, r0, r3
	movs r5, #0
	b _0804D64C
_0804D63C: .4byte sub_0804D330
_0804D640: .4byte gUnk_03005CF4
_0804D644: .4byte 0x00000E34
_0804D648:
	adds r5, #1
	adds r4, #0x28
_0804D64C:
	cmp r5, #0x1d
	bhi _0804D690
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804D648
	b _0804D660
_0804D65C:
	bl sub_080003F0
_0804D660:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804D65C
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
	movs r1, #6
	bl sub_08000274
	b _0804D690
_0804D68C:
	bl sub_080003F0
_0804D690:
	bl sub_0805F184
	cmp r0, #0
	bne _0804D68C
	b _0804D69E
_0804D69A:
	bl sub_080003F0
_0804D69E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804D69A
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804D6C0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804D6C8
	.2byte 0x0000
_0804D6C0: .4byte 0x00140053
_0804D6C4:
	bl sub_080003F0
_0804D6C8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804D6C4
	b _0804D6D8
_0804D6D4:
	bl sub_080003F0
_0804D6D8:
	bl sub_0805F184
	cmp r0, #0
	bne _0804D6D4
	b _0804D6E6
_0804D6E2:
	bl sub_080003F0
_0804D6E6:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804D6E2
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804D734
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	movs r0, #0xe8
	lsls r0, r0, #8
	movs r1, #0x8c
	lsls r1, r1, #8
	movs r2, #6
	bl sub_0805D37C
	bl sub_080687A8
	movs r1, #1
	movs r2, #0x2f
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r1, #0
	ldr r2, [sp, #0x20]
	movs r3, #0
_0804D726:
	adds r0, r2, r1
	strb r3, [r0, #0]
	adds r1, #1
	cmp r1, #0xb
	bls _0804D726
	b _0804D73C
	.2byte 0x0000
_0804D734: .4byte 0x00140054
_0804D738:
	bl sub_080003F0
_0804D73C:
	movs r0, #0xe8
	lsls r0, r0, #8
	movs r1, #0x8c
	lsls r1, r1, #8
	add r2, sp, #8
	bl sub_08067B9C
	cmp r0, #0
	beq _0804D738
	b _0804D754
_0804D750:
	bl sub_080003F0
_0804D754:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804D750
	ldr r6, _0804D76C
	ldr r0, _0804D770
	ldr r0, [r0, #0]
	ldr r3, _0804D774
	adds r4, r0, r3
	movs r5, #0
	b _0804D77C
_0804D76C: .4byte sub_0804D330
_0804D770: .4byte gUnk_03005CF4
_0804D774: .4byte 0x00000E34
_0804D778:
	adds r5, #1
	adds r4, #0x28
_0804D77C:
	cmp r5, #0x1d
	bhi _0804D7C0
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804D778
	b _0804D790
_0804D78C:
	bl sub_080003F0
_0804D790:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804D78C
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
	movs r1, #6
	bl sub_08000274
	b _0804D7C0
_0804D7BC:
	bl sub_080003F0
_0804D7C0:
	bl sub_0805F184
	cmp r0, #0
	bne _0804D7BC
	b _0804D7CE
_0804D7CA:
	bl sub_080003F0
_0804D7CE:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804D7CA
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804D7F0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804D7F8
	.2byte 0x0000
_0804D7F0: .4byte 0x00140055
_0804D7F4:
	bl sub_080003F0
_0804D7F8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804D7F4
	b _0804D808
_0804D804:
	bl sub_080003F0
_0804D808:
	bl sub_0805F184
	cmp r0, #0
	bne _0804D804
	b _0804D816
_0804D812:
	bl sub_080003F0
_0804D816:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804D812
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804D864
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	movs r0, #0xe8
	lsls r0, r0, #8
	movs r1, #0x8c
	lsls r1, r1, #8
	movs r2, #6
	bl sub_0805D37C
	bl sub_080687A8
	movs r1, #1
	movs r2, #0x1a
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r1, #0
	ldr r2, [sp, #0x20]
	movs r3, #0
_0804D856:
	adds r0, r2, r1
	strb r3, [r0, #0]
	adds r1, #1
	cmp r1, #0xb
	bls _0804D856
	b _0804D86C
	.2byte 0x0000
_0804D864: .4byte 0x00140056
_0804D868:
	bl sub_080003F0
_0804D86C:
	movs r0, #0xe8
	lsls r0, r0, #8
	movs r1, #0x8c
	lsls r1, r1, #8
	add r2, sp, #8
	bl sub_08067B9C
	cmp r0, #0
	beq _0804D868
	b _0804D884
_0804D880:
	bl sub_080003F0
_0804D884:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804D880
	ldr r6, _0804D89C
	ldr r0, _0804D8A0
	ldr r0, [r0, #0]
	ldr r3, _0804D8A4
	adds r4, r0, r3
	movs r5, #0
	b _0804D8AC
_0804D89C: .4byte sub_0804D330
_0804D8A0: .4byte gUnk_03005CF4
_0804D8A4: .4byte 0x00000E34
_0804D8A8:
	adds r5, #1
	adds r4, #0x28
_0804D8AC:
	cmp r5, #0x1d
	bhi _0804D8F0
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804D8A8
	b _0804D8C0
_0804D8BC:
	bl sub_080003F0
_0804D8C0:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804D8BC
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
	movs r1, #6
	bl sub_08000274
	b _0804D8F0
_0804D8EC:
	bl sub_080003F0
_0804D8F0:
	bl sub_0805F184
	cmp r0, #0
	bne _0804D8EC
	b _0804D8FE
_0804D8FA:
	bl sub_080003F0
_0804D8FE:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804D8FA
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804D920
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804D928
	.2byte 0x0000
_0804D920: .4byte 0x00140057
_0804D924:
	bl sub_080003F0
_0804D928:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804D924
	movs r0, #0xe8
	lsls r0, r0, #8
	movs r1, #0x8c
	lsls r1, r1, #8
	movs r2, #6
	bl sub_0805D37C
	bl sub_080687A8
	b _0804DA34
_0804D946:
	ldr r0, _0804D958
	ldr r0, [r0, #0]
	ldrh r0, [r0, #2]
	movs r1, #3
	bl sub_08019EB8
	movs r0, #1
	b _0804D9C4
	.2byte 0x0000
_0804D958: .4byte gUnk_030056F4
_0804D95C:
	ldr r0, _0804D974
	ldr r0, [r0, #0]
	movs r3, #0xb8
	lsls r3, r3, #2
	adds r0, r0, r3
	ldrh r0, [r0, #2]
	movs r1, #3
	bl sub_08019EB8
	movs r0, #2
	b _0804D9C4
	.2byte 0x0000
_0804D974: .4byte gUnk_030056F4
_0804D978:
	ldr r0, _0804D990
	ldr r0, [r0, #0]
	movs r1, #0xb8
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	movs r1, #3
	bl sub_08019EB8
	movs r0, #3
	b _0804D9C4
	.2byte 0x0000
_0804D990: .4byte gUnk_030056F4
_0804D994:
	ldr r0, _0804D9AC
	ldr r0, [r0, #0]
	movs r2, #0x8a
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrh r0, [r0, #2]
	movs r1, #3
	bl sub_08019EB8
	movs r0, #4
	b _0804D9C4
	.2byte 0x0000
_0804D9AC: .4byte gUnk_030056F4
_0804D9B0:
	ldr r0, _0804D9CC
	ldr r0, [r0, #0]
	movs r3, #0xb8
	lsls r3, r3, #4
	adds r0, r0, r3
	ldrh r0, [r0, #2]
	movs r1, #3
	bl sub_08019EB8
	movs r0, #5
_0804D9C4:
	movs r1, #0
	bl sub_0802949C
	b _0804DA34
_0804D9CC: .4byte gUnk_030056F4
_0804D9D0:
	movs r4, #4
	negs r4, r4
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_08028D98
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #4
	bl sub_08028D98
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_08028D98
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #4
	bl sub_08028D98
	movs r0, #4
	movs r1, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_08028D98
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #4
	bl sub_08028D98
	movs r0, #5
	movs r1, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_08028D98
	movs r0, #5
	movs r1, #0
	movs r2, #4
	movs r3, #4
	bl sub_08028D98
_0804DA34:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0804D330
