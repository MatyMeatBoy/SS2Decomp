	thumb_func_start sub_0805247C
sub_0805247C: @ 0x0805247C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	bl sub_0800CE30
	adds r2, r0, #0
	cmp r2, #0
	beq _080524A0
	ldr r0, _08052498
	ldr r1, [r0, #0]
	ldr r3, _0805249C
	adds r2, r1, r3
	movs r1, #0
	strb r1, [r2, #0]
	b _080524AC
_08052498: .4byte gUnk_03005CF4
_0805249C: .4byte 0x000001C1
_080524A0:
	ldr r1, _080524B8
	ldr r0, [r1, #0]
	ldr r3, _080524BC
	adds r0, r0, r3
	strb r2, [r0, #0]
	adds r0, r1, #0
_080524AC:
	ldr r6, _080524C0
	ldr r0, [r0, #0]
	ldr r1, _080524C4
	adds r4, r0, r1
	movs r5, #0
	b _080524CC
_080524B8: .4byte gUnk_03005CF4
_080524BC: .4byte 0x000001B5
_080524C0: .4byte sub_080567D4
_080524C4: .4byte 0x00000E34
_080524C8:
	adds r5, #1
	adds r4, #0x28
_080524CC:
	cmp r5, #0x1d
	bhi _0805250A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080524C8
	b _080524E0
_080524DC:
	bl sub_080003F0
_080524E0:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080524DC
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
	movs r1, #3
	bl sub_08000274
_0805250A:
	ldr r6, _08052518
	ldr r0, _0805251C
	ldr r0, [r0, #0]
	ldr r3, _08052520
	adds r4, r0, r3
	movs r5, #0
	b _08052528
_08052518: .4byte sub_080567D4
_0805251C: .4byte gUnk_03005CF4
_08052520: .4byte 0x00000E34
_08052524:
	adds r5, #1
	adds r4, #0x28
_08052528:
	cmp r5, #0x1d
	bhi _08052566
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08052524
	b _0805253C
_08052538:
	bl sub_080003F0
_0805253C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08052538
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
	movs r1, #4
	bl sub_08000274
_08052566:
	ldr r6, _08052574
	ldr r0, _08052578
	ldr r0, [r0, #0]
	ldr r3, _0805257C
	adds r4, r0, r3
	movs r5, #0
	b _08052584
_08052574: .4byte sub_080567D4
_08052578: .4byte gUnk_03005CF4
_0805257C: .4byte 0x00000E34
_08052580:
	adds r5, #1
	adds r4, #0x28
_08052584:
	cmp r5, #0x1d
	bhi _080525C2
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08052580
	b _08052598
_08052594:
	bl sub_080003F0
_08052598:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08052594
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
	movs r1, #5
	bl sub_08000274
_080525C2:
	movs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _080525DC
	ldr r0, _080525D8
	ldr r1, [r0, #0]
	movs r3, #0xe2
	lsls r3, r3, #1
	adds r1, r1, r3
	b _080525E6
_080525D8: .4byte gUnk_03005CF4
_080525DC:
	ldr r0, _08052600
	ldr r1, [r0, #0]
	movs r2, #0xdc
	lsls r2, r2, #1
	adds r1, r1, r2
_080525E6:
	ldrb r1, [r1, #0]
	asrs r1, r1, #4
	ands r1, r4
	cmp r1, #0
	beq _08052608
	ldr r2, _08052604
	movs r0, #9
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	b _08052664
	.2byte 0x0000
_08052600: .4byte gUnk_03005CF4
_08052604: .4byte 0x0000270F
_08052608:
	ldr r7, _08052614
	ldr r0, [r0, #0]
	ldr r3, _08052618
	adds r4, r0, r3
	movs r6, #0
	b _08052620
_08052614: .4byte sub_0805A2E4
_08052618: .4byte 0x00000E34
_0805261C:
	adds r6, #1
	adds r4, #0x28
_08052620:
	cmp r6, #0x1d
	bhi _08052664
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _0805261C
	str r7, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _08052680
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #9
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_08052664:
	bl sub_0800CC98
	cmp r0, #0
	bne _080526AC
	bl sub_0801AB24
	cmp r0, #1
	beq _08052690
	cmp r0, #1
	bgt _08052684
	cmp r0, #0
	beq _0805268A
	b _080526A4
	.2byte 0x0000
_08052680: .4byte sub_0802A104
_08052684:
	cmp r0, #2
	beq _08052698
	b _080526A4
_0805268A:
	bl sub_080576A8
	b _080526A4
_08052690:
	movs r0, #6
	bl sub_0801AB50
	b _080526A4
_08052698:
	movs r0, #6
	bl sub_0801AB90
	b _080526A4
_080526A0:
	bl sub_080003F0
_080526A4:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080526A0
_080526AC:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0805247C
