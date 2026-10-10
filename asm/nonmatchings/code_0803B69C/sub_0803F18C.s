	thumb_func_start sub_0803F18C
sub_0803F18C: @ 0x0803F18C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0x1e
	b _0803F19E
_0803F194:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F1AA
_0803F19E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F194
_0803F1AA:
	movs r0, #0
	movs r1, #8
	bl sub_0802939C
	cmp r5, #1
	beq _0803F1CA
	cmp r5, #1
	bgt _0803F1C0
	cmp r5, #0
	beq _0803F1CA
	b _0803F1EE
_0803F1C0:
	cmp r5, #2
	beq _0803F1CA
	cmp r5, #3
	beq _0803F1E0
	b _0803F1EE
_0803F1CA:
	ldr r2, _0803F1DC
	movs r3, #0x96
	lsls r3, r3, #1
	movs r0, #0
	movs r1, #0
	bl sub_08028D98
	b _0803F1EE
	.2byte 0x0000
_0803F1DC: .4byte 0xFFFFFED4
_0803F1E0:
	ldr r2, _0803F208
	movs r3, #0x96
	lsls r3, r3, #1
	movs r0, #0
	movs r1, #0
	bl sub_08028D98
_0803F1EE:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _0803F20C
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #0x20]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_0803F208: .4byte 0xFFFFFED4
_0803F20C: .4byte gUnk_03003CE0
	thumb_func_end sub_0803F18C
