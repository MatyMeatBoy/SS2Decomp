	thumb_func_start sub_080502DC
sub_080502DC: @ 0x080502DC
	push {r4, r5, r6, lr}
	sub sp, #8
_080502E0:
	movs r4, #1
	b _080502EE
_080502E4:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080502FA
_080502EE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080502E4
_080502FA:
	ldr r0, _08050310
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08050314
	bl sub_08019C3C
	b _08050316
_08050310: .4byte gUnk_03005CF4
_08050314:
	movs r0, #1
_08050316:
	cmp r0, #0
	bne _080502E0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08050340
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	ldr r0, _08050344
	movs r1, #0xf
	bl sub_08068070
	b _0805034C
_08050340: .4byte gUnk_03003CE0
_08050344: .4byte sub_0805990C
_08050348:
	bl sub_080003F0
_0805034C:
	bl sub_0805F184
	cmp r0, #0
	bne _08050348
	b _0805035A
_08050356:
	bl sub_080003F0
_0805035A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08050356
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0805037C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r6, r0, #0
	movs r4, #0x1e
	b _0805038A
_0805037C: .4byte 0x00140069
_08050380:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08050396
_0805038A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08050380
_08050396:
	movs r1, #0xb8
	lsls r1, r1, #1
	movs r0, #0x13
	movs r2, #0x88
	bl sub_080289C0
	adds r5, r0, #0
	movs r4, #1
	b _080503B2
_080503A8:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080503BE
_080503B2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080503A8
_080503BE:
	ldr r2, _080503D4
	movs r0, #1
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	bl sub_0802A01C
	adds r4, r6, #0
	b _080503DC
	.2byte 0x0000
_080503D4: .4byte 0x0000270F
_080503D8:
	bl sub_080003F0
_080503DC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080503D8
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0802939C
	adds r0, r5, #0
	movs r1, #0x99
	movs r2, #0x5d
	movs r3, #0x64
	bl sub_08028AAC
	ldr r0, _08050448
	ldr r0, [r0, #0]
	ldr r2, _0805044C
	adds r1, r0, r2
	movs r2, #0
_08050404:
	ldr r0, [r1, #0]
	cmp r0, r5
	beq _08050418
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08050404
	bl sub_080003F0
	movs r1, #0
_08050418:
	cmp r1, #0
	beq _08050420
	movs r0, #4
	strh r0, [r1, #0x36]
_08050420:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08050450
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08050448: .4byte gUnk_03005CF4
_0805044C: .4byte 0x000007A4
_08050450: .4byte gUnk_03003CE0
	thumb_func_end sub_080502DC
