	thumb_func_start sub_0805B140
sub_0805B140: @ 0x0805B140
	push {r4, r5, r6, r7, lr}
	b _0805B1C8
_0805B144:
	bl sub_0800CD34
	cmp r0, #0
	bne _0805B1C4
	bl sub_0800CC98
	cmp r0, #0
	bne _0805B1C4
	bl sub_0800CD8C
	cmp r0, #0
	bne _0805B1C4
	ldr r0, _0805B1A0
	ldr r4, [r0, #0]
	movs r6, #0
_0805B162:
	ldrh r1, [r4, #0xa]
	movs r0, #1
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0x10
	cmp r0, #0
	beq _0805B1BC
	bl sub_0800CCCC
	cmp r0, #0
	beq _0805B1A8
	ldrh r0, [r4, #8]
	lsrs r0, r0, #5
	cmp r0, #0
	beq _0805B1BC
	ldrh r1, [r4, #8]
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	ldr r0, _0805B1A4
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r1, r0
	bne _0805B1BC
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	adds r2, r5, #0
	movs r3, #1
	bl sub_0805FC80
	b _0805B1BC
_0805B1A0: .4byte gUnk_03005D58
_0805B1A4: .4byte gUnk_03003170
_0805B1A8:
	ldrh r0, [r4, #8]
	lsrs r0, r0, #5
	cmp r0, #0
	bne _0805B1BC
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	adds r2, r5, #0
	movs r3, #1
	bl sub_0805FC80
_0805B1BC:
	adds r6, #1
	adds r4, #0x20
	cmp r6, #0xf
	bls _0805B162
_0805B1C4:
	bl sub_080003F0
_0805B1C8:
	bl sub_0800CB78
	cmp r0, #0
	beq _0805B144
	ldr r4, _0805B1E8
	ldr r0, [r4, #0]
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
	movs r6, #0
	ldr r7, _0805B1EC
_0805B1E0:
	adds r5, r6, #1
	lsls r4, r6, #2
	b _0805B1F4
	.2byte 0x0000
_0805B1E8: .4byte gUnk_03005D58
_0805B1EC: .4byte gUnk_03005D60
_0805B1F0:
	bl sub_080003F0
_0805B1F4:
	adds r1, r4, r6
	lsls r1, r1, #3
	ldr r0, [r7, #0]
	adds r0, r0, r1
	bl sub_08000470
	cmp r0, #0
	bne _0805B1F0
	adds r6, r5, #0
	cmp r6, #5
	bls _0805B1E0
	ldr r0, _0805B218
	ldr r0, [r0, #0]
	bl sub_08001538
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805B218: .4byte gUnk_03005D60
	thumb_func_end sub_0805B140
