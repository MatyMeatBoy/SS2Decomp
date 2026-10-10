	thumb_func_start sub_08060E44
sub_08060E44: @ 0x08060E44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	str r0, [sp, #0x20]
	ldr r0, _08060E80
	ldr r0, [r0, #0]
	str r0, [sp, #0x24]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08060E84
	adds r1, r1, r0
	str r1, [sp, #0x28]
	movs r0, #1
	str r0, [sp, #0x34]
	adds r0, r1, #0
	adds r0, #0x77
	ldrb r0, [r0, #0]
	str r0, [sp, #0x38]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0, #0]
	str r0, [sp, #0x3c]
	b _0806164E
	.2byte 0x0000
_08060E80: .4byte gUnk_030034E0
_08060E84: .4byte gUnk_03003CE0
_08060E88:
	ldr r1, [sp, #0x20]
	cmp r1, #0
	beq _08060EB8
	ldr r0, _08060EC8
	bl sub_080003F4
	ldr r0, [sp, #0x24]
	adds r0, #0x54
	ldrh r0, [r0, #0]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x5a
	bl sub_0805865C
	bl sub_080003F0
	bl sub_0800CB78
	cmp r0, #0
	beq _08060EB8
	b _08061658
_08060EB8:
	movs r2, #8
	str r2, [sp, #0x2c]
	movs r3, #0x3c
	str r3, [sp, #0x30]
	ldr r0, _08060ECC
	str r0, [sp, #0x40]
	b _08061302
	.2byte 0x0000
_08060EC8: .4byte 0x00018A93
_08060ECC: .4byte gUnk_03005740
_08060ED0:
	ldr r0, _0806102C
	add r0, r9
	lsrs r1, r0, #0x10
	str r1, [sp, #0x2c]
	cmp r0, #0
	bge _08060EE0
	movs r2, #0
	str r2, [sp, #0x2c]
_08060EE0:
	ldr r0, _08061030
	ldrh r2, [r0, #0]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08060EF4
	movs r0, #1
	str r0, [sp, #0x34]
_08060EF4:
	ldr r0, [sp, #0x28]
	adds r0, #0x77
	ldrb r0, [r0, #0]
	ldr r1, [sp, #0x38]
	cmp r1, r0
	beq _08060F06
	str r0, [sp, #0x38]
	movs r0, #1
	str r0, [sp, #0x34]
_08060F06:
	ldr r0, [sp, #0x28]
	adds r0, #0x78
	ldrb r1, [r0, #0]
	mov r8, r0
	ldr r0, [sp, #0x3c]
	cmp r0, r1
	beq _08060F1A
	str r1, [sp, #0x3c]
	movs r1, #1
	str r1, [sp, #0x34]
_08060F1A:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r2
	ldr r2, [sp, #0x24]
	adds r2, #0x54
	str r2, [sp, #0x50]
	cmp r0, #0
	beq _08060F78
	ldrh r0, [r2, #0]
	adds r0, #1
	strh r0, [r2, #0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r8
	ldrb r1, [r1, #0]
	cmp r0, r1
	blo _08060F40
	strh r3, [r2, #0]
_08060F40:
	ldr r2, [sp, #0x28]
	strh r3, [r2, #0x26]
	strh r3, [r2, #0x24]
	ldrh r0, [r2, #0x20]
	cmp r0, #7
	bne _08060F50
	movs r0, #1
	strh r0, [r2, #0x20]
_08060F50:
	ldr r1, [sp, #0x28]
	ldrh r0, [r1, #0x20]
	cmp r0, #6
	bne _08060F5A
	strh r3, [r1, #0x20]
_08060F5A:
	ldr r2, [sp, #0x50]
	ldrh r0, [r2, #0]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x5a
	bl sub_0805865C
	ldr r3, [sp, #0x20]
	cmp r3, #0
	beq _08060F7E
	movs r0, #0x3c
	str r0, [sp, #0x30]
_08060F78:
	ldr r1, [sp, #0x20]
	cmp r1, #0
	bne _08060F86
_08060F7E:
	ldr r2, [sp, #0x34]
	cmp r2, #0
	bne _08060F86
	b _080610F8
_08060F86:
	movs r0, #2
	movs r1, #4
	bl sub_0801A664
	movs r3, #0
	ldr r1, [sp, #0x2c]
	lsls r0, r1, #0x10
	adds r5, r0, #0
	asrs r0, r5, #0x10
	mov r9, r5
	cmp r0, #7
	bgt _08060FFE
	ldr r2, _08061034
	mov ip, r2
	ldr r6, _08061038
	movs r0, #0xa0
	lsls r0, r0, #1
	add r0, ip
	mov sl, r0
	adds r7, r6, #0
	adds r7, #0x30
_08060FB0:
	asrs r5, r5, #0x10
	adds r2, r5, #0
	adds r2, #0x16
	lsls r2, r2, #1
	mov r1, ip
	adds r1, #0x80
	adds r1, r2, r1
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsls r4, r3, #1
	adds r0, r4, r6
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	ldr r0, _0806103C
	adds r1, r2, r0
	adds r0, r6, #0
	adds r0, #0x10
	adds r0, r4, r0
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	ldr r0, _08061040
	adds r1, r2, r0
	adds r0, r6, #0
	adds r0, #0x20
	adds r0, r4, r0
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	add r2, sl
	adds r4, r4, r7
	ldrh r0, [r4, #0]
	strh r0, [r2, #0]
	adds r5, #1
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r5, r5, #0x10
	asrs r0, r5, #0x10
	cmp r0, #7
	ble _08060FB0
_08060FFE:
	mov r2, r8
	ldrb r1, [r2, #0]
	subs r0, r1, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08061070
	ldr r3, [sp, #0x50]
	ldrh r0, [r3, #0]
	cmp r0, #2
	bhi _0806104C
	mov r0, r9
	asrs r2, r0, #0xf
	adds r2, #0x2a
	ldr r0, [sp, #0x40]
	adds r0, #0x80
	adds r0, r2, r0
	ldr r1, _08061044
	strh r1, [r0, #0]
	ldr r1, _0806103C
	adds r2, r2, r1
	ldr r0, _08061048
	b _080610EA
_0806102C: .4byte 0xFFFE0000
_08061030: .4byte gUnk_03001324
_08061034: .4byte gUnk_03005740
_08061038: .4byte gUnk_084EBDC8
_0806103C: .4byte gUnk_03005800
_08061040: .4byte gUnk_03005840
_08061044: .4byte 0x0000F037
_08061048: .4byte 0x0000F057
_0806104C:
	mov r3, r9
	asrs r2, r3, #0xf
	adds r2, #0x2a
	ldr r0, [sp, #0x40]
	adds r0, #0x80
	adds r0, r2, r0
	ldr r1, _08061064
	strh r1, [r0, #0]
	ldr r0, _08061068
	adds r2, r2, r0
	ldr r0, _0806106C
	b _080610EA
_08061064: .4byte 0x0000F038
_08061068: .4byte gUnk_03005800
_0806106C: .4byte 0x0000F058
_08061070:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080610EC
	ldr r1, [sp, #0x50]
	ldrh r0, [r1, #0]
	cmp r0, #2
	bhi _080610A4
	mov r3, r9
	asrs r2, r3, #0xf
	adds r2, #0x2a
	ldr r0, [sp, #0x40]
	adds r0, #0x80
	adds r0, r2, r0
	ldr r1, _08061098
	strh r1, [r0, #0]
	ldr r0, _0806109C
	adds r1, r2, r0
	ldr r0, _080610A0
	b _080610E2
_08061098: .4byte 0x0000F039
_0806109C: .4byte gUnk_03005800
_080610A0: .4byte 0x0000F059
_080610A4:
	cmp r0, #5
	bhi _080610CC
	mov r3, r9
	asrs r2, r3, #0xf
	adds r2, #0x2a
	ldr r0, [sp, #0x40]
	adds r0, #0x80
	adds r0, r2, r0
	ldr r1, _080610C0
	strh r1, [r0, #0]
	ldr r0, _080610C4
	adds r1, r2, r0
	ldr r0, _080610C8
	b _080610E2
_080610C0: .4byte 0x0000F03A
_080610C4: .4byte gUnk_03005800
_080610C8: .4byte 0x0000F05A
_080610CC:
	mov r3, r9
	asrs r2, r3, #0xf
	adds r2, #0x2a
	ldr r0, [sp, #0x40]
	adds r0, #0x80
	adds r0, r2, r0
	ldr r1, _0806132C
	strh r1, [r0, #0]
	ldr r0, _08061330
	adds r1, r2, r0
	ldr r0, _08061334
_080610E2:
	strh r0, [r1, #0]
	ldr r1, _08061338
	adds r2, r2, r1
	adds r0, #0x20
_080610EA:
	strh r0, [r2, #0]
_080610EC:
	ldr r2, [sp, #0x2c]
	lsls r0, r2, #0x10
	cmp r0, #0
	bgt _080610F8
	movs r3, #0
	str r3, [sp, #0x34]
_080610F8:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _08061106
	movs r1, #0x3c
	str r1, [sp, #0x30]
	movs r2, #0
	str r2, [sp, #0x2c]
_08061106:
	ldr r3, [sp, #0x50]
	ldrh r0, [r3, #0]
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	movs r2, #0xc0
	lsls r2, r2, #0xa
	adds r0, r1, r2
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r3, [sp, #0x2c]
	lsls r3, r3, #0x10
	mov r9, r3
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _08061218
	lsrs r2, r1, #0x10
	lsls r1, r2, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	str r0, [sp, #0x4c]
	cmp r1, r0
	bge _08061212
	str r4, [sp, #0x44]
_08061142:
	asrs r0, r1, #0xf
	ldr r1, [sp, #0x24]
	adds r1, #0x56
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	lsls r2, r2, #0x10
	str r2, [sp, #0x48]
	cmp r0, #0
	beq _080611FE
	ldrh r0, [r1, #0]
	subs r6, r0, #1
	add r0, sp, #0x10
	mov r8, r0
	add r1, sp, #0x10
	movs r0, #1
	strh r0, [r1, #0]
	adds r0, r1, #0
	strh r6, [r0, #2]
	movs r7, #0
	movs r3, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	mov ip, r1
_08061170:
	lsls r0, r3, #0x10
	asrs r5, r0, #0xc
	ldr r2, [sp, #0x24]
	adds r4, r2, r5
	mov r3, ip
	adds r1, r4, r3
	ldrh r1, [r1, #0]
	adds r2, r0, #0
	cmp r1, #1
	bne _080611A4
	movs r1, #0xa9
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r0, [r0, #0]
	cmp r6, r0
	bne _080611A4
	lsls r0, r7, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r7, r0, #0x10
	mov r1, ip
	adds r0, r5, r1
	ldr r3, [sp, #0x24]
	adds r3, r3, r0
	mov r8, r3
_080611A4:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _08061170
	ldr r2, [sp, #0x48]
	asrs r4, r2, #0x10
	adds r4, #1
	ldr r3, [sp, #0x44]
	subs r4, r3, r4
	lsls r4, r4, #2
	ldr r0, _0806133C
	adds r6, r4, r0
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r0, #0xf0
	mov r2, r9
	asrs r1, r2, #0x10
	movs r5, #7
	subs r5, r5, r1
	lsls r5, r5, #3
	subs r0, r0, r5
	ldr r3, _08061340
	adds r4, r4, r3
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r1, #0x18
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	movs r3, #0
	bl sub_0805FAC0
	movs r3, #0
	ldrsh r0, [r6, r3]
	adds r0, #0xf0
	subs r0, r0, r5
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r1, #0x10
	mov r2, r8
	movs r3, #0
	bl sub_0805FC80
_080611FE:
	ldr r3, [sp, #0x48]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r3, r1
	lsrs r2, r0, #0x10
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	ldr r3, [sp, #0x44]
	cmp r0, r3
	blt _08061142
_08061212:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _08061240
_08061218:
	ldr r2, _08061344
	ldr r0, [r2, #0]
	ldr r1, [r0, #0x28]
	movs r0, #1
	ands r1, r0
	mov r3, sl
	lsls r3, r3, #0x10
	str r3, [sp, #0x4c]
	cmp r1, #0
	beq _08061240
	str r0, [sp, #0x34]
	adds r4, r2, #0
_08061230:
	bl sub_080003F0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x28]
	ldr r1, [sp, #0x34]
	ands r0, r1
	cmp r0, #0
	bne _08061230
_08061240:
	ldr r3, [sp, #0x4c]
	asrs r2, r3, #0x10
	ldr r1, [sp, #0x50]
	ldrh r0, [r1, #0]
	adds r0, #1
	subs r2, r2, r0
	lsls r2, r2, #2
	ldr r3, _0806133C
	adds r0, r2, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r1, r9
	asrs r3, r1, #0x10
	movs r1, #7
	subs r1, r1, r3
	lsls r1, r1, #3
	subs r0, r0, r1
	ldr r3, _08061340
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r3, _08061348
	adds r0, #0xf1
	adds r1, #0x10
	movs r2, #0
	str r2, [sp, #0]
	adds r2, r3, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3, #0]
	str r2, [sp, #0xc]
	movs r2, #7
	movs r3, #0
	bl sub_08007CF0
	bl sub_080003F0
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _080612F8
	bl sub_08058DB0
	cmp r0, #0
	beq _0806129E
	b _08061608
_0806129E:
	bl sub_0800D11C
	cmp r0, #0
	beq _080612A8
	b _08061608
_080612A8:
	bl sub_0800CC98
	cmp r0, #0
	beq _080612B2
	b _08061608
_080612B2:
	bl sub_08056E90
	cmp r0, #0
	beq _080612BC
	b _08061608
_080612BC:
	bl sub_0800D060
	cmp r0, #0
	beq _080612C6
	b _08061608
_080612C6:
	ldr r1, [sp, #0x28]
	ldr r0, [r1, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080612D6
	b _08061608
_080612D6:
	ldr r2, [sp, #0x28]
	ldrh r0, [r2, #0x20]
	cmp r0, #0xc
	bne _080612E0
	b _08061608
_080612E0:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080612F8
	ldr r0, _0806134C
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080612F8
	b _08061608
_080612F8:
	bl sub_0800CD34
	cmp r0, #0
	beq _08061302
	b _08061608
_08061302:
	ldr r1, [sp, #0x30]
	lsls r0, r1, #0x10
	ldr r3, _08061350
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	lsls r1, r1, #0x10
	ldr r0, [sp, #0x2c]
	lsls r0, r0, #0x10
	mov r9, r0
	cmp r1, #0
	bgt _0806131C
	b _08061608
_0806131C:
	bl sub_0800CB78
	adds r3, r0, #0
	cmp r3, #0
	bne _08061328
	b _08060ED0
_08061328:
	b _08061608
	.2byte 0x0000
_0806132C: .4byte 0x0000F03B
_08061330: .4byte gUnk_03005800
_08061334: .4byte 0x0000F05B
_08061338: .4byte gUnk_03005840
_0806133C: .4byte gUnk_084EBE08
_08061340: .4byte gUnk_084EBE0A
_08061344: .4byte gUnk_03006440
_08061348: .4byte gUnk_03005D80
_0806134C: .4byte gUnk_03005CF4
_08061350: .4byte 0xFFFF0000
_08061354:
	ldr r1, [sp, #0x28]
	ldr r0, [r1, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08061364
	b _08061642
_08061364:
	ldr r2, [sp, #0x28]
	ldrh r0, [r2, #0x20]
	cmp r0, #0xc
	bne _0806136E
	b _08061642
_0806136E:
	bl sub_0800CCCC
	cmp r0, #0
	bne _08061386
	ldr r0, _08061454
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08061386
	b _08061642
_08061386:
	bl sub_0800CD34
	cmp r0, #0
	beq _08061390
	b _08061642
_08061390:
	ldr r3, [sp, #0x2c]
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0x2c]
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _080613A8
	movs r3, #8
	str r3, [sp, #0x2c]
_080613A8:
	movs r3, #0
	ldr r1, [sp, #0x2c]
	lsls r0, r1, #0x10
	adds r5, r0, #0
	asrs r0, r5, #0x10
	ldr r2, [sp, #0x28]
	adds r2, #0x78
	mov r8, r2
	ldr r1, [sp, #0x24]
	adds r1, #0x54
	str r1, [sp, #0x50]
	mov r9, r5
	cmp r0, #7
	bgt _0806141E
	ldr r6, _08061458
	ldr r7, _0806145C
	movs r2, #0x40
	adds r2, r2, r7
	mov ip, r2
	movs r0, #0x30
	adds r0, r0, r6
	mov sl, r0
_080613D4:
	asrs r5, r5, #0x10
	adds r1, r5, #0
	adds r1, #0x16
	lsls r1, r1, #1
	ldr r2, _08061460
	adds r4, r1, r2
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	lsls r3, r2, #1
	adds r0, r3, r6
	ldrh r0, [r0, #0]
	strh r0, [r4, #0]
	ldr r0, _08061464
	adds r4, r1, r0
	adds r0, r6, #0
	adds r0, #0x10
	adds r0, r3, r0
	ldrh r0, [r0, #0]
	strh r0, [r4, #0]
	adds r4, r1, r7
	adds r0, r6, #0
	adds r0, #0x20
	adds r0, r3, r0
	ldrh r0, [r0, #0]
	strh r0, [r4, #0]
	add r1, ip
	add r3, sl
	ldrh r0, [r3, #0]
	strh r0, [r1, #0]
	adds r5, #1
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	lsls r5, r5, #0x10
	asrs r0, r5, #0x10
	cmp r0, #7
	ble _080613D4
_0806141E:
	movs r0, #2
	movs r1, #4
	bl sub_0801A664
	mov r2, r8
	ldrb r1, [r2, #0]
	subs r0, r1, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08061498
	ldr r3, [sp, #0x50]
	ldrh r0, [r3, #0]
	cmp r0, #2
	bhi _08061470
	mov r1, r9
	asrs r0, r1, #0xf
	adds r0, #0x2a
	ldr r3, _08061460
	adds r2, r0, r3
	ldr r1, _08061468
	strh r1, [r2, #0]
	ldr r1, _08061464
	adds r0, r0, r1
	ldr r1, _0806146C
	strh r1, [r0, #0]
	b _08061532
_08061454: .4byte gUnk_03005CF4
_08061458: .4byte gUnk_084EBDC8
_0806145C: .4byte gUnk_03005840
_08061460: .4byte gUnk_030057C0
_08061464: .4byte gUnk_03005800
_08061468: .4byte 0x0000F037
_0806146C: .4byte 0x0000F057
_08061470:
	mov r2, r9
	asrs r0, r2, #0xf
	adds r0, #0x2a
	ldr r3, _08061488
	adds r2, r0, r3
	ldr r1, _0806148C
	strh r1, [r2, #0]
	ldr r1, _08061490
	adds r0, r0, r1
	ldr r1, _08061494
	strh r1, [r0, #0]
	b _08061532
_08061488: .4byte gUnk_030057C0
_0806148C: .4byte 0x0000F038
_08061490: .4byte gUnk_03005800
_08061494: .4byte 0x0000F058
_08061498:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _08061532
	ldr r2, [sp, #0x50]
	ldrh r0, [r2, #0]
	cmp r0, #2
	bhi _080614DC
	mov r3, r9
	asrs r1, r3, #0xf
	adds r1, #0x2a
	ldr r0, _080614C8
	adds r2, r1, r0
	ldr r0, _080614CC
	strh r0, [r2, #0]
	ldr r3, _080614D0
	adds r2, r1, r3
	adds r0, #0x20
	strh r0, [r2, #0]
	ldr r0, _080614D4
	adds r1, r1, r0
	ldr r0, _080614D8
	b _08061530
	.2byte 0x0000
_080614C8: .4byte gUnk_030057C0
_080614CC: .4byte 0x0000F039
_080614D0: .4byte gUnk_03005800
_080614D4: .4byte gUnk_03005840
_080614D8: .4byte 0x0000F079
_080614DC:
	cmp r0, #5
	bhi _08061514
	mov r2, r9
	asrs r1, r2, #0xf
	adds r1, #0x2a
	ldr r3, _08061500
	adds r2, r1, r3
	ldr r0, _08061504
	strh r0, [r2, #0]
	ldr r0, _08061508
	adds r2, r1, r0
	ldr r0, _0806150C
	strh r0, [r2, #0]
	ldr r2, _08061510
	adds r1, r1, r2
	adds r0, #0x20
	b _08061530
	.2byte 0x0000
_08061500: .4byte gUnk_030057C0
_08061504: .4byte 0x0000F03A
_08061508: .4byte gUnk_03005800
_0806150C: .4byte 0x0000F05A
_08061510: .4byte gUnk_03005840
_08061514:
	mov r3, r9
	asrs r1, r3, #0xf
	adds r1, #0x2a
	ldr r0, _08061668
	adds r2, r1, r0
	ldr r0, _0806166C
	strh r0, [r2, #0]
	ldr r3, _08061670
	adds r2, r1, r3
	adds r0, #0x20
	strh r0, [r2, #0]
	ldr r0, _08061674
	adds r1, r1, r0
	ldr r0, _08061678
_08061530:
	strh r0, [r1, #0]
_08061532:
	ldr r1, [sp, #0x50]
	ldrh r0, [r1, #0]
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	movs r2, #0xc0
	lsls r2, r2, #0xa
	adds r0, r1, r2
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r3, r1, #0
	lsls r2, r0, #0x10
	cmp r3, r2
	bge _080615B4
	ldr r6, _0806167C
	mov r0, r9
	asrs r1, r0, #0x10
	adds r7, r6, #2
	movs r0, #7
	subs r0, r0, r1
	lsls r5, r0, #3
_08061566:
	asrs r4, r3, #0x10
	lsls r0, r4, #1
	ldr r1, [sp, #0x24]
	adds r1, #0x56
	adds r3, r1, r0
	ldrh r0, [r3, #0]
	cmp r0, #0
	beq _080615A8
	asrs r2, r2, #0x10
	adds r0, r4, #1
	subs r2, r2, r0
	movs r1, #2
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r0, r1, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #0xf0
	subs r0, r0, r5
	adds r1, r1, r7
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r1, #0x10
	ldrh r2, [r3, #0]
	lsls r2, r2, #4
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r2, r2, r3
	ldr r3, [sp, #0x24]
	adds r2, r3, r2
	movs r3, #0
	bl sub_0805FC80
_080615A8:
	adds r0, r4, #1
	lsls r3, r0, #0x10
	mov r0, sl
	lsls r2, r0, #0x10
	cmp r3, r2
	blt _08061566
_080615B4:
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp, #0x50]
	ldrh r0, [r3, #0]
	adds r0, #1
	subs r1, r1, r0
	movs r2, #2
	subs r2, r2, r1
	lsls r2, r2, #2
	ldr r1, _0806167C
	adds r0, r2, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0xf0
	mov r1, r9
	asrs r3, r1, #0x10
	movs r1, #7
	subs r1, r1, r3
	lsls r1, r1, #3
	subs r0, r0, r1
	ldr r3, _08061680
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r3, _08061684
	adds r1, #0x10
	movs r2, #0
	str r2, [sp, #0]
	adds r2, r3, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3, #0]
	str r2, [sp, #0xc]
	movs r2, #7
	movs r3, #0
	bl sub_08007CF0
	bl sub_080003F0
_08061608:
	mov r1, r9
	asrs r0, r1, #0x10
	cmp r0, #7
	bgt _08061642
	ldr r2, [sp, #0x20]
	cmp r2, #0
	bne _08061618
	b _08061386
_08061618:
	bl sub_08058DB0
	cmp r0, #0
	bne _08061642
	bl sub_0800D11C
	cmp r0, #0
	bne _08061642
	bl sub_0800CC98
	cmp r0, #0
	bne _08061642
	bl sub_08056E90
	cmp r0, #0
	bne _08061642
	bl sub_0800D060
	cmp r0, #0
	bne _08061642
	b _08061354
_08061642:
	bl sub_080003F0
	movs r0, #2
	movs r1, #4
	bl sub_0801A664
_0806164E:
	bl sub_0800CB78
	cmp r0, #0
	bne _08061658
	b _08060E88
_08061658:
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08061668: .4byte gUnk_030057C0
_0806166C: .4byte 0x0000F03B
_08061670: .4byte gUnk_03005800
_08061674: .4byte gUnk_03005840
_08061678: .4byte 0x0000F07B
_0806167C: .4byte gUnk_084EBE08
_08061680: .4byte gUnk_084EBE0A
_08061684: .4byte gUnk_03005D80
	thumb_func_end sub_08060E44
