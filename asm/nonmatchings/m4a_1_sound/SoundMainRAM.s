	thumb_func_start SoundMainRAM
SoundMainRAM: @ 0x080B656C
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq _080B65CC
	adr r1, _080B6578
	bx r1
	.2byte 0x0000
_080B6578:
	.4byte 0xE3540002
	.4byte 0x02807E35
	.4byte 0x10857008
	.4byte 0xE1A04008
	.4byte 0xE19500D6
	.4byte 0xE1D510D0
	.4byte 0xE0800001
	.4byte 0xE19710D6
	.4byte 0xE0800001
	.4byte 0xE0D710D1
	.4byte 0xE0800001
	.4byte 0xE0010390
	.4byte 0xE1A004C1
	.4byte 0xE3100080
	.4byte 0x12800001
	.4byte 0xE7C50006
	.4byte 0xE4C50001
	.4byte 0xE2544001
	.4byte 0xCAFFFFF0
	.4byte 0xE28F002F
	.4byte 0xE12FFF10
_080B65CC:
	movs r0, #0
	mov r1, r8
	adds r6, r6, r5
	lsrs r1, r1, #3
	blo _080B65DA
	stm r5!, {r0}
	stm r6!, {r0}
_080B65DA:
	lsrs r1, r1, #1
	blo _080B65E6
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
_080B65E6:
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	subs r1, #1
	bgt _080B65E6
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_080B6604:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _080B6624
	ldr r1, _080B6620
	ldrb r1, [r1, #0]
	cmp r1, #0xa0
	bhs _080B6618
	adds r1, #0xe4
_080B6618:
	cmp r1, r0
	blo _080B6624
	b _080B68F6
	.2byte 0x0000
_080B6620: .4byte 0x04000006
_080B6624:
	ldrb r6, [r4, #0]
	movs r0, #0xc7
	tst r0, r6
	bne _080B662E
	b _080B68EC
_080B662E:
	movs r0, #0x80
	tst r0, r6
	beq _080B665E
	movs r0, #0x40
	tst r0, r6
	bne _080B666E
	movs r6, #3
	strb r6, [r4, #0]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0x18]
	movs r5, #0
	strb r5, [r4, #9]
	str r5, [r4, #0x1c]
	ldrb r2, [r3, #3]
	movs r0, #0xc0
	tst r0, r2
	beq _080B66B6
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4, #0]
	b _080B66B6
_080B665E:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _080B6674
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _080B66C4
_080B666E:
	movs r0, #0
	strb r0, [r4, #0]
	b _080B68EC
_080B6674:
	movs r0, #0x40
	tst r0, r6
	beq _080B6694
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _080B66C4
_080B6686:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _080B666E
	movs r0, #4
	orrs r6, r0
	strb r6, [r4, #0]
	b _080B66C4
_080B6694:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _080B66B2
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _080B66C4
	adds r5, r0, #0
	beq _080B6686
	subs r6, #1
	strb r6, [r4, #0]
	b _080B66C4
_080B66B2:
	cmp r2, #3
	bne _080B66C4
_080B66B6:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _080B66C4
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4, #0]
_080B66C4:
	strb r5, [r4, #9]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #7]
	adds r0, #1
	muls r0, r5, r0
	lsrs r5, r0, #4
	ldrb r0, [r4, #2]
	muls r0, r5, r0
	lsrs r0, r0, #8
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #3]
	muls r0, r5, r0
	lsrs r0, r0, #8
	strb r0, [r4, #0xb]
	movs r0, #0x10
	ands r0, r6
	str r0, [sp, #0x10]
	beq _080B66F8
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_080B66F8:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	adr r0, _080B6704
	bx r0
	.2byte 0x0000
_080B6704:
	.4byte 0xE58D8000
	.4byte 0xE5D4A00A
	.4byte 0xE1A0A80A
	.4byte 0xE5D4B00B
	.4byte 0xE1A0B80B
	.4byte 0xE5D40001
	.4byte 0xE3100008
	.4byte 0x0A000047
	.4byte 0xE3520004
	.4byte 0xDA000019
	.4byte 0xE0522008
	.4byte 0xC3A0E000
	.4byte 0xCA000005
	.4byte 0xE1A0E008
	.4byte 0xE0822008
	.4byte 0xE2428004
	.4byte 0xE04EE008
	.4byte 0xE2122003
	.4byte 0x03A02004
	.4byte 0xE5956000
	.4byte 0xE5957630
	.4byte 0xE0D300D1
	.4byte 0xE001009A
	.4byte 0xE3C118FF
	.4byte 0xE0816466
	.4byte 0xE001009B
	.4byte 0xE3C118FF
	.4byte 0xE0817467
	.4byte 0xE2955101
	.4byte 0x3AFFFFF6
	.4byte 0xE5857630
	.4byte 0xE4856004
	.4byte 0xE2588004
	.4byte 0xCAFFFFF0
	.4byte 0xE098800E
	.4byte 0x0A000050
	.4byte 0xE5956000
	.4byte 0xE5957630
	.4byte 0xE0D300D1
	.4byte 0xE001009A
	.4byte 0xE3C118FF
	.4byte 0xE0816466
	.4byte 0xE001009B
	.4byte 0xE3C118FF
	.4byte 0xE0817467
	.4byte 0xE2522001
	.4byte 0x0A000012
	.4byte 0xE2955101
	.4byte 0x3AFFFFF4
	.4byte 0xE5857630
	.4byte 0xE4856004
	.4byte 0xE2588004
	.4byte 0xCAFFFFD2
	.4byte 0xEA00003E
	.4byte 0xE59D0018
	.4byte 0xE3500000
	.4byte 0x0A000005
	.4byte 0xE59D3014
	.4byte 0xE2629000
	.4byte 0xE0902002
	.4byte 0xCA00002B
	.4byte 0xE0499000
	.4byte 0xEAFFFFFB
	.4byte 0xE8BD1010
	.4byte 0xE3A02000
	.4byte 0xEA000003
	.4byte 0xE59D2010
	.4byte 0xE3520000
	.4byte 0x159D300C
	.4byte 0x1AFFFFE8
	.4byte 0xE5C42000
	.4byte 0xE1A00F25
	.4byte 0xE3C55103
	.4byte 0xE2600003
	.4byte 0xE1A00180
	.4byte 0xE1A06076
	.4byte 0xE1A07077
	.4byte 0xE5857630
	.4byte 0xE4856004
	.4byte 0xEA000026
	.4byte 0xE92D1010
	.4byte 0xE594E01C
	.4byte 0xE5941020
	.4byte 0xE004019C
	.4byte 0xE1D300D0
	.4byte 0xE1F310D1
	.4byte 0xE0411000
	.4byte 0xE5956000
	.4byte 0xE5957630
	.4byte 0xE009019E
	.4byte 0xE0809BC9
	.4byte 0xE00C099A
	.4byte 0xE3CCC8FF
	.4byte 0xE08C6466
	.4byte 0xE00C099B
	.4byte 0xE3CCC8FF
	.4byte 0xE08C7467
	.4byte 0xE08EE004
	.4byte 0xE1B09BAE
	.4byte 0x0A000007
	.4byte 0xE3CEE5FE
	.4byte 0xE0522009
	.4byte 0xDAFFFFCE
	.4byte 0xE2599001
	.4byte 0x00800001
	.4byte 0x11B300D9
	.4byte 0xE1F310D1
	.4byte 0xE0411000
	.4byte 0xE2955101
	.4byte 0x3AFFFFEA
	.4byte 0xE5857630
	.4byte 0xE4856004
	.4byte 0xE2588004
	.4byte 0xCAFFFFE4
	.4byte 0xE2433001
	.4byte 0xE8BD1010
	.4byte 0xE584E01C
	.4byte 0xE5842018
	.4byte 0xE5843028
	.4byte 0xE59D8000
	.4byte 0xE28F0001
	.4byte 0xE12FFF10
_080B68EC:
	ldr r0, [sp, #4]
	subs r0, #1
	ble _080B68F6
	adds r4, #0x40
	b _080B6604
_080B68F6:
	ldr r0, [sp, #0x18]
	ldr r3, _080B690C
	str r3, [r0, #0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov r9, r1
	mov sl, r2
	mov fp, r3
	pop {r3}
	.global _080B690A
_080B690A:
	bx r3
_080B690C: .4byte 0x68736D53
	thumb_func_end SoundMainRAM
