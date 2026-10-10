	thumb_func_start sub_0804E628
sub_0804E628: @ 0x0804E628
	push {r4, r5, lr}
	sub sp, #8
	cmp r0, #0
	beq _0804E63C
	cmp r0, #1
	bne _0804E636
	b _0804E758
_0804E636:
	b _0804E7B0
_0804E638:
	bl sub_080003F0
_0804E63C:
	bl sub_0805F184
	cmp r0, #0
	bne _0804E638
	b _0804E64A
_0804E646:
	bl sub_080003F0
_0804E64A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804E646
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804E6A0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r0, #6
	movs r1, #2
	movs r2, #0
	movs r3, #5
	bl sub_08028D98
	movs r4, #2
	negs r4, r4
	movs r0, #6
	adds r1, r4, #0
	movs r2, #0
	movs r3, #5
	bl sub_08028D98
	movs r0, #6
	movs r1, #2
	movs r2, #0
	movs r3, #5
	bl sub_08028D98
	movs r0, #6
	adds r1, r4, #0
	movs r2, #0
	movs r3, #5
	bl sub_08028D98
	adds r4, r5, #0
	b _0804E6A8
_0804E6A0: .4byte 0x0014005B
_0804E6A4:
	bl sub_080003F0
_0804E6A8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804E6A4
	b _0804E6B8
_0804E6B4:
	bl sub_080003F0
_0804E6B8:
	bl sub_0805F184
	cmp r0, #0
	bne _0804E6B4
	b _0804E6C6
_0804E6C2:
	bl sub_080003F0
_0804E6C6:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804E6C2
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804E71C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r0, #6
	movs r1, #2
	movs r2, #0
	movs r3, #5
	bl sub_08028D98
	movs r4, #2
	negs r4, r4
	movs r0, #6
	adds r1, r4, #0
	movs r2, #0
	movs r3, #5
	bl sub_08028D98
	movs r0, #6
	movs r1, #2
	movs r2, #0
	movs r3, #5
	bl sub_08028D98
	movs r0, #6
	adds r1, r4, #0
	movs r2, #0
	movs r3, #5
	bl sub_08028D98
	adds r4, r5, #0
	b _0804E724
_0804E71C: .4byte 0x0014005C
_0804E720:
	bl sub_080003F0
_0804E724:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804E720
	ldr r0, _0804E760
	ldr r2, [r0, #0]
	movs r1, #2
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804E764
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
_0804E758:
	movs r5, #2
	negs r5, r5
_0804E75C:
	movs r4, #0x78
	b _0804E772
_0804E760: .4byte gUnk_03005CF4
_0804E764: .4byte gUnk_03003CE0
_0804E768:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804E77E
_0804E772:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804E768
_0804E77E:
	movs r0, #6
	movs r1, #2
	movs r2, #0
	movs r3, #5
	bl sub_08028D98
	movs r0, #6
	adds r1, r5, #0
	movs r2, #0
	movs r3, #5
	bl sub_08028D98
	movs r0, #6
	movs r1, #2
	movs r2, #0
	movs r3, #5
	bl sub_08028D98
	movs r0, #6
	adds r1, r5, #0
	movs r2, #0
	movs r3, #5
	bl sub_08028D98
	b _0804E75C
_0804E7B0:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0804E628
