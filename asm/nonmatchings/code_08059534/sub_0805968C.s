	thumb_func_start sub_0805968C
sub_0805968C: @ 0x0805968C
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080596B8
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r4, #0
	movs r1, #0
	bl sub_0802949C
	b _080596C0
_080596B8: .4byte gUnk_03003CE0
_080596BC:
	bl sub_080003F0
_080596C0:
	bl sub_0805F184
	cmp r0, #0
	bne _080596BC
	b _080596CE
_080596CA:
	bl sub_080003F0
_080596CE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080596CA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080596F0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080596F8
_080596F0: .4byte 0x0014013E
_080596F4:
	bl sub_080003F0
_080596F8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0805970E
	bl sub_0800CDF8
	cmp r0, #0
	beq _080596F4
	bl sub_0805EFBC
_0805970E:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08059734
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
_08059734: .4byte gUnk_03003CE0
	thumb_func_end sub_0805968C
