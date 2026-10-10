	thumb_func_start sub_0801F374
sub_0801F374: @ 0x0801F374
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	adds r5, r1, #0
	mov r9, r2
	adds r4, r3, #0
	bl sub_080682A4
	cmp r0, #0
	beq _0801F392
	b _0801F776
_0801F392:
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0801F3E4
	mov r0, r8
	adds r1, r5, #0
	mov r2, r9
	movs r3, #1
	bl sub_0801E5B0
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0801F3D4
	ldr r1, [sp, #0xc]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0xc]
	ldr r1, _0801F3D8
	ldr r0, [sp, #8]
	ands r0, r1
	ldr r1, _0801F3DC
	ands r0, r1
	ldr r1, _0801F3E0
	ands r0, r1
	str r0, [sp, #8]
	b _0801F624
	.2byte 0x0000
_0801F3D4: .4byte 0xFFFF0000
_0801F3D8: .4byte 0xFFFF00FF
_0801F3DC: .4byte 0xFF00FFFF
_0801F3E0: .4byte 0x00FFFFFF
_0801F3E4:
	movs r0, #0xa
	strh r0, [r5, #0xc]
	mov r0, r8
	adds r1, r5, #0
	mov r2, r9
	movs r3, #0
	bl sub_0801E5B0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0801F660
	mov sl, r3
	add r7, sp, #8
	ldr r1, [sp, #0xc]
	ands r1, r3
	orrs r1, r0
	str r1, [sp, #0xc]
	mov r0, r9
	adds r0, #0xa9
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x10
	ldr r6, _0801F664
	ldr r1, [sp, #8]
	ands r1, r6
	orrs r1, r0
	mov r2, r8
	adds r2, #0x72
	lsrs r0, r1, #0x10
	ldrb r2, [r2, #0]
	adds r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	adds r2, r6, #0
	ands r2, r1
	orrs r2, r0
	lsrs r0, r2, #0x10
	movs r1, #0x84
	lsls r1, r1, #2
	adds r4, r5, r1
	ldr r1, [r4, #0]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	adds r3, r6, #0
	ands r3, r2
	orrs r3, r0
	str r3, [sp, #8]
	lsrs r1, r3, #0x10
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F450
	ands r3, r6
	str r3, [sp, #8]
_0801F450:
	ldr r0, [r4, #0]
	cmp r0, #0xff
	bne _0801F45C
	ldr r0, [sp, #8]
	ands r0, r6
	str r0, [sp, #8]
_0801F45C:
	mov r1, r8
	adds r1, #0x8c
	ldr r0, [r5, #0x14]
	ldr r1, [r1, #0]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r2, r8
	adds r2, #0x90
	ldr r1, [r5, #0x18]
	ldr r2, [r2, #0]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sub_080B8570
	lsls r0, r0, #0x10
	ldr r1, _0801F668
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r1, [r0, #0]
	lsls r1, r1, #0x18
	ldr r2, _0801F66C
	ldr r0, [sp, #8]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	mov r2, r8
	ldrh r0, [r2, #0x20]
	cmp r0, #5
	bne _0801F4C8
	ldrh r0, [r2, #0x10]
	cmp r0, #8
	bne _0801F4C8
	ldrh r1, [r7, #4]
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1d
	adds r0, #5
	muls r0, r1, r0
	movs r1, #0xa
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0xc]
	mov r3, sl
	ands r1, r3
	orrs r1, r0
	str r1, [sp, #0xc]
_0801F4C8:
	ldr r4, _0801F670
	adds r0, r5, r4
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne _0801F4F8
	mov r2, r8
	adds r2, #0x76
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq _0801F4F8
	add r0, sp, #8
	ldrh r1, [r0, #4]
	ldrb r0, [r2, #0]
	muls r0, r1, r0
	movs r1, #0xa
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0801F660
	ldr r1, [sp, #0xc]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0xc]
_0801F4F8:
	ldr r1, _0801F670
	adds r0, r5, r1
	ldrb r0, [r0, #0]
	cmp r0, #2
	bne _0801F528
	mov r2, r8
	adds r2, #0x75
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq _0801F528
	add r0, sp, #8
	ldrh r1, [r0, #4]
	ldrb r0, [r2, #0]
	muls r0, r1, r0
	movs r1, #0xa
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0801F660
	ldr r1, [sp, #0xc]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0xc]
_0801F528:
	mov r2, r8
	ldrh r0, [r2, #0xc]
	cmp r0, #2
	bne _0801F5BA
	ldr r3, _0801F670
	adds r0, r5, r3
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne _0801F566
	ldr r0, _0801F674
	ldr r0, [r0, #0]
	adds r0, #0x30
	movs r1, #4
	bl sub_0801E0AC
	add r1, sp, #8
	ldrh r1, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, #0xa
	muls r0, r1, r0
	movs r1, #0xa
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0801F660
	ldr r1, [sp, #0xc]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0xc]
_0801F566:
	ldr r0, _0801F674
	ldr r0, [r0, #0]
	adds r0, #0x30
	movs r1, #3
	bl sub_0801E0AC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x64
	adds r4, r0, #0
	muls r4, r1, r4
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #5
	bl sub_080B9394
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x32
	adds r0, r4, #0
	bl sub_080B9394
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_080008C8
	movs r1, #0x64
	bl sub_080B95E4
	cmp r4, r0
	bls _0801F5BA
	movs r3, #1
	str r3, [sp, #0x10]
	movs r0, #0x99
	lsls r0, r0, #1
	bl sub_0805865C
_0801F5BA:
	mov r7, r8
	adds r7, #0xc4
	add r0, sp, #8
	ldrh r4, [r0, #4]
	mov r0, r8
	adds r0, #0x6a
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r0, r4, r0
	movs r1, #0x64
	bl sub_080B9394
	ldrh r1, [r7, #0]
	adds r1, r1, r0
	strh r1, [r7, #0]
	mov r6, r8
	adds r6, #0xc2
	mov r0, r8
	adds r0, #0x6b
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r0, r4, r0
	movs r1, #0x64
	bl sub_080B9394
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	ldrh r4, [r6, #0]
	adds r1, r1, r4
	strh r1, [r6, #0]
	mov r0, r8
	adds r0, #0x62
	movs r2, #0
	ldrsh r1, [r7, r2]
	ldrh r2, [r0, #0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	ble _0801F610
	strh r2, [r7, #0]
_0801F610:
	mov r0, r8
	adds r0, #0x60
	movs r4, #0
	ldrsh r1, [r6, r4]
	ldrh r2, [r0, #0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	ble _0801F624
	strh r2, [r6, #0]
_0801F624:
	add r6, sp, #8
	movs r4, #0x86
	lsls r4, r4, #2
	adds r1, r5, r4
	mov r4, r9
	adds r4, #0xbc
	ldrh r3, [r4, #0]
	ldrh r0, [r5, #0]
	adds r0, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08069388
	ldrb r1, [r6, #1]
	adds r0, r5, #0
	bl sub_0801E244
	adds r1, r0, #0
	mov r9, r4
	cmp r1, #0
	beq _0801F678
	ldrh r0, [r5, #0]
	adds r0, #4
	ldrb r2, [r6, #1]
	bl sub_0801DB94
	b _0801F690
_0801F660: .4byte 0xFFFF0000
_0801F664: .4byte 0xFF00FFFF
_0801F668: .4byte gUnk_084790B4
_0801F66C: .4byte 0x00FFFFFF
_0801F670: .4byte 0x00000226
_0801F674: .4byte gUnk_030034E0
_0801F678:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0801E104
	adds r1, r0, #0
	cmp r1, #0
	beq _0801F690
	ldrh r0, [r5, #0]
	adds r0, #4
	ldrb r2, [r6, #1]
	bl sub_0801DB94
_0801F690:
	add r6, sp, #8
	ldrb r0, [r6, #1]
	cmp r0, #3
	bne _0801F6A2
	ldrh r0, [r5, #0]
	adds r0, #4
	movs r1, #1
	bl sub_08021E44
_0801F6A2:
	ldrh r1, [r5, #2]
	movs r4, #0
	add r0, sp, #8
	strb r1, [r0, #0]
	bl sub_080020F4
	adds r3, r5, #0
	adds r3, #0x5a
	ldr r2, _0801F788
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r1, r1, r2
	movs r0, #1
	ldrh r1, [r1, #0]
	lsls r0, r1
	ldrh r1, [r3, #0]
	orrs r0, r1
	strh r0, [r3, #0]
	mov r0, r8
	adds r0, #0xdc
	ldr r0, [r0, #0]
	str r0, [r5, #0x54]
	adds r7, r5, #0
	adds r7, #0x4a
	ldrh r1, [r6, #4]
	ldr r0, _0801F78C
	ands r0, r1
	ldrh r1, [r7, #0]
	adds r0, r0, r1
	strh r0, [r7, #0]
	ldrh r0, [r6, #4]
	str r0, [r5, #0x4c]
	ldrb r0, [r6, #1]
	adds r1, r5, #0
	adds r1, #0x62
	strh r0, [r1, #0]
	ldr r2, _0801F790
	adds r0, r5, r2
	ldrb r0, [r0, #0]
	cmp r0, #3
	beq _0801F706
	adds r0, r5, #0
	adds r0, #0x6c
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	adds r1, #6
	ldr r0, _0801F794
	strh r0, [r1, #0]
_0801F706:
	adds r0, r5, #0
	add r1, sp, #8
	bl sub_0801F2CC
	mov r3, r8
	ldrh r1, [r3, #0]
	adds r0, r5, #0
	adds r0, #0x58
	strh r1, [r0, #0]
	add r0, sp, #8
	bl sub_080660EC
	movs r4, #0x86
	lsls r4, r4, #2
	adds r0, r5, r4
	ldrh r1, [r7, #0]
	mov r2, r8
	ldrh r3, [r2, #0]
	ldrh r2, [r5, #0]
	adds r2, #4
	str r2, [sp, #0]
	mov r4, r9
	ldrh r2, [r4, #0]
	str r2, [sp, #4]
	movs r2, #0
	bl sub_08069080
	mov r1, r8
	ldrh r0, [r1, #0xc]
	cmp r0, #5
	bne _0801F76A
	ldr r0, _0801F798
	ldr r0, [r0, #0]
	adds r0, #0x30
	movs r1, #6
	bl sub_0801E0AC
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_080008C8
	movs r1, #0x3f
	ands r1, r0
	cmp r4, r1
	bls _0801F76A
	ldrh r0, [r5, #2]
	movs r1, #6
	bl sub_080680B4
_0801F76A:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _0801F776
	ldrh r0, [r5, #2]
	bl sub_08068030
_0801F776:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0801F788: .4byte gUnk_03003CE0
_0801F78C: .4byte 0x00007FFF
_0801F790: .4byte 0x00000226
_0801F794: .4byte 0x0000FFFE
_0801F798: .4byte gUnk_030034E0
	thumb_func_end sub_0801F374
