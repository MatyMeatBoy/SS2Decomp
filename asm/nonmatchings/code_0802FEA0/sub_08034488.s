	thumb_func_start sub_08034488
sub_08034488: @ 0x08034488
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	bl sub_0800CE30
	cmp r0, #0
	beq _080344B4
	ldr r0, _080344A4
	ldr r0, [r0, #0]
	ldr r1, _080344A8
	adds r0, r0, r1
	b _080344BC
_080344A4: .4byte gUnk_03005CF4
_080344A8: .4byte 0x000001C5
_080344AC:
	adds r2, r1, #0
	b _080344F6
_080344B0:
	adds r0, r1, #0
	b _0803452A
_080344B4:
	ldr r0, _0803454C
	ldr r0, [r0, #0]
	ldr r2, _08034550
	adds r0, r0, r2
_080344BC:
	ldrb r0, [r0, #0]
	asrs r7, r0, #5
	movs r0, #1
	ands r7, r0
	cmp r7, #0
	bne _080344CA
	b _08034828
_080344CA:
	movs r1, #0x9c
	lsls r1, r1, #1
	movs r0, #6
	movs r2, #0xfa
	bl sub_080289C0
	mov r8, r0
	ldr r0, _0803454C
	ldr r0, [r0, #0]
	ldr r2, _08034554
	adds r1, r0, r2
	movs r2, #0
_080344E2:
	ldr r0, [r1, #0]
	cmp r0, r8
	beq _080344AC
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080344E2
	bl sub_080003F0
	movs r2, #0
_080344F6:
	cmp r2, #0
	beq _0803450A
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0803450A:
	ldr r4, _08034558
	ldr r0, _0803454C
	ldr r0, [r0, #0]
	ldr r2, _08034554
	adds r1, r0, r2
	movs r2, #0
_08034516:
	ldr r0, [r1, #0]
	cmp r0, r8
	beq _080344B0
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08034516
	bl sub_080003F0
	movs r0, #0
_0803452A:
	cmp r0, #0
	beq _08034530
	str r4, [r0, #0x44]
_08034530:
	mov r0, r8
	movs r1, #0xb
	bl sub_0802939C
	movs r0, #3
	negs r0, r0
	mov r9, r0
_0803453E:
	adds r0, r6, #0
	movs r1, #0
	bl sub_0802939C
	movs r4, #0xc8
	lsls r4, r4, #1
	b _08034566
_0803454C: .4byte gUnk_03005CF4
_08034550: .4byte 0x000001B9
_08034554: .4byte 0x000007A4
_08034558: .4byte sub_080376CC
_0803455C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08034572
_08034566:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803455C
_08034572:
	adds r0, r6, #0
	movs r1, #1
	bl sub_0802939C
	movs r4, #0xc8
	lsls r4, r4, #1
	b _0803458A
_08034580:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08034596
_0803458A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08034580
_08034596:
	adds r0, r6, #0
	movs r1, #8
	bl sub_0802939C
	adds r0, r6, #0
	movs r1, #0xf3
	movs r2, #0xe9
	movs r3, #0x3c
	bl sub_08028AAC
	adds r0, r6, #0
	movs r1, #2
	bl sub_0802939C
	movs r4, #0x1e
	b _080345C0
_080345B6:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080345CC
_080345C0:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080345B6
_080345CC:
	adds r0, r6, #0
	movs r1, #3
	bl sub_0802939C
	movs r4, #0x78
	b _080345E2
_080345D8:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080345EE
_080345E2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080345D8
_080345EE:
	adds r0, r6, #0
	movs r1, #2
	bl sub_0802939C
	movs r4, #0x1e
	b _08034604
_080345FA:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08034610
_08034604:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080345FA
_08034610:
	adds r0, r6, #0
	movs r1, #7
	bl sub_0802939C
	adds r0, r6, #0
	movs r1, #0xda
	movs r2, #0xe9
	movs r3, #0x3c
	bl sub_08028AAC
	adds r0, r6, #0
	movs r1, #0
	bl sub_0802939C
	movs r4, #0xc8
	b _0803463A
_08034630:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08034646
_0803463A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08034630
_08034646:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0802939C
	movs r4, #0x1e
	b _0803465C
_08034652:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08034668
_0803465C:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08034652
_08034668:
	adds r0, r6, #0
	movs r1, #0
	bl sub_0802939C
	movs r4, #0x50
	b _0803467E
_08034674:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803468A
_0803467E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08034674
_0803468A:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0802939C
	movs r4, #0x64
	b _080346A0
_08034696:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080346AC
_080346A0:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08034696
_080346AC:
	adds r0, r6, #0
	movs r1, #5
	bl sub_08029174
	movs r4, #0xd
	b _080346C2
_080346B8:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080346CE
_080346C2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080346B8
_080346CE:
	movs r0, #3
	ands r0, r7
	cmp r0, #0
	beq _0803474C
	ldr r0, _08034720
	movs r1, #0xe2
	movs r2, #0xe9
	bl sub_080289C0
	adds r5, r0, #0
	movs r1, #0xa2
	lsls r1, r1, #1
	movs r2, #0xf0
	movs r3, #0x32
	bl sub_08028AAC
	ldr r0, _08034724
	ldr r0, [r0, #0]
	ldr r2, _08034728
	adds r1, r0, r2
	movs r2, #0
_080346F8:
	ldr r0, [r1, #0]
	cmp r0, r5
	beq _0803470C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080346F8
	bl sub_080003F0
	movs r1, #0
_0803470C:
	cmp r1, #0
	beq _08034714
	movs r0, #4
	strh r0, [r1, #0x36]
_08034714:
	mov r0, r8
	movs r1, #0xa
	bl sub_0802926C
	movs r4, #0x1e
	b _08034736
_08034720: .4byte 0x0006000C
_08034724: .4byte gUnk_03005CF4
_08034728: .4byte 0x000007A4
_0803472C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08034742
_08034736:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803472C
_08034742:
	mov r0, r8
	movs r1, #0xb
	bl sub_0802939C
	b _0803481A
_0803474C:
	ldr r0, _0803477C
	movs r1, #0xe2
	movs r2, #0xe9
	bl sub_080289C0
	adds r5, r0, #0
	movs r1, #0xaf
	lsls r1, r1, #1
	movs r2, #0xf0
	movs r3, #0x3c
	bl sub_08028AAC
	ldr r0, _08034780
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08034776
	movs r0, #0x35
	bl sub_08006D08
_08034776:
	movs r4, #2
	b _0803478E
	.2byte 0x0000
_0803477C: .4byte 0x0006000C
_08034780: .4byte gUnk_030027D0
_08034784:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803479A
_0803478E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08034784
_0803479A:
	adds r0, r5, #0
	mov r1, r9
	movs r2, #4
	negs r2, r2
	movs r3, #2
	bl sub_08028D98
	adds r0, r5, #0
	mov r1, r9
	movs r2, #2
	negs r2, r2
	movs r3, #2
	bl sub_08028D98
	adds r0, r5, #0
	mov r1, r9
	movs r2, #1
	negs r2, r2
	movs r3, #2
	bl sub_08028D98
	adds r0, r5, #0
	mov r1, r9
	movs r2, #0
	movs r3, #2
	bl sub_08028D98
	adds r0, r5, #0
	mov r1, r9
	movs r2, #1
	movs r3, #2
	bl sub_08028D98
	adds r0, r5, #0
	mov r1, r9
	movs r2, #2
	movs r3, #2
	bl sub_08028D98
	adds r0, r5, #0
	mov r1, r9
	movs r2, #4
	movs r3, #2
	bl sub_08028D98
	ldr r0, _08034820
	ldr r0, [r0, #0]
	ldr r2, _08034824
	adds r1, r0, r2
	movs r2, #0
_080347FE:
	ldr r0, [r1, #0]
	cmp r0, r5
	beq _08034812
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080347FE
	bl sub_080003F0
	movs r1, #0
_08034812:
	cmp r1, #0
	beq _0803481A
	movs r0, #4
	strh r0, [r1, #0x36]
_0803481A:
	adds r7, #1
	b _0803453E
	.2byte 0x0000
_08034820: .4byte gUnk_03005CF4
_08034824: .4byte 0x000007A4
_08034828:
	adds r0, r6, #0
	movs r1, #0
	bl sub_0802939C
	movs r4, #0xc8
	lsls r4, r4, #1
	b _08034840
_08034836:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803484C
_08034840:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08034836
_0803484C:
	adds r0, r6, #0
	movs r1, #1
	bl sub_0802939C
	movs r4, #0xc8
	lsls r4, r4, #1
	b _08034864
_0803485A:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08034870
_08034864:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803485A
_08034870:
	adds r0, r6, #0
	movs r1, #8
	bl sub_0802939C
	adds r0, r6, #0
	movs r1, #0xf3
	movs r2, #0xe9
	movs r3, #0x3c
	bl sub_08028AAC
	adds r0, r6, #0
	movs r1, #2
	bl sub_0802939C
	movs r4, #0x1e
	b _0803489A
_08034890:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080348A6
_0803489A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08034890
_080348A6:
	adds r0, r6, #0
	movs r1, #3
	bl sub_0802939C
	movs r4, #0x78
	b _080348BC
_080348B2:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080348C8
_080348BC:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080348B2
_080348C8:
	adds r0, r6, #0
	movs r1, #2
	bl sub_0802939C
	movs r4, #0x1e
	b _080348DE
_080348D4:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080348EA
_080348DE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080348D4
_080348EA:
	adds r0, r6, #0
	movs r1, #7
	bl sub_0802939C
	adds r0, r6, #0
	movs r1, #0xda
	movs r2, #0xe9
	movs r3, #0x3c
	bl sub_08028AAC
	b _08034828
	thumb_func_end sub_08034488
