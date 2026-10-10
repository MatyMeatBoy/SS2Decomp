	thumb_func_start sub_080AD534
sub_080AD534: @ 0x080AD534
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	ldr r6, _080AD598
	lsls r0, r0, #2
	adds r5, r0, r6
	ldr r0, _080AD59C
	mov r2, r9
	lsls r1, r2, #1
	add r1, r9
	lsls r1, r1, #3
	subs r1, r1, r2
	lsls r1, r1, #5
	movs r3, #0xb8
	lsls r3, r3, #2
	adds r1, r1, r3
	ldr r0, [r0, #0]
	adds r0, r0, r1
	str r0, [r5, #0]
	ldr r4, _080AD5A0
	adds r2, #1
	movs r3, #1
	lsls r3, r2
	ldr r1, [r4, #0]
	orrs r1, r3
	str r1, [r4, #0]
	ldr r1, _080AD5A4
	bl sub_0801623C
	ldr r0, [r5, #0]
	movs r7, #0x81
	lsls r7, r7, #2
	adds r7, r0, r7
	str r7, [sp, #0x34]
	adds r0, r7, #0
	bl sub_08019F60
	mov r0, r9
	cmp r0, #3
	bne _080AD5A8
	ldr r0, [r6, #0xc]
	bl sub_0801A0A4
	b _080AD5AE
_080AD598: .4byte gUnk_03000448
_080AD59C: .4byte gUnk_030056F4
_080AD5A0: .4byte gUnk_030056FC
_080AD5A4: .4byte gUnk_084A4C40
_080AD5A8:
	ldr r0, [r5, #0]
	bl sub_0801A0B0
_080AD5AE:
	ldr r4, _080AD6EC
	mov r1, r9
	lsls r1, r1, #2
	mov r8, r1
	add r4, r8
	ldr r1, [r4, #0]
	movs r3, #0
	str r3, [r1, #0x54]
	str r3, [r1, #0x4c]
	adds r0, r1, #0
	adds r0, #0x4a
	movs r6, #0
	strh r3, [r0, #0]
	adds r0, #0x22
	strh r3, [r0, #0]
	subs r0, #2
	strh r3, [r0, #0]
	strh r3, [r1, #8]
	ldr r0, [r4, #0]
	mov r5, r9
	adds r5, #1
	strh r5, [r0, #0]
	ldr r1, [r4, #0]
	ldrh r0, [r1, #0]
	adds r0, #4
	strh r0, [r1, #2]
	ldr r2, [r4, #0]
	movs r0, #1
	str r0, [r2, #0x50]
	ldr r7, [sp, #0x34]
	movs r0, #6
	ldrsh r1, [r7, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r7, #0xeb
	lsls r7, r7, #1
	adds r1, r2, r7
	strh r0, [r1, #0]
	adds r2, #0x5c
	strh r0, [r2, #0]
	ldr r2, [r4, #0]
	ldr r1, [sp, #0x34]
	movs r7, #4
	ldrsh r0, [r1, r7]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r7, #0xea
	lsls r7, r7, #1
	adds r1, r2, r7
	strh r0, [r1, #0]
	adds r2, #0x5e
	strh r0, [r2, #0]
	ldr r0, [r4, #0]
	ldr r1, _080AD6F0
	adds r0, r0, r1
	strb r6, [r0, #0]
	ldr r0, [r4, #0]
	strh r3, [r0, #0xc]
	ldr r2, [r4, #0]
	ldrb r0, [r2, #0]
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0xf
	ands r1, r0
	ldrb r3, [r2, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0]
	ldr r0, [r4, #0]
	ldrh r1, [r0, #2]
	adds r7, #0x2e
	adds r0, r0, r7
	strh r1, [r0, #0]
	ldr r0, [r4, #0]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0, #0]
	movs r2, #0
	str r2, [sp, #0x40]
	movs r3, #1
	str r3, [sp, #0x4c]
	mov sl, r2
	movs r7, #0
	str r7, [sp, #0x3c]
	movs r0, #0
	str r0, [sp, #0x54]
	ldr r3, [r4, #0]
	ldr r1, _080AD6F4
	lsls r2, r5, #3
	adds r0, r2, r1
	ldr r0, [r0, #0]
	lsls r0, r0, #8
	str r0, [r3, #0x14]
	adds r1, #4
	adds r2, r2, r1
	ldr r0, [r2, #0]
	lsls r0, r0, #8
	str r0, [r3, #0x18]
	ldr r0, _080AD6F8
	ldr r1, [r0, #0xc]
	add r0, sp, #0x10
	bl sub_08097F70
	ldr r0, _080AD6FC
	add r0, r9
	strb r6, [r0, #0]
	movs r1, #1
	str r1, [sp, #0x50]
	mov r7, r8
	mov r8, r5
	mov r2, sp
	adds r2, #0x30
	str r2, [sp, #0x58]
	mov r3, sp
	adds r3, #0x32
	str r3, [sp, #0x5c]
_080AD6A4:
	ldr r0, _080AD6EC
	adds r0, r7, r0
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0xc]
	cmp r0, #0xa
	bne _080AD6BE
	mov r0, sl
	cmp r0, #0
	bne _080AD6BA
	movs r2, #8
	mov sl, r2
_080AD6BA:
	movs r0, #2
	strh r0, [r1, #0xc]
_080AD6BE:
	bl sub_08058DB0
	cmp r0, #0
	beq _080AD6C8
	b _080AD8E8
_080AD6C8:
	ldr r4, _080AD6EC
	adds r4, r7, r4
	ldr r0, [r4, #0]
	bl sub_0801C8F0
	ldr r0, [r4, #0]
	ldr r3, _080AD6F0
	adds r0, r0, r3
	ldrb r0, [r0, #0]
	cmp r0, #0xa
	bls _080AD6E0
	b _080AD8E8
_080AD6E0:
	lsls r0, r0, #2
	ldr r1, _080AD700
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080AD6EC: .4byte gUnk_03000448
_080AD6F0: .4byte 0x000001FD
_080AD6F4: .4byte gUnk_03000490
_080AD6F8: .4byte gUnk_03000458
_080AD6FC: .4byte gUnk_030004C4
_080AD700: .4byte _080AD704
_080AD704:
	.4byte _080AD730
_080AD708: .4byte _080AD744
_080AD70C: .4byte _080AD8E8
_080AD710: .4byte _080AD8E8
_080AD714: .4byte _080AD8E8
_080AD718: .4byte _080AD8E8
_080AD71C: .4byte _080AD8E8
_080AD720: .4byte _080AD8E8
_080AD724: .4byte _080AD780
_080AD728: .4byte _080AD7E4
_080AD72C: .4byte _080AD850
_080AD730:
	ldr r0, _080AD740
	adds r0, r7, r0
	ldr r1, [r0, #0]
	movs r0, #2
	strh r0, [r1, #0xc]
	movs r0, #0
	str r0, [sp, #0x40]
	b _080AD8E8
_080AD740: .4byte gUnk_03000448
_080AD744:
	ldr r0, _080AD778
	adds r4, r7, r0
	ldr r1, [r4, #0]
	movs r0, #0
	strh r0, [r1, #0xc]
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0]
	bl sub_080682B8
	cmp r0, #0
	bne _080AD75C
	b _080AD8E8
_080AD75C:
	ldr r1, [r4, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0, #0]
	ldr r3, _080AD77C
	adds r1, r1, r3
	strb r0, [r1, #0]
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0]
	bl sub_08065E38
	b _080AD8E8
	.2byte 0x0000
_080AD778: .4byte gUnk_03000448
_080AD77C: .4byte 0x000001FD
_080AD780:
	ldr r0, _080AD7D8
	adds r4, r7, r0
	ldr r0, [r4, #0]
	bl sub_0801A0B0
	ldr r0, [sp, #0x40]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x40]
	add r0, sp, #0x10
	movs r1, #4
	ldr r2, [sp, #0x40]
	movs r3, #0x3c
	bl sub_08096E20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x4c]
	cmp r0, #0
	bne _080AD7AC
	b _080AD8E8
_080AD7AC:
	ldr r1, [r4, #0]
	mov r2, r9
	lsls r0, r2, #1
	adds r0, #1
	strh r0, [r1, #8]
	ldr r0, _080AD7DC
	add r0, r9
	movs r2, #1
	strb r2, [r0, #0]
	movs r3, #0
	str r3, [sp, #0x40]
	ldr r0, [r4, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #9
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r3, _080AD7E0
	adds r0, r0, r3
	strb r2, [r0, #0]
	b _080AD836
_080AD7D8: .4byte gUnk_03000448
_080AD7DC: .4byte gUnk_030004C4
_080AD7E0: .4byte 0x000001FD
_080AD7E4:
	ldr r0, _080AD840
	adds r4, r7, r0
	ldr r0, [r4, #0]
	bl sub_0801A0B0
	ldr r0, [r4, #0]
	movs r1, #0xc0
	lsls r1, r1, #2
	bl sub_08095B04
	ldr r1, [sp, #0x40]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x40]
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	bls _080AD8E8
	movs r0, #0
	str r0, [sp, #0x40]
	ldr r0, _080AD844
	ldr r1, [r0, #0xc]
	add r0, sp, #0x10
	bl sub_08097F70
	ldr r0, _080AD848
	add r0, r9
	movs r1, #2
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0xa
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r2, _080AD84C
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0, #0]
_080AD836:
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0]
	bl sub_08068330
	b _080AD8E8
_080AD840: .4byte gUnk_03000448
_080AD844: .4byte gUnk_03000458
_080AD848: .4byte gUnk_030004C4
_080AD84C: .4byte 0x000001FD
_080AD850:
	ldr r0, [sp, #0x40]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x40]
	add r0, sp, #0x10
	movs r1, #4
	ldr r2, [sp, #0x40]
	movs r3, #0x3c
	bl sub_08096E20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x4c]
	cmp r0, #0
	beq _080AD8E8
	movs r3, #0
	str r3, [sp, #0x40]
	movs r2, #0
	movs r1, #1
	ldr r0, _080AD910
	movs r4, #1
	ldr r3, [r0, #0]
_080AD87E:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r4, #0
	lsls r0, r1
	ands r0, r3
	cmp r0, #0
	beq _080AD896
	lsls r0, r2, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r2, r0, #0x10
_080AD896:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _080AD87E
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	cmp r0, r9
	bne _080AD8B6
	ldr r0, _080AD914
	adds r0, r7, r0
	ldr r0, [r0, #0]
	bl sub_0801A0A4
_080AD8B6:
	ldr r0, _080AD918
	ldr r1, [r0, #0xc]
	add r0, sp, #0x10
	bl sub_08097F70
	ldr r0, _080AD91C
	add r0, r9
	movs r1, #0
	strb r1, [r0, #0]
	ldr r2, _080AD914
	adds r2, r7, r2
	ldr r0, [r2, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r0, r0, r3
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	ldr r1, _080AD920
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #0]
	bl sub_08068330
_080AD8E8:
	ldr r0, _080AD914
	adds r0, r7, r0
	ldr r0, [r0, #0]
	ldr r2, _080AD920
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080AD8FA
	b _080ADA02
_080AD8FA:
	ldr r0, _080AD924
	add r0, r9
	ldrb r0, [r0, #0]
	cmp r0, #7
	bhi _080AD978
	lsls r0, r0, #2
	ldr r1, _080AD928
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080AD910: .4byte gUnk_030056FC
_080AD914: .4byte gUnk_03000448
_080AD918: .4byte gUnk_03000458
_080AD91C: .4byte gUnk_030004C4
_080AD920: .4byte 0x000001FD
_080AD924: .4byte gUnk_030004B8
_080AD928: .4byte _080AD92C
_080AD92C:
	.4byte _080AD94C
_080AD930: .4byte _080AD952
_080AD934: .4byte _080AD958
_080AD938: .4byte _080AD95E
_080AD93C: .4byte _080AD962
_080AD940: .4byte _080AD968
_080AD944: .4byte _080AD96E
_080AD948: .4byte _080AD974
_080AD94C:
	movs r3, #4
	str r3, [sp, #0x48]
	b _080AD978
_080AD952:
	movs r0, #5
	str r0, [sp, #0x48]
	b _080AD978
_080AD958:
	movs r1, #6
	str r1, [sp, #0x48]
	b _080AD978
_080AD95E:
	movs r2, #7
	b _080AD976
_080AD962:
	movs r3, #0
	str r3, [sp, #0x48]
	b _080AD978
_080AD968:
	movs r0, #1
	str r0, [sp, #0x48]
	b _080AD978
_080AD96E:
	movs r1, #2
	str r1, [sp, #0x48]
	b _080AD978
_080AD974:
	movs r2, #3
_080AD976:
	str r2, [sp, #0x48]
_080AD978:
	ldr r5, _080AD9D8
	mov r0, r9
	lsls r3, r0, #3
	adds r6, r3, r5
	ldr r4, _080AD9DC
	ldr r0, _080AD9E0
	ldr r1, [sp, #0x48]
	lsls r2, r1, #1
	adds r2, r2, r0
	ldrh r0, [r2, #0]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	asrs r1, r0, #4
	ldr r0, [r6, #0]
	adds r0, r0, r1
	str r0, [r6, #0]
	adds r0, r5, #4
	adds r3, r3, r0
	ldrh r0, [r2, #0]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r1, r0, #1
	adds r1, r1, r0
	asrs r1, r1, #6
	ldr r0, [r3, #0]
	adds r0, r0, r1
	str r0, [r3, #0]
	mov r3, r9
	cmp r3, #0
	bne _080AD9E8
	ldr r0, _080AD9E4
	ldr r0, [r0, #0]
	ldr r1, [r5, #0]
	ldr r2, [r5, #4]
	movs r3, #0x90
	lsls r3, r3, #2
	movs r4, #4
	str r4, [sp, #0]
	movs r4, #1
	str r4, [sp, #4]
	bl sub_08097AC0
	b _080ADA02
_080AD9D8: .4byte gUnk_03000490
_080AD9DC: .4byte gUnk_080B9704
_080AD9E0: .4byte gUnk_085186DC
_080AD9E4: .4byte gUnk_03000448
_080AD9E8:
	ldr r0, _080ADA44
	adds r0, r7, r0
	ldr r0, [r0, #0]
	ldr r1, [r6, #0]
	ldr r2, [r6, #4]
	movs r3, #0x90
	lsls r3, r3, #2
	movs r4, #4
	str r4, [sp, #0]
	movs r4, #0
	str r4, [sp, #4]
	bl sub_08097AC0
_080ADA02:
	ldr r1, _080ADA48
	mov r0, r8
	lsls r2, r0, #3
	adds r4, r2, r1
	ldr r0, _080ADA44
	adds r0, r7, r0
	ldr r3, [r0, #0]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	str r0, [r4, #0]
	adds r1, #4
	adds r2, r2, r1
	ldr r0, [r3, #0x18]
	asrs r0, r0, #8
	str r0, [r2, #0]
	ldr r0, _080ADA4C
	add r0, r8
	ldrh r1, [r3, #8]
	strb r1, [r0, #0]
	ldr r2, _080ADA50
	ldr r1, _080ADA54
	ldrh r0, [r1, #0]
	strb r0, [r2, #0x1c]
	ldr r3, [sp, #0x4c]
	cmp r3, #0
	beq _080ADA58
	ldrh r0, [r1, #0]
	adds r0, #0x10
	ldr r1, [r2, #0xc]
	movs r2, #1
	bl sub_08000AF0
	b _080ADA64
_080ADA44: .4byte gUnk_03000448
_080ADA48: .4byte gUnk_03000490
_080ADA4C: .4byte gUnk_030004B8
_080ADA50: .4byte gUnk_03000458
_080ADA54: .4byte gUnk_030004BE
_080ADA58:
	ldrh r0, [r1, #0]
	adds r0, #0x10
	add r1, sp, #0x10
	movs r2, #1
	bl sub_08000AF0
_080ADA64:
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080ADA76
	bl sub_08097FF8
	b _080ADA90
_080ADA76:
	ldr r1, _080ADB38
	mov r0, r8
	lsls r2, r0, #3
	adds r0, r2, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	adds r1, #4
	adds r2, r2, r1
	ldr r1, [r2, #0]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080ADA90:
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	bl sub_0800CD8C
	adds r1, r0, #0
	cmp r1, #0
	bne _080ADABA
	ldr r0, _080ADB3C
	ldr r4, _080ADB40
	adds r4, r7, r4
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r1, [sp, #0]
	movs r1, #0x18
	bl sub_08065370
	ldr r1, [r4, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
_080ADABA:
	ldr r1, _080ADB38
	mov r3, r8
	lsls r2, r3, #3
	adds r0, r2, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, #4
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	bl sub_0800BC08
	mov r0, sl
	cmp r0, #0
	beq _080ADB48
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080ADB8C
	bl sub_0800CCCC
	cmp r0, #0
	bne _080ADB8C
	bl sub_0800CC98
	cmp r0, #0
	bne _080ADB8C
	bl sub_0800CD34
	cmp r0, #0
	bne _080ADB8C
	ldr r1, [sp, #0x58]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x5c]
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _080ADB40
	adds r2, r7, r2
	ldr r2, [r2, #0]
	adds r2, #0x6a
	ldrh r3, [r2, #0]
	str r6, [sp, #0]
	ldr r4, _080ADB44
	str r4, [sp, #4]
	subs r4, #0x1c
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4, #0]
	str r2, [sp, #0xc]
	movs r2, #0x18
	bl sub_08007870
	b _080ADB8C
_080ADB38: .4byte gUnk_03000490
_080ADB3C: .4byte gUnk_03000458
_080ADB40: .4byte gUnk_03000448
_080ADB44: .4byte gUnk_03000474
_080ADB48:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080ADB8C
	bl sub_0800CC98
	cmp r0, #0
	bne _080ADB8C
	bl sub_0800CD34
	cmp r0, #0
	bne _080ADB8C
	ldr r3, [sp, #0x58]
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldr r2, [sp, #0x5c]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r2, _080ADB9C
	adds r2, r7, r2
	ldr r2, [r2, #0]
	adds r2, #0x6a
	ldrh r3, [r2, #0]
	str r6, [sp, #0]
	ldr r4, _080ADBA0
	str r4, [sp, #4]
	subs r4, #0x1c
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4, #0]
	str r2, [sp, #0xc]
	movs r2, #0x18
	bl sub_08007870
_080ADB8C:
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _080ADBA4
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x54]
	b _080ADBB8
_080ADB9C: .4byte gUnk_03000448
_080ADBA0: .4byte gUnk_03000474
_080ADBA4:
	ldr r0, _080ADC28
	adds r0, r7, r0
	ldr r0, [r0, #0]
	bl sub_080ADE30
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080ADBB8
	movs r1, #0x1e
	str r1, [sp, #0x54]
_080ADBB8:
	ldr r0, _080ADC28
	adds r1, r7, r0
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x4c]
	cmp r1, #0
	beq _080ADBD4
	ldr r2, [sp, #0x38]
	cmp r2, r1
	beq _080ADBD4
	str r1, [sp, #0x38]
	movs r3, #0xa
	str r3, [sp, #0x3c]
	movs r1, #0
	str r1, [sp, #0x44]
_080ADBD4:
	ldr r2, [sp, #0x3c]
	cmp r2, #0
	beq _080ADC30
	bl sub_0800CC98
	cmp r0, #0
	bne _080ADC04
	bl sub_0800CCCC
	cmp r0, #0
	bne _080ADC04
	bl sub_0800CD34
	cmp r0, #0
	bne _080ADC04
	ldr r0, _080ADC28
	adds r0, r7, r0
	ldr r0, [r0, #0]
	ldr r3, [sp, #0x44]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	ldr r1, [sp, #0x38]
	bl sub_0801A120
_080ADC04:
	movs r0, #2
	ldr r1, [sp, #0x3c]
	ands r0, r1
	cmp r0, #0
	beq _080ADC1A
	ldr r2, [sp, #0x44]
	lsls r0, r2, #0x10
	ldr r3, _080ADC2C
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x44]
_080ADC1A:
	ldr r0, [sp, #0x3c]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x3c]
	b _080ADC3A
	.2byte 0x0000
_080ADC28: .4byte gUnk_03000448
_080ADC2C: .4byte 0xFFFF0000
_080ADC30:
	movs r1, #0
	str r1, [sp, #0x38]
	adds r0, r7, r0
	ldr r0, [r0, #0]
	str r1, [r0, #0x4c]
_080ADC3A:
	ldr r5, _080ADCC4
	adds r4, r7, r5
	ldr r0, [r4, #0]
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080ADC4E
	movs r2, #0
	str r2, [sp, #0x50]
_080ADC4E:
	bl sub_080003F0
	ldr r3, [sp, #0x50]
	cmp r3, #0
	beq _080ADC5A
	b _080AD6A4
_080ADC5A:
	ldr r0, [r4, #0]
	ldrh r0, [r0, #2]
	bl sub_08067CA8
	ldr r2, _080ADCC8
	ldr r0, [r4, #0]
	movs r1, #1
	ldrh r0, [r0, #0]
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	ldr r0, _080ADCCC
	add r0, r9
	movs r1, #0xff
	strb r1, [r0, #0]
	mov r0, r9
	cmp r0, #0
	beq _080ADC8C
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0, #0]
	bl sub_0801A0A4
_080ADC8C:
	movs r1, #0x14
	mov sl, r1
	ldr r5, _080ADCD0
	mov r2, r8
	lsls r2, r2, #3
	mov r8, r2
	ldr r0, _080ADCD4
	adds r0, #4
	add r0, r8
	mov r9, r0
_080ADCA0:
	ldr r1, _080ADCD8
	ldrh r0, [r1, #0]
	strb r0, [r5, #0x1c]
	ldrh r0, [r1, #0]
	adds r0, #0x10
	ldr r1, [r5, #0xc]
	movs r2, #1
	bl sub_08000AF0
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080ADCDC
	bl sub_08097FF8
	b _080ADCF0
_080ADCC4: .4byte gUnk_03000448
_080ADCC8: .4byte gUnk_030056FC
_080ADCCC: .4byte gUnk_030004C4
_080ADCD0: .4byte gUnk_03000458
_080ADCD4: .4byte gUnk_03000490
_080ADCD8: .4byte gUnk_030004BE
_080ADCDC:
	ldr r0, _080ADE10
	add r0, r8
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	mov r3, r9
	ldr r1, [r3, #0]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080ADCF0:
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	bl sub_0800CD8C
	cmp r0, #0
	bne _080ADD14
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r0, [sp, #0]
	ldr r0, _080ADE14
	movs r1, #0x18
	bl sub_08065370
	ldr r1, [r4, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
_080ADD14:
	ldr r0, _080ADE10
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r2, r9
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	bl sub_0800BC08
	bl sub_0800CCCC
	cmp r0, #0
	bne _080ADD80
	bl sub_0800CC98
	cmp r0, #0
	bne _080ADD80
	bl sub_0800CD8C
	cmp r0, #0
	bne _080ADD80
	bl sub_0800CD34
	cmp r0, #0
	bne _080ADD80
	movs r0, #1
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080ADD80
	ldr r2, [sp, #0x58]
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r2, [sp, #0x5c]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r2, [r4, #0]
	adds r2, #0x6a
	ldrh r3, [r2, #0]
	str r6, [sp, #0]
	ldr r2, _080ADE18
	str r2, [sp, #4]
	ldr r2, [r5, #8]
	str r2, [sp, #8]
	ldr r2, [r5, #0]
	str r2, [sp, #0xc]
	movs r2, #0x18
	bl sub_08007870
_080ADD80:
	bl sub_080003F0
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, _080ADE1C
	cmp sl, r0
	bne _080ADCA0
	bl sub_080020F4
	ldr r1, _080ADE20
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080ADE00
	ldr r0, _080ADE24
	adds r4, r7, r0
	ldr r0, [r4, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080ADE00
	ldr r0, _080ADE28
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x34]
	bl sub_0801E46C
	adds r5, r0, #0
	movs r7, #0x1d
	str r7, [sp, #0x44]
	movs r6, #1
	negs r6, r6
_080ADDD2:
	ldr r0, [r4, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r5, #0
	bl sub_0806171C
	bl sub_080003F0
	ldr r1, [sp, #0x44]
	lsls r0, r1, #0x10
	ldr r2, _080ADE2C
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x44]
	asrs r0, r0, #0x10
	cmp r0, r6
	bne _080ADDD2
	ldr r0, _080ADE28
	ldr r0, [r0, #0]
	adds r1, r5, #0
	bl sub_0801E4CC
_080ADE00:
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080ADE10: .4byte gUnk_03000490
_080ADE14: .4byte gUnk_03000458
_080ADE18: .4byte gUnk_03000474
_080ADE1C: .4byte 0x0000FFFF
_080ADE20: .4byte gUnk_03003CE0
_080ADE24: .4byte gUnk_03000448
_080ADE28: .4byte gUnk_030034E0
_080ADE2C: .4byte 0xFFFF0000
	thumb_func_end sub_080AD534
