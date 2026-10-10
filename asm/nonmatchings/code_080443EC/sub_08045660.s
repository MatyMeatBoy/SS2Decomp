	thumb_func_start sub_08045660
sub_08045660: @ 0x08045660
	push {r4, r5, r6, r7, lr}
	ldr r7, _08045678
	movs r6, #1
_08045666:
	bl sub_0800CE30
	cmp r0, #0
	beq _08045680
	ldr r0, [r7, #0]
	ldr r1, _0804567C
	adds r0, r0, r1
	b _08045686
	.2byte 0x0000
_08045678: .4byte gUnk_03005CF4
_0804567C: .4byte 0x000001C3
_08045680:
	ldr r0, [r7, #0]
	ldr r2, _08045690
	adds r0, r0, r2
_08045686:
	ldrb r0, [r0, #0]
	asrs r5, r0, #2
	ands r5, r6
	movs r4, #1
	b _0804569E
_08045690: .4byte 0x000001B7
_08045694:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080456AA
_0804569E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08045694
_080456AA:
	bl sub_0800CE30
	cmp r0, #0
	beq _080456C8
	ldr r0, [r7, #0]
	ldr r1, _080456BC
	adds r0, r0, r1
	b _080456CE
	.2byte 0x0000
_080456BC: .4byte 0x000001C3
_080456C0:
	adds r2, r1, #0
	b _08045722
_080456C4:
	adds r0, r1, #0
	b _08045750
_080456C8:
	ldr r0, [r7, #0]
	ldr r2, _080456DC
	adds r0, r0, r2
_080456CE:
	ldrb r0, [r0, #0]
	asrs r0, r0, #2
	ands r0, r6
	cmp r5, r0
	beq _08045666
	movs r4, #0xf0
	b _080456EA
_080456DC: .4byte 0x000001B7
_080456E0:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080456F6
_080456EA:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080456E0
_080456F6:
	movs r0, #0x28
	movs r1, #0xbf
	movs r2, #0xf9
	bl sub_080289C0
	adds r4, r0, #0
	movs r5, #8
	movs r6, #4
	ldr r0, [r7, #0]
	ldr r2, _0804575C
	adds r1, r0, r2
	movs r2, #0
_0804570E:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _080456C0
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804570E
	bl sub_080003F0
	movs r2, #0
_08045722:
	cmp r2, #0
	beq _08045732
	strh r5, [r2, #0x18]
	strh r6, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_08045732:
	ldr r5, _08045760
	ldr r0, [r7, #0]
	ldr r2, _0804575C
	adds r1, r0, r2
	movs r2, #0
_0804573C:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _080456C4
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804573C
	bl sub_080003F0
	movs r0, #0
_08045750:
	cmp r0, #0
	beq _08045756
	str r5, [r0, #0x44]
_08045756:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0804575C: .4byte 0x000007A4
_08045760: .4byte sub_08033198
	thumb_func_end sub_08045660
