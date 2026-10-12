	thumb_func_start sub_0805A58C
sub_0805A58C: @ 0x0805A58C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r1, _0805A5A0
	ldr r1, [r1, #0]
	ldr r2, _0805A5A4
	adds r4, r1, r2
	movs r5, #0
	b _0805A5AC
	.2byte 0x0000
_0805A5A0: .4byte gUnk_03005CF4
_0805A5A4: .4byte 0x00000E34
_0805A5A8:
	adds r5, #1
	adds r4, #0x28
_0805A5AC:
	cmp r5, #0x1d
	bhi _0805A600
	adds r0, r4, #0
	bl sub_08000470
	adds r1, r0, #0
	cmp r1, #0
	bne _0805A5A8
	ldr r0, _0805A5CC
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2, #4]
	b _0805A5D4
	.2byte 0x0000
_0805A5CC: .4byte gUnk_03005CF4
_0805A5D0:
	bl sub_080003F0
_0805A5D4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0805A5D0
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	ldr r0, _0805A608
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08000274
	adds r0, r4, #0
_0805A600:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_0805A608: .4byte sub_0805A704
	thumb_func_end sub_0805A58C
