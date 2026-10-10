	thumb_func_start sub_0800232C
sub_0800232C: @ 0x0800232C
	push {r4, r5, r6, lr}
	sub sp, #0x3c
	bl sub_0801AB24
	cmp r0, #0
	bne _080023AC
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08000A34
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #0
	bl sub_080009F8
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_080009C0
	ldr r1, _080023A0
	ldr r0, [sp, #0x38]
	ands r0, r1
	ldr r1, _080023A4
	orrs r0, r1
	str r0, [sp, #0x38]
	add r4, sp, #0x38
	movs r0, #0
	adds r1, r4, #0
	bl sub_08000AA8
	ldr r0, _080023A8
	strh r0, [r4, #0]
	movs r0, #1
	adds r1, r4, #0
	bl sub_08000AA8
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r0, #0x10
	str r0, [sp, #0]
	movs r0, #0
	movs r1, #1
	movs r3, #0
	bl sub_0800BCDC
	bl sub_08000940
	movs r0, #0x14
	bl sub_0801AB90
	b _08002434
	.2byte 0x0000
_080023A0: .4byte 0xFFFF0000
_080023A4: .4byte 0x00001C08
_080023A8: .4byte 0x00001D03
_080023AC:
	movs r0, #1
	str r0, [sp, #0]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08000A34
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	movs r5, #0
	ldr r0, _08002418
	add r4, sp, #0x38
	strh r0, [r4, #0]
	movs r0, #0
	adds r1, r4, #0
	bl sub_08000AA8
	ldr r0, _0800241C
	strh r0, [r4, #0]
	movs r0, #1
	adds r1, r4, #0
	bl sub_08000AA8
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r0, #0x10
	str r0, [sp, #0]
	movs r0, #0
	movs r1, #1
	movs r3, #0
	bl sub_0800BCDC
	ldr r0, _08002420
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	bl sub_0801AB24
	cmp r0, #2
	bne _08002424
	movs r0, #6
	bl sub_0801AB90
	b _08002434
	.2byte 0x0000
_08002418: .4byte 0x00001C08
_0800241C: .4byte 0x00001D03
_08002420: .4byte gUnk_03001250
_08002424:
	movs r0, #6
	bl sub_0801AB50
	b _08002434
_0800242C:
	bl sub_080920A0
	bl sub_080003F0
_08002434:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0800242C
	movs r4, #0
_0800243E:
	bl sub_080920A0
	bl sub_080003F0
	adds r4, #1
	cmp r4, #0xb3
	bls _0800243E
	movs r0, #0x1e
	bl sub_0801AA8C
	b _0800245C
_08002454:
	bl sub_080920A0
	bl sub_080003F0
_0800245C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08002454
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r0, #0x10
	str r0, [sp, #0]
	movs r0, #0x4a
	movs r1, #1
	movs r3, #0
	bl sub_0800BCDC
	ldr r1, _0800249C
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #4
	movs r2, #0
	movs r3, #1
	bl sub_08065158
	movs r0, #0x90
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	movs r0, #6
	bl sub_0801AA34
	b _080024A4
	.2byte 0x0000
_0800249C: .4byte 0x00050156
_080024A0:
	bl sub_080003F0
_080024A4:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080024A0
	movs r4, #0
	b _08002604
_080024B0:
	cmp r4, #4
	bls _080024B6
	b _080025E2
_080024B6:
	lsls r0, r4, #2
	ldr r1, _080024C0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080024C0: .4byte _080024C4
_080024C4:
	.4byte _080024D8
_080024C8: .4byte _080024FE
_080024CC: .4byte _08002554
_080024D0: .4byte _08002578
_080024D4: .4byte _080025A8
_080024D8:
	ldr r0, _080024F0
	ldrh r1, [r0, #0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080024F4
	movs r4, #1
	movs r0, #0xe
	bl sub_08006D08
	movs r6, #0x10
	b _080025E2
_080024F0: .4byte gUnk_03001308
_080024F4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080025E2
	b _0800254A
_080024FE:
	ldr r0, _08002518
	ldrh r1, [r0, #0]
	movs r2, #0x10
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0800251C
	movs r0, #0xe
	bl sub_08006D08
	movs r4, #2
	movs r6, #0x10
	b _080025E2
_08002518: .4byte gUnk_03001308
_0800251C:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08002530
	movs r0, #0xe
	bl sub_08006D08
	movs r4, #0
	movs r6, #0x20
	b _080025E2
_08002530:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080025E2
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	beq _0800254A
	movs r0, #0xe
	bl sub_08006D08
	movs r4, #4
	b _080025E2
_0800254A:
	movs r0, #0xe
	bl sub_08006D08
	movs r4, #3
	b _080025E2
_08002554:
	ldr r0, _08002568
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800256C
	movs r4, #1
	movs r6, #0x20
	b _080025D2
	.2byte 0x0000
_08002568: .4byte gUnk_03001308
_0800256C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080025E2
	movs r4, #4
	b _080025D2
_08002578:
	ldr r0, _0800258C
	ldrh r1, [r0, #0]
	movs r2, #0x10
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08002590
	movs r4, #4
	movs r6, #0x10
	b _080025D2
_0800258C: .4byte gUnk_03001308
_08002590:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080025E2
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	beq _080025A4
	movs r4, #1
	b _080025D2
_080025A4:
	movs r4, #0
	b _080025D2
_080025A8:
	ldr r0, _080025BC
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080025C0
	movs r4, #3
	movs r6, #0x20
	b _080025D2
	.2byte 0x0000
_080025BC: .4byte gUnk_03001308
_080025C0:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080025E2
	movs r0, #0x10
	ands r0, r6
	cmp r0, #0
	beq _080025DA
	movs r4, #2
_080025D2:
	movs r0, #0xe
	bl sub_08006D08
	b _080025E2
_080025DA:
	movs r4, #1
	movs r0, #0xe
	bl sub_08006D08
_080025E2:
	str r4, [sp, #0]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #1
	bl sub_08065230
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08065230
	bl sub_080003F0
_08002604:
	ldr r0, _08002624
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08002612
	b _080024B0
_08002612:
	movs r0, #0xf
	bl sub_08006D08
	movs r0, #0x3c
	bl sub_0801AA8C
	lsls r4, r4, #1
	b _0800262C
	.2byte 0x0000
_08002624: .4byte gUnk_03001324
_08002628:
	bl sub_080003F0
_0800262C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08002628
	ldr r0, _08002650
	ldr r1, _08002654
	adds r1, r4, r1
	ldrh r1, [r1, #0]
	str r1, [r0, #0]
	bl sub_080003F0
	movs r0, #0x14
	bl sub_08000420
	add sp, #0x3c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08002650: .4byte gUnk_03003470
_08002654: .4byte gUnk_08366DC0
	thumb_func_end sub_0800232C
