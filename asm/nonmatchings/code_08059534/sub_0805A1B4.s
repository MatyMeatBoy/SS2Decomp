	thumb_func_start sub_0805A1B4
sub_0805A1B4: @ 0x0805A1B4
	push {r4, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0805A1D8
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	b _0805A1E0
	.2byte 0x0000
_0805A1D8: .4byte gUnk_03003CE0
_0805A1DC:
	bl sub_080003F0
_0805A1E0:
	bl sub_0805F184
	cmp r0, #0
	bne _0805A1DC
	b _0805A1EE
_0805A1EA:
	bl sub_080003F0
_0805A1EE:
	bl sub_0805EF90
	cmp r0, #0
	bne _0805A1EA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0805A210
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0805A218
_0805A210: .4byte 0x0014022A
_0805A214:
	bl sub_080003F0
_0805A218:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0805A22E
	bl sub_0800CDF8
	cmp r0, #0
	beq _0805A214
	bl sub_0805EFBC
_0805A22E:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0805A254
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_0805A254: .4byte gUnk_03003CE0
	thumb_func_end sub_0805A1B4
