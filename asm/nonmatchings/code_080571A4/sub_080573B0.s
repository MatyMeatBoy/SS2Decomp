	thumb_func_start sub_080573B0
sub_080573B0: @ 0x080573B0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, _080573C4
	ldr r0, [r0, #0]
	ldr r1, _080573C8
	adds r4, r0, r1
	movs r5, #0
	b _080573D0
	.2byte 0x0000
_080573C4: .4byte gUnk_03005CF4
_080573C8: .4byte 0x00000E34
_080573CC:
	adds r5, #1
	adds r4, #0x28
_080573D0:
	cmp r5, #0x1d
	bhi _0805741C
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080573CC
	b _080573E4
_080573E0:
	bl sub_080003F0
_080573E4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080573E0
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
	adds r1, r7, #0
	bl sub_08000274
_0805740E:
	bl sub_080003F0
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0805740E
_0805741C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080573B0
