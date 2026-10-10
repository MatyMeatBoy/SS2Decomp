	thumb_func_start sub_08054644
sub_08054644: @ 0x08054644
	push {r4, r5, r6, lr}
	ldr r6, _08054654
	ldr r0, _08054658
	ldr r0, [r0, #0]
	ldr r1, _0805465C
	adds r4, r0, r1
	movs r5, #0
	b _08054664
_08054654: .4byte sub_0805664C
_08054658: .4byte gUnk_03005CF4
_0805465C: .4byte 0x00000E34
_08054660:
	adds r5, #1
	adds r4, #0x28
_08054664:
	cmp r5, #0x1d
	bhi _080546A2
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08054660
	b _08054678
_08054674:
	bl sub_080003F0
_08054678:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054674
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
	movs r1, #0xe
	bl sub_08000274
_080546A2:
	ldr r6, _080546B0
	ldr r0, _080546B4
	ldr r0, [r0, #0]
	ldr r1, _080546B8
	adds r4, r0, r1
	movs r5, #0
	b _080546C0
_080546B0: .4byte sub_0805664C
_080546B4: .4byte gUnk_03005CF4
_080546B8: .4byte 0x00000E34
_080546BC:
	adds r5, #1
	adds r4, #0x28
_080546C0:
	cmp r5, #0x1d
	bhi _080546FE
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080546BC
	b _080546D4
_080546D0:
	bl sub_080003F0
_080546D4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080546D0
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
	movs r1, #0xf
	bl sub_08000274
_080546FE:
	bl sub_0800CC98
	cmp r0, #0
	bne _08054740
	bl sub_0801AB24
	cmp r0, #1
	beq _08054724
	cmp r0, #1
	bgt _08054718
	cmp r0, #0
	beq _0805471E
	b _08054738
_08054718:
	cmp r0, #2
	beq _0805472C
	b _08054738
_0805471E:
	bl sub_080576A8
	b _08054738
_08054724:
	movs r0, #6
	bl sub_0801AB50
	b _08054738
_0805472C:
	movs r0, #6
	bl sub_0801AB90
	b _08054738
_08054734:
	bl sub_080003F0
_08054738:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08054734
_08054740:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_08054644
