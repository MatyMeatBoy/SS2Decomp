	thumb_func_start sub_0805A9F4
sub_0805A9F4: @ 0x0805A9F4
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	lsrs r5, r2, #0x10
	movs r0, #0xff
	ands r2, r0
	ldr r0, _0805AA1C
	ldr r4, [r0, #0]
	str r2, [r0, #0]
	ldr r0, _0805AA20
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805AA16
	adds r0, r2, #0
	bl sub_08006CB4
_0805AA16:
	adds r6, r4, #0
	adds r4, r5, #0
	b _0805AA2A
_0805AA1C: .4byte gUnk_03005CF8
_0805AA20: .4byte gUnk_030027D0
_0805AA24:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0805AA2A:
	cmp r4, #0
	beq _0805AA3A
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0805AA24
_0805AA3A:
	bl sub_0800CC98
	cmp r0, #0
	bne _0805AA58
	ldr r0, _0805AA60
	str r6, [r0, #0]
	ldr r0, _0805AA64
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805AA58
	adds r0, r6, #0
	bl sub_08006CB4
_0805AA58:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805AA60: .4byte gUnk_03005CF8
_0805AA64: .4byte gUnk_030027D0
	thumb_func_end sub_0805A9F4
