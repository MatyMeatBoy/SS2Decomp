	thumb_func_start sub_0805AAB8
sub_0805AAB8: @ 0x0805AAB8
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	lsrs r5, r2, #0x10
	movs r0, #0xff
	ands r2, r0
	ldr r0, _0805AAE0
	ldr r4, [r0, #0]
	str r2, [r0, #0]
	ldr r0, _0805AAE4
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805AADA
	adds r0, r2, #0
	bl sub_08006CB4
_0805AADA:
	adds r6, r4, #0
	adds r4, r5, #0
	b _0805AAEE
_0805AAE0: .4byte gUnk_03005CF8
_0805AAE4: .4byte gUnk_030027D0
_0805AAE8:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0805AAEE:
	cmp r4, #0
	beq _0805AAFE
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0805AAE8
_0805AAFE:
	bl sub_0800CC98
	cmp r0, #0
	bne _0805AB14
	ldr r0, _0805AB1C
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	adds r1, r6, #0
	movs r2, #1
	bl sub_0800A34C
_0805AB14:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805AB1C: .4byte gUnk_03003170
	thumb_func_end sub_0805AAB8
