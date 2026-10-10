	thumb_func_start sub_080AF3F4
sub_080AF3F4: @ 0x080AF3F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xec
	adds r7, r0, #0
	ldr r0, _080AF578
	str r7, [r0, #0]
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r7, r0
	str r0, [sp, #0xb8]
	ldr r1, _080AF57C
	adds r0, r7, #0
	movs r2, #0
	bl sub_0801623C
	ldr r0, [sp, #0xb8]
	bl sub_08019F60
	adds r0, r7, #0
	bl sub_0801A0A4
	ldr r1, _080AF580
	movs r4, #1
	negs r4, r4
	movs r5, #0
	str r5, [sp, #0]
	add r0, sp, #0x18
	movs r2, #5
	adds r3, r4, #0
	bl sub_08065158
	add r1, sp, #0x4c
	mov r9, r1
	ldr r1, _080AF584
	str r5, [sp, #0]
	mov r0, r9
	movs r2, #5
	adds r3, r4, #0
	bl sub_08065158
	add r6, sp, #0x80
	ldr r1, _080AF588
	str r5, [sp, #0]
	adds r0, r6, #0
	movs r2, #5
	adds r3, r4, #0
	bl sub_08065158
	ldr r2, [sp, #0xb8]
	movs r3, #6
	ldrsh r0, [r2, r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	movs r4, #0xeb
	lsls r4, r4, #1
	adds r0, r7, r4
	movs r2, #0
	mov r8, r2
	strh r1, [r0, #0]
	adds r0, r7, #0
	adds r0, #0x5c
	strh r1, [r0, #0]
	ldr r3, [sp, #0xb8]
	movs r4, #4
	ldrsh r0, [r3, r4]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r2, #0xea
	lsls r2, r2, #1
	adds r1, r7, r2
	strh r0, [r1, #0]
	adds r1, r7, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	strh r5, [r7, #0xc]
	movs r3, #0
	str r3, [sp, #0xc4]
	ldr r4, _080AF58C
	str r4, [sp, #0xc8]
	str r5, [sp, #0xd0]
	movs r0, #0
	str r0, [sp, #0xd4]
	ldr r1, _080AF590
	adds r0, r7, r1
	movs r4, #2
	strb r4, [r0, #0]
	adds r2, #0x2a
	adds r0, r7, r2
	strb r4, [r0, #0]
	movs r1, #0xb3
	ldr r3, [sp, #0xb8]
	strh r1, [r3, #0x28]
	movs r0, #0xb0
	lsls r0, r0, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	str r0, [sp, #0xc0]
	ldr r5, [sp, #0xb8]
	strh r4, [r5, #0x24]
	ldr r1, _080AF594
	adds r0, r7, r1
	mov r2, r8
	strb r2, [r0, #0]
	movs r0, #1
	str r0, [r7, #0x50]
	movs r1, #0
	adds r3, r7, #0
	adds r3, #0x6c
	str r3, [sp, #0xe8]
	adds r4, r7, #0
	adds r4, #0x6a
	str r4, [sp, #0xe4]
	adds r5, r7, #0
	adds r5, #0x68
	str r5, [sp, #0xe0]
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r8, r0
	ldr r6, _080AF598
	movs r5, #0
_080AF4F4:
	movs r2, #0
	lsls r4, r1, #0x10
	asrs r0, r4, #0x10
	mov r3, r8
	muls r3, r0, r3
_080AF4FE:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r3
	adds r0, r0, r6
	str r5, [r0, #0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #4
	ble _080AF4FE
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080AF4F4
	movs r0, #0
	ldr r2, [sp, #0xe8]
	strh r0, [r2, #0]
	ldr r3, [sp, #0xe4]
	strh r0, [r3, #0]
	ldr r4, [sp, #0xe0]
	strh r0, [r4, #0]
	mov r9, r0
	movs r6, #0
	bl sub_08098044
	bl sub_08097FE4
	bl sub_08097A4C
	ldrb r0, [r7, #0]
	movs r5, #0xfe
	lsls r5, r5, #1
	adds r3, r7, r5
	movs r1, #0xf
	ands r1, r0
	ldrb r2, [r3, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	ldrh r1, [r7, #2]
	ldr r2, _080AF59C
	adds r0, r7, r2
	strh r1, [r0, #0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r0, #0xff
	strb r0, [r1, #0]
	movs r4, #0
	str r4, [sp, #0xdc]
	bl sub_08067C18
	b _080AF5A4
	.2byte 0x0000
_080AF578: .4byte gUnk_03000788
_080AF57C: .4byte gUnk_084A8B40
_080AF580: .4byte 0x00050089
_080AF584: .4byte 0x00050087
_080AF588: .4byte 0x00050088
_080AF58C: .4byte 0x0000FFFF
_080AF590: .4byte 0x000001FD
_080AF594: .4byte 0x0000022B
_080AF598: .4byte gUnk_03003DC4
_080AF59C: .4byte 0x00000202
_080AF5A0:
	bl sub_080003F0
_080AF5A4:
	bl sub_08067C08
	cmp r0, #0
	beq _080AF5A0
	bl sub_08067BF8
	b _080AFAE4
_080AF5B2:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _080AF5C2
	ldr r5, [sp, #0xd0]
	cmp r5, #0
	bne _080AF5C2
	movs r0, #8
	str r0, [sp, #0xd0]
_080AF5C2:
	bl sub_08058DB0
	cmp r0, #0
	beq _080AF5CC
	b _080AF894
_080AF5CC:
	ldr r0, _080AF5EC
	ldr r0, [r0, #0]
	bl sub_0801C8F0
	ldr r1, _080AF5F0
	adds r0, r7, r1
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #7
	bls _080AF5E2
	b _080AF894
_080AF5E2:
	lsls r0, r0, #2
	ldr r1, _080AF5F4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080AF5EC: .4byte gUnk_03000788
_080AF5F0: .4byte 0x000001FD
_080AF5F4: .4byte _080AF5F8
_080AF5F8:
	.4byte _080AF618
_080AF5FC: .4byte _080AF640
_080AF600: .4byte _080AF688
_080AF604: .4byte _080AF734
_080AF608: .4byte _080AF838
_080AF60C: .4byte _080AF778
_080AF610: .4byte _080AF7E4
_080AF614: .4byte _080AF870
_080AF618:
	movs r0, #0
	strh r0, [r7, #0xc]
	bl sub_08067C08
	cmp r0, #0
	bne _080AF626
	b _080AF894
_080AF626:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrb r1, [r0, #0]
	ldr r3, _080AF63C
	adds r0, r7, r3
	strb r1, [r0, #0]
	bl sub_08067BF8
	b _080AF894
	.2byte 0x0000
_080AF63C: .4byte 0x000001FD
_080AF640:
	movs r4, #0
	str r4, [sp, #0xc4]
	bl sub_08056F78
	cmp r0, #0
	bne _080AF64E
	b _080AF894
_080AF64E:
	bl sub_08002164
	cmp r0, #1
	bne _080AF670
	ldr r0, _080AF66C
	ldrh r0, [r0, #0xc]
	cmp r0, #8
	beq _080AF662
	cmp r0, #6
	bne _080AF670
_080AF662:
	movs r5, #0xff
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r0, #3
	b _080AF678
_080AF66C: .4byte gUnk_03003CE0
_080AF670:
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #8
_080AF678:
	strb r0, [r1, #0]
	ldr r2, _080AF684
	adds r1, r7, r2
	movs r0, #1
	b _080AF862
	.2byte 0x0000
_080AF684: .4byte 0x000001FD
_080AF688:
	movs r3, #1
	str r3, [sp, #0xc4]
	movs r4, #1
	strh r3, [r7, #0xc]
	movs r0, #0
	bl sub_08096594
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r3, r7, r1
	lsls r0, r0, #4
	ldrb r2, [r3, #0]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _080AF6F0
	adds r1, r1, r0
	mov r0, r9
	ldr r2, [sp, #0xc4]
	ands r0, r2
	cmp r0, #0
	beq _080AF6F8
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r7, #0
	movs r3, #0x1c
	bl sub_08097A74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AF6D4
	b _080AF894
_080AF6D4:
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #4
	strb r0, [r1, #0]
	ldr r5, _080AF6F4
	adds r0, r7, r5
	b _080AF726
	.2byte 0x0000
_080AF6F0: .4byte gUnk_03003CE0
_080AF6F4: .4byte 0x000001FD
_080AF6F8:
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r7, #0
	movs r3, #0x50
	bl sub_08097A74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AF70C
	b _080AF894
_080AF70C:
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	movs r6, #0
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #6
	strb r0, [r1, #0]
	ldr r1, _080AF730
	adds r0, r7, r1
_080AF726:
	strb r4, [r0, #0]
	bl sub_08067C18
	b _080AF894
	.2byte 0x0000
_080AF730: .4byte 0x000001FD
_080AF734:
	movs r2, #2
	str r2, [sp, #0xc4]
	strh r2, [r7, #0xc]
	ldr r4, [sp, #0xe4]
	ldrh r0, [r4, #0]
	cmp r0, #2
	bne _080AF750
	ldr r5, [sp, #0xe8]
	ldrh r0, [r5, #0]
	cmp r0, #0
	bne _080AF750
	ldr r0, [sp, #0xc0]
	bl sub_08058CC4
_080AF750:
	adds r0, r7, #0
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _080AF75C
	b _080AF894
_080AF75C:
	ldr r0, [r7, #0x50]
	adds r0, #1
	str r0, [r7, #0x50]
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #5
	strb r0, [r1, #0]
	ldr r2, _080AF774
	adds r1, r7, r2
	movs r0, #1
	b _080AF862
_080AF774: .4byte 0x000001FD
_080AF778:
	movs r3, #9
	str r3, [sp, #0xc4]
	strh r3, [r7, #0xc]
	ldr r0, _080AF7DC
	ldr r4, [r0, #0]
	movs r0, #0
	bl sub_08096594
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08095F10
	ldrh r0, [r7, #8]
	ldr r5, [sp, #0xe0]
	strh r0, [r5, #0]
	adds r1, r6, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r1, #0x1e
	bls _080AF894
	movs r6, #0
	ldrh r0, [r7, #0]
	adds r0, #4
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrb r2, [r1, #0]
	lsrs r2, r2, #4
	movs r1, #5
	str r1, [sp, #0]
	movs r1, #0xd
	movs r3, #5
	bl sub_0807386C
	ldr r0, [r7, #0x50]
	adds r0, #1
	str r0, [r7, #0x50]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #7
	strb r0, [r1, #0]
	ldr r4, _080AF7E0
	adds r1, r7, r4
	movs r0, #1
	b _080AF862
	.2byte 0x0000
_080AF7DC: .4byte gUnk_03000788
_080AF7E0: .4byte 0x000001FD
_080AF7E4:
	movs r5, #9
	str r5, [sp, #0xc4]
	strh r5, [r7, #0xc]
	ldr r0, _080AF830
	ldr r4, [r0, #0]
	movs r0, #0
	bl sub_08096594
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08095F10
	ldrh r0, [r7, #8]
	adds r0, #8
	ldr r1, [sp, #0xe0]
	strh r0, [r1, #0]
	adds r1, r6, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r1, #0x28
	bls _080AF894
	movs r6, #0
	movs r0, #0
	bl sub_08097A38
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #3
	strb r0, [r1, #0]
	ldr r3, _080AF834
	adds r1, r7, r3
	movs r0, #1
	b _080AF862
	.2byte 0x0000
_080AF830: .4byte gUnk_03000788
_080AF834: .4byte 0x000001FD
_080AF838:
	movs r4, #0
	str r4, [sp, #0xc4]
	strh r4, [r7, #0xc]
	adds r1, r6, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r1, #0x3c
	bls _080AF894
	movs r6, #0
	movs r0, #0
	bl sub_08097A38
	ldr r0, _080AF86C
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #3
_080AF862:
	strb r0, [r1, #0]
	bl sub_08067C18
	b _080AF894
	.2byte 0x0000
_080AF86C: .4byte 0x000001FD
_080AF870:
	movs r3, #0xa
	str r3, [sp, #0xc4]
	movs r0, #0
	strh r0, [r7, #0xc]
	ldr r4, [sp, #0xd0]
	cmp r4, #0
	beq _080AF894
	movs r5, #0xff
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r0, #3
	strb r0, [r1, #0]
	ldr r0, _080AF8A4
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
_080AF894:
	ldr r1, [sp, #0xc4]
	cmp r1, #0xa
	bhi _080AF920
	lsls r0, r1, #2
	ldr r1, _080AF8A8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080AF8A4: .4byte 0x000001FD
_080AF8A8: .4byte _080AF8AC
_080AF8AC:
	.4byte _080AF8D8
_080AF8B0: .4byte _080AF8E6
_080AF8B4: .4byte _080AF8F8
_080AF8B8: .4byte _080AF920
_080AF8BC: .4byte _080AF920
_080AF8C0: .4byte _080AF920
_080AF8C4: .4byte _080AF920
_080AF8C8: .4byte _080AF920
_080AF8CC: .4byte _080AF920
_080AF8D0: .4byte _080AF908
_080AF8D4: .4byte _080AF912
_080AF8D8:
	add r2, sp, #0x18
	mov sl, r2
	ldrh r0, [r7, #8]
	ldr r3, [sp, #0xe0]
	strh r0, [r3, #0]
	movs r4, #1
	b _080AF91E
_080AF8E6:
	add r5, sp, #0x18
	mov sl, r5
	ldrh r0, [r7, #8]
	adds r0, #8
	ldr r1, [sp, #0xe0]
	strh r0, [r1, #0]
	movs r2, #1
	str r2, [sp, #0xcc]
	b _080AF920
_080AF8F8:
	add r3, sp, #0x4c
	mov sl, r3
	ldrh r0, [r7, #8]
	ldr r4, [sp, #0xe0]
	strh r0, [r4, #0]
	movs r5, #0
	str r5, [sp, #0xcc]
	b _080AF920
_080AF908:
	add r0, sp, #0x80
	mov sl, r0
	movs r1, #0
	str r1, [sp, #0xcc]
	b _080AF920
_080AF912:
	add r2, sp, #0x80
	mov sl, r2
	movs r0, #8
	ldr r3, [sp, #0xe0]
	strh r0, [r3, #0]
	movs r4, #0
_080AF91E:
	str r4, [sp, #0xcc]
_080AF920:
	ldr r0, _080AF964
	ldr r2, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x68
	ldr r5, [sp, #0xc8]
	ldrh r1, [r0, #0]
	cmp r5, r1
	beq _080AF940
	ldrh r0, [r0, #0]
	str r0, [sp, #0xc8]
	adds r0, r2, #0
	adds r0, #0x6c
	movs r1, #0
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
_080AF940:
	movs r0, #5
	mov r2, sl
	strb r0, [r2, #0x1c]
	ldr r1, [r2, #0xc]
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080AF968
	bl sub_08097FF8
	b _080AF976
	.2byte 0x0000
_080AF964: .4byte gUnk_03000788
_080AF968:
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080AF976:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	bl sub_0800CD8C
	cmp r0, #0
	bne _080AF99C
	ldr r3, [sp, #0xe0]
	ldrh r1, [r3, #0]
	ldr r4, [sp, #0xcc]
	str r4, [sp, #0]
	mov r0, sl
	ldr r2, [sp, #0xe4]
	ldr r3, [sp, #0xe8]
	bl sub_08065370
	adds r1, r7, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
_080AF99C:
	ldr r0, [r7, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0xb4
	mov r5, sp
	adds r5, #0xb6
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r0, [sp, #0xd0]
	cmp r0, #0
	beq _080AFA14
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xd0]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080AFA54
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AFA54
	bl sub_0800CC98
	cmp r0, #0
	bne _080AFA54
	bl sub_0800CD34
	cmp r0, #0
	bne _080AFA54
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0xe0]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0xe4]
	ldrh r3, [r4, #0]
	mov r5, r8
	str r5, [sp, #0]
	mov r4, sl
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, sl
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _080AFA54
_080AFA14:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AFA54
	bl sub_0800CC98
	cmp r0, #0
	bne _080AFA54
	bl sub_0800CD34
	cmp r0, #0
	bne _080AFA54
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0xe0]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0xe4]
	ldrh r3, [r4, #0]
	mov r5, r8
	str r5, [sp, #0]
	mov r4, sl
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, sl
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080AFA54:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	beq _080AFA6A
	ldr r1, [sp, #0xbc]
	cmp r1, r0
	beq _080AFA6A
	str r0, [sp, #0xbc]
	movs r2, #0xa
	str r2, [sp, #0xd4]
	movs r3, #0
	str r3, [sp, #0xd8]
_080AFA6A:
	ldr r4, [sp, #0xd4]
	cmp r4, #0
	beq _080AFABC
	bl sub_0800CC98
	cmp r0, #0
	bne _080AFA96
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AFA96
	bl sub_0800CD34
	cmp r0, #0
	bne _080AFA96
	ldr r5, [sp, #0xd8]
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0xbc]
	bl sub_0801A120
_080AFA96:
	movs r0, #2
	ldr r1, [sp, #0xd4]
	ands r0, r1
	cmp r0, #0
	beq _080AFAAC
	ldr r2, [sp, #0xd8]
	lsls r0, r2, #0x10
	ldr r3, _080AFAB8
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd8]
_080AFAAC:
	ldr r0, [sp, #0xd4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd4]
	b _080AFAC4
_080AFAB8: .4byte 0xFFFF0000
_080AFABC:
	movs r4, #0
	str r4, [sp, #0xbc]
	ldr r5, [sp, #0xd4]
	str r5, [r7, #0x4c]
_080AFAC4:
	adds r0, r7, #0
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080AFAD4
	movs r0, #1
	str r0, [sp, #0xdc]
_080AFAD4:
	adds r0, r7, #0
	bl sub_08020680
	bl sub_080003F0
	ldr r1, [sp, #0xdc]
	cmp r1, #0
	bne _080AFAF6
_080AFAE4:
	bl sub_0800CB78
	cmp r0, #0
	bne _080AFAF6
	bl sub_08056E90
	cmp r0, #0
	bne _080AFAF6
	b _080AF5B2
_080AFAF6:
	bl sub_080020F4
	ldr r1, _080AFC48
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	add r2, sp, #0x80
	mov sl, r2
	movs r1, #0
	movs r0, #5
	strb r0, [r2, #0x1c]
	ldr r2, _080AFC4C
	ldr r4, [r2, #0]
	adds r0, r4, #0
	adds r0, #0x6c
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
	movs r3, #0
	str r3, [sp, #0xd8]
	movs r4, #0xa
	str r4, [sp, #0xd4]
	adds r6, r2, #0
	add r5, sp, #0xb4
	mov r9, r5
_080AFB38:
	bl sub_080020F4
	ldr r2, _080AFC48
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r2, #1
	orrs r0, r2
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AFC04
	bl sub_0800CC98
	cmp r0, #0
	bne _080AFC04
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080AFC04
	mov r3, sl
	ldr r1, [r3, #0xc]
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	movs r4, #1
	str r4, [sp, #0]
	mov r0, sl
	bl sub_08065370
	ldr r1, [r6, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0xb6
	str r5, [sp, #0]
	str r5, [sp, #4]
	mov r2, r9
	adds r3, r4, #0
	bl sub_0800BC08
	mov r5, r9
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	mov r4, sl
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, sl
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	ldr r0, [sp, #0xd8]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0xbc]
	bl sub_0801A120
_080AFC04:
	movs r0, #2
	ldr r1, [sp, #0xd4]
	ands r0, r1
	cmp r0, #0
	beq _080AFC1A
	ldr r2, [sp, #0xd8]
	lsls r0, r2, #0x10
	ldr r3, _080AFC50
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd8]
_080AFC1A:
	bl sub_080003F0
	ldr r0, [sp, #0xd4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd4]
	ldr r0, _080AFC54
	ldr r4, [sp, #0xd4]
	cmp r4, r0
	bne _080AFB38
	bl sub_080683CC
	ldr r4, _080AFC4C
	ldr r0, [r4, #0]
	ldrh r0, [r0, #2]
	bl sub_08067CA8
	ldr r0, _080AFC58
	bl sub_08068330
	mov r9, r4
	b _080AFD28
_080AFC48: .4byte gUnk_03003CE0
_080AFC4C: .4byte gUnk_03000788
_080AFC50: .4byte 0xFFFF0000
_080AFC54: .4byte 0x0000FFFF
_080AFC58: .4byte 0xDEADFACE
_080AFC5C:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r5, _080AFD40
	adds r1, r1, r5
	ldr r0, [r1, #0]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AFD24
	bl sub_0800CC98
	cmp r0, #0
	bne _080AFD24
	bl sub_0800CD8C
	cmp r0, #0
	bne _080AFD24
	bl sub_0800CD34
	adds r6, r0, #0
	cmp r6, #0
	bne _080AFD24
	mov r0, sl
	ldr r1, [r0, #0xc]
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	mov r2, r9
	ldr r1, [r2, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r5, r9
	ldr r3, [r5, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	mov r0, sl
	bl sub_08065370
	ldr r1, [r5, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0xb4
	mov r5, sp
	adds r5, #0xb6
	str r6, [sp, #0]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r4, r9
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r5, r8
	str r5, [sp, #0]
	mov r4, sl
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, sl
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080AFD24:
	bl sub_080003F0
_080AFD28:
	ldr r0, _080AFD44
	bl sub_080682B8
	cmp r0, #0
	beq _080AFC5C
	ldr r0, _080AFD44
	bl sub_08065E38
	ldr r6, _080AFD48
	add r0, sp, #0xb4
	mov r9, r0
	b _080AFE12
_080AFD40: .4byte gUnk_03003D10
_080AFD44: .4byte 0xDEADFACE
_080AFD48: .4byte gUnk_03000788
_080AFD4C:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r2, _080AFE60
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AFE0E
	bl sub_0800CC98
	cmp r0, #0
	bne _080AFE0E
	bl sub_0800CD8C
	cmp r0, #0
	bne _080AFE0E
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080AFE0E
	mov r3, sl
	ldr r1, [r3, #0xc]
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	mov r0, sl
	bl sub_08065370
	ldr r1, [r6, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0xb6
	str r5, [sp, #0]
	str r5, [sp, #4]
	mov r2, r9
	adds r3, r4, #0
	bl sub_0800BC08
	mov r5, r9
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	mov r4, sl
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, sl
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080AFE0E:
	bl sub_080003F0
_080AFE12:
	bl sub_08058DB0
	cmp r0, #0
	bne _080AFD4C
	movs r0, #0
	bl sub_080586B4
	bl sub_080020F4
	ldr r1, _080AFE64
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	bl sub_0805A318
	cmp r0, #0
	beq _080AFE70
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _080AFE68
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	ldr r1, _080AFE6C
	ldr r1, [r1, #0]
	movs r2, #0xe4
	lsls r2, r2, #3
	adds r1, r1, r2
	b _080AFE8E
_080AFE60: .4byte gUnk_03003D10
_080AFE64: .4byte gUnk_03003CE0
_080AFE68: .4byte 0x0014009E
_080AFE6C: .4byte gUnk_03005CF4
_080AFE70:
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _080AFE98
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	ldr r1, _080AFE9C
	ldr r1, [r1, #0]
	movs r3, #0xe4
	lsls r3, r3, #3
	adds r1, r1, r3
_080AFE8E:
	str r0, [r1, #0]
	ldr r6, _080AFEA0
	add r4, sp, #0xb4
	mov r9, r4
	b _080AFF6C
_080AFE98: .4byte 0x00140098
_080AFE9C: .4byte gUnk_03005CF4
_080AFEA0: .4byte gUnk_03000788
_080AFEA4:
	bl sub_080020F4
	ldr r2, _080AFFEC
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AFF68
	bl sub_0800CC98
	cmp r0, #0
	bne _080AFF68
	bl sub_0800CD8C
	cmp r0, #0
	bne _080AFF68
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080AFF68
	mov r0, sl
	ldr r1, [r0, #0xc]
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	mov r0, sl
	bl sub_08065370
	ldr r1, [r6, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0xb6
	str r5, [sp, #0]
	str r5, [sp, #4]
	mov r2, r9
	adds r3, r4, #0
	bl sub_0800BC08
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	mov r4, sl
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, sl
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080AFF68:
	bl sub_080003F0
_080AFF6C:
	ldr r0, _080AFFF0
	ldr r0, [r0, #0]
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bl sub_0805EEFC
	cmp r0, #0
	beq _080AFEA4
	add r2, sp, #0x80
	mov sl, r2
	movs r1, #0
	movs r0, #5
	strb r0, [r2, #0x1c]
	ldr r2, _080AFFF4
	ldr r3, [r2, #0]
	adds r0, r3, #0
	adds r0, #0x68
	strh r1, [r0, #0]
	adds r0, #4
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
	movs r6, #0x64
	mov r9, r2
_080AFFA0:
	bl sub_080020F4
	ldr r2, _080AFFEC
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r3, r0, #0
	muls r3, r1, r3
	adds r2, #0x30
	adds r3, r3, r2
	ldr r0, [r3, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B00AE
	bl sub_0800CC98
	cmp r0, #0
	bne _080B00AE
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B00AE
	bl sub_0800CD34
	cmp r0, #0
	bne _080B00AE
	cmp r6, #0x4f
	bhi _080B001E
	cmp r6, #0x3b
	bhi _080AFFF8
	mov r3, r9
	ldr r0, [r3, #0]
	adds r0, #0x68
	movs r1, #0x12
	b _080B001C
_080AFFEC: .4byte gUnk_03003CE0
_080AFFF0: .4byte gUnk_03005CF4
_080AFFF4: .4byte gUnk_03000788
_080AFFF8:
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _080B001E
	mov r4, r9
	ldr r2, [r4, #0]
	adds r1, r2, #0
	adds r1, #0x68
	ldrh r0, [r1, #0]
	cmp r0, #7
	bhi _080B0016
	adds r0, #1
	strh r0, [r1, #0]
	adds r1, r0, #0
	b _080B0018
_080B0016:
	movs r1, #8
_080B0018:
	adds r0, r2, #0
	adds r0, #0x68
_080B001C:
	strh r1, [r0, #0]
_080B001E:
	mov r5, sl
	ldr r1, [r5, #0xc]
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	mov r0, r9
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r1, r9
	ldr r3, [r1, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	movs r0, #1
	str r0, [sp, #0]
	mov r0, sl
	bl sub_08065370
	mov r2, r9
	ldr r1, [r2, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0xb4
	mov r5, sp
	adds r5, #0xb6
	movs r3, #0
	str r3, [sp, #0]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0xe0]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0xe4]
	ldrh r3, [r4, #0]
	mov r5, r8
	str r5, [sp, #0]
	mov r4, sl
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, sl
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080B00AE:
	bl sub_080003F0
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xff
	beq _080B00BE
	b _080AFFA0
_080B00BE:
	ldr r4, _080B0278
	ldr r3, [r4, #0]
	adds r1, r3, #0
	adds r1, #0x68
	movs r2, #0
	movs r0, #0x12
	strh r0, [r1, #0]
	adds r0, r3, #0
	adds r0, #0x6c
	strh r2, [r0, #0]
	subs r0, #2
	strh r2, [r0, #0]
	movs r6, #0
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	movs r2, #1
	bl sub_08098088
	mov r9, r4
	add r7, sp, #0xb4
_080B00E6:
	bl sub_080020F4
	ldr r2, _080B027C
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r2, #1
	orrs r0, r2
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B01C6
	bl sub_0800CC98
	cmp r0, #0
	bne _080B01C6
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B01C6
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080B01C6
	adds r1, r6, #1
	lsls r1, r1, #0x18
	movs r0, #0xf0
	lsls r0, r0, #0x14
	ands r0, r1
	lsrs r6, r0, #0x18
	movs r0, #0
	movs r1, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08009088
	mov r3, sl
	ldr r1, [r3, #0xc]
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	mov r4, r9
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r3, [r4, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	movs r0, #1
	str r0, [sp, #0]
	mov r0, sl
	bl sub_08065370
	ldr r1, [r4, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0xb6
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [sp, #0xe0]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0xe4]
	ldrh r3, [r4, #0]
	mov r4, r8
	str r4, [sp, #0]
	movs r4, #1
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, sl
	adds r4, #0x1c
	str r4, [sp, #0xc]
	mov r5, sl
	ldr r4, [r5, #8]
	str r4, [sp, #0x10]
	ldr r4, [r5, #0]
	str r4, [sp, #0x14]
	bl sub_08007974
_080B01C6:
	bl sub_080003F0
	bl sub_080980F0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B00E6
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08009088
	bl sub_08098060
	bl sub_080020F4
	ldr r4, _080B027C
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	adds r4, #0x30
	adds r2, r2, r4
	ldr r0, [r2, #0]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080B0264
	ldr r0, _080B0278
	ldr r0, [r0, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080B0264
	ldr r0, _080B0280
	ldr r0, [r0, #0]
	ldr r1, [sp, #0xb8]
	bl sub_0801E46C
	adds r4, r0, #0
	movs r0, #0x1d
	str r0, [sp, #0xd8]
	movs r5, #1
	negs r5, r5
_080B0234:
	ldr r0, _080B0278
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r4, #0
	bl sub_0806171C
	bl sub_080003F0
	ldr r1, [sp, #0xd8]
	lsls r0, r1, #0x10
	ldr r2, _080B0284
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0xd8]
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _080B0234
	ldr r0, _080B0280
	ldr r0, [r0, #0]
	adds r1, r4, #0
	bl sub_0801E4CC
_080B0264:
	bl sub_08056E24
	add sp, #0xec
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B0278: .4byte gUnk_03000788
_080B027C: .4byte gUnk_03003CE0
_080B0280: .4byte gUnk_030034E0
_080B0284: .4byte 0xFFFF0000
	thumb_func_end sub_080AF3F4
