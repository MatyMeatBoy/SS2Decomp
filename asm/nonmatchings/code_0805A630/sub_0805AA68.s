	thumb_func_start sub_0805AA68
sub_0805AA68: @ 0x0805AA68
	push {r4, r5, lr}
	adds r5, r0, #0
	lsrs r1, r5, #0x10
	movs r0, #0xff
	ands r5, r0
	adds r4, r1, #0
	b _0805AA7C
_0805AA76:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0805AA7C:
	cmp r4, #0
	beq _0805AA8C
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0805AA76
_0805AA8C:
	bl sub_0800CC98
	cmp r0, #0
	bne _0805AAAA
	ldr r0, _0805AAB0
	str r5, [r0, #0]
	ldr r0, _0805AAB4
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805AAAA
	adds r0, r5, #0
	bl sub_08006CB4
_0805AAAA:
	pop {r4, r5}
	pop {r0}
	bx r0
_0805AAB0: .4byte gUnk_03005CF8
_0805AAB4: .4byte gUnk_030027D0
	thumb_func_end sub_0805AA68
