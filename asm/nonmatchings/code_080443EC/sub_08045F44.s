	thumb_func_start sub_08045F44
sub_08045F44: @ 0x08045F44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	adds r7, r0, #0
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _08045F88
	adds r2, r2, r4
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_080020F4
	muls r0, r5, r0
	adds r4, #0x8c
	adds r0, r0, r4
	ldr r0, [r0, #0]
	asrs r6, r0, #8
	ldr r0, _08045F8C
	cmp r6, r0
	ble _08045F90
	adds r0, r7, #0
	movs r1, #6
	bl sub_08029174
	b _08045F98
_08045F88: .4byte gUnk_03003CE0
_08045F8C: .4byte 0x000001E7
_08045F90:
	adds r0, r7, #0
	movs r1, #2
	bl sub_08029174
_08045F98:
	bl sub_0800CE30
	cmp r0, #0
	beq _08045FB4
	ldr r0, _08045FAC
	ldr r0, [r0, #0]
	ldr r1, _08045FB0
	adds r0, r0, r1
	b _08045FBC
	.2byte 0x0000
_08045FAC: .4byte gUnk_03005CF4
_08045FB0: .4byte 0x000001C7
_08045FB4:
	ldr r0, _08045FD8
	ldr r0, [r0, #0]
	ldr r3, _08045FDC
	adds r0, r0, r3
_08045FBC:
	ldrb r0, [r0, #0]
	asrs r6, r0, #2
	movs r0, #1
	ands r6, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _08045FE4
	ldr r0, _08045FD8
	ldr r0, [r0, #0]
	ldr r4, _08045FE0
	adds r0, r0, r4
	b _08045FEC
	.2byte 0x0000
_08045FD8: .4byte gUnk_03005CF4
_08045FDC: .4byte 0x000001BB
_08045FE0: .4byte 0x000001C7
_08045FE4:
	ldr r0, _08046008
	ldr r0, [r0, #0]
	ldr r1, _0804600C
	adds r0, r0, r1
_08045FEC:
	ldrb r0, [r0, #0]
	asrs r5, r0, #3
	movs r0, #1
	ands r5, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _08046014
	ldr r0, _08046008
	ldr r0, [r0, #0]
	ldr r3, _08046010
	adds r0, r0, r3
	b _0804601C
	.2byte 0x0000
_08046008: .4byte gUnk_03005CF4
_0804600C: .4byte 0x000001BB
_08046010: .4byte 0x000001C7
_08046014:
	ldr r0, _08046038
	ldr r0, [r0, #0]
	ldr r4, _0804603C
	adds r0, r0, r4
_0804601C:
	ldrb r0, [r0, #0]
	asrs r4, r0, #4
	movs r0, #1
	ands r4, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _08046044
	ldr r0, _08046038
	ldr r0, [r0, #0]
	ldr r1, _08046040
	adds r0, r0, r1
	b _0804604C
	.2byte 0x0000
_08046038: .4byte gUnk_03005CF4
_0804603C: .4byte 0x000001BB
_08046040: .4byte 0x000001C7
_08046044:
	ldr r0, _08046068
	ldr r0, [r0, #0]
	ldr r3, _0804606C
	adds r0, r0, r3
_0804604C:
	ldrb r0, [r0, #0]
	asrs r1, r0, #5
	movs r0, #1
	ands r1, r0
	cmp r6, #0
	beq _0804612A
	cmp r5, #0
	beq _080460C6
	cmp r4, #0
	beq _080460C6
	cmp r1, #0
	beq _080460C6
	b _08046074
	.2byte 0x0000
_08046068: .4byte gUnk_03005CF4
_0804606C: .4byte 0x000001BB
_08046070:
	bl sub_080003F0
_08046074:
	bl sub_0805F184
	cmp r0, #0
	bne _08046070
	b _08046082
_0804607E:
	bl sub_080003F0
_08046082:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804607E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080460A4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080460AC
_080460A4: .4byte 0x001402A9
_080460A8:
	bl sub_080003F0
_080460AC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080460B8
	b _0804645A
_080460B8:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080460A8
	bl sub_0805EFBC
	b _0804645A
_080460C6:
	cmp r6, #0
	beq _0804612A
	b _080460D0
_080460CC:
	bl sub_080003F0
_080460D0:
	bl sub_0805F184
	cmp r0, #0
	bne _080460CC
	b _080460DE
_080460DA:
	bl sub_080003F0
_080460DE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080460DA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08046100
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08046108
_08046100: .4byte 0x001402A8
_08046104:
	bl sub_080003F0
_08046108:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08046114
	b _0804645A
_08046114:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08046104
	bl sub_0805EFBC
	b _0804645A
_08046122:
	adds r0, r1, #0
	b _080461DC
_08046126:
	bl sub_080003F0
_0804612A:
	bl sub_0805F184
	cmp r0, #0
	bne _08046126
	b _08046138
_08046134:
	bl sub_080003F0
_08046138:
	bl sub_0805EF90
	cmp r0, #0
	bne _08046134
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0804615C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08046164
	.2byte 0x0000
_0804615C: .4byte 0x001402A1
_08046160:
	bl sub_080003F0
_08046164:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0804617A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08046160
	bl sub_0805EFBC
_0804617A:
	movs r3, #0
	movs r2, #0
	ldr r0, _080461E8
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_08046188:
	ldrh r0, [r1, #0]
	cmp r0, #5
	bne _08046196
	ldrh r0, [r1, #2]
	cmp r0, #0xa6
	bne _08046196
	adds r3, #1
_08046196:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _08046188
	adds r6, r3, #0
	bl sub_080020F4
	adds r5, r0, #0
	cmp r6, #0
	bne _080461AC
	b _0804645A
_080461AC:
	cmp r5, #0
	beq _080461B2
	b _0804645A
_080461B2:
	adds r2, r7, #0
	movs r4, #3
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r7, r0
	bls _080461F4
	ldr r0, _080461EC
	ldr r0, [r0, #0]
	ldr r3, _080461F0
	adds r1, r0, r3
	movs r3, #0
_080461C8:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _08046122
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _080461C8
	bl sub_080003F0
	movs r0, #0
_080461DC:
	cmp r0, #0
	beq _0804623C
	adds r0, #0x42
	strh r4, [r0, #0]
	b _0804623C
	.2byte 0x0000
_080461E8: .4byte gUnk_030034E0
_080461EC: .4byte gUnk_03005CF4
_080461F0: .4byte 0x000007A4
_080461F4:
	cmp r7, #0
	beq _0804621C
	subs r2, r7, #1
	cmp r2, #4
	bhi _0804623C
	ldr r1, _08046218
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	movs r1, #3
	bl sub_08019EB8
	b _0804623C
_08046218: .4byte gUnk_030056F4
_0804621C:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _08046234
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r4, [r0, #0]
	b _0804623C
_08046234: .4byte gUnk_03003CE0
_08046238:
	bl sub_080003F0
_0804623C:
	bl sub_0805F184
	cmp r0, #0
	bne _08046238
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08046260
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08046268
	.2byte 0x0000
_08046260: .4byte 0x001402A2
_08046264:
	bl sub_080003F0
_08046268:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08046264
	adds r0, r4, #0
	bl sub_0805EF14
	adds r4, r0, #0
	cmp r4, #0
	bne _08046280
	b _0804640C
_08046280:
	add r3, sp, #0xc
	mov r8, r3
	b _0804628A
_08046286:
	bl sub_080003F0
_0804628A:
	bl sub_0805F184
	cmp r0, #0
	bne _08046286
	b _08046298
_08046294:
	bl sub_080003F0
_08046298:
	bl sub_0805EF90
	cmp r0, #0
	bne _08046294
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080462BC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080462C4
	.2byte 0x0000
_080462BC: .4byte 0x001402A4
_080462C0:
	bl sub_080003F0
_080462C4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080462DA
	bl sub_0800CDF8
	cmp r0, #0
	beq _080462C0
	bl sub_0805EFBC
_080462DA:
	movs r4, #1
	movs r3, #0
	ldr r6, _08046354
	movs r5, #0
_080462E2:
	ldr r0, [r6, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #5
	bne _0804630A
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0xa6
	bne _0804630A
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _08046310
_0804630A:
	adds r3, #1
	cmp r3, #0x18
	bls _080462E2
_08046310:
	movs r1, #1
	movs r2, #0x1e
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	mov r1, r8
	movs r2, #0
_08046320:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _08046320
	movs r4, #0
_0804632C:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _0804632C
	ldr r0, _08046358
	movs r1, #0x22
	bl sub_08068070
	ldr r0, _0804635C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08046364
	movs r0, #0x33
	bl sub_08006D08
	b _08046364
_08046354: .4byte gUnk_030034E0
_08046358: .4byte sub_0805990C
_0804635C: .4byte gUnk_030027D0
_08046360:
	bl sub_080003F0
_08046364:
	bl sub_0805F184
	cmp r0, #0
	bne _08046360
	b _08046372
_0804636E:
	bl sub_080003F0
_08046372:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804636E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08046394
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804639C
_08046394: .4byte 0x001402A5
_08046398:
	bl sub_080003F0
_0804639C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080463B8
	bl sub_0800CDF8
	cmp r0, #0
	beq _08046398
	bl sub_0805EFBC
	b _080463B8
_080463B4:
	bl sub_080003F0
_080463B8:
	bl sub_0805F184
	cmp r0, #0
	bne _080463B4
	b _080463C6
_080463C2:
	bl sub_080003F0
_080463C6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080463C2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080463E8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080463F0
_080463E8: .4byte 0x001402A6
_080463EC:
	bl sub_080003F0
_080463F0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0804645A
	bl sub_0800CDF8
	cmp r0, #0
	beq _080463EC
	bl sub_0805EFBC
	b _0804645A
_08046408:
	bl sub_080003F0
_0804640C:
	bl sub_0805F184
	cmp r0, #0
	bne _08046408
	b _0804641A
_08046416:
	bl sub_080003F0
_0804641A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08046416
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0804643C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08046444
_0804643C: .4byte 0x001402A3
_08046440:
	bl sub_080003F0
_08046444:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0804645A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08046440
	bl sub_0805EFBC
_0804645A:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0802939C
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804648C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0804648C: .4byte gUnk_03003CE0
	thumb_func_end sub_08045F44
