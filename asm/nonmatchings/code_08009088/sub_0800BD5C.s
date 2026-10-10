	thumb_func_start sub_0800BD5C
sub_0800BD5C: @ 0x0800BD5C
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	bl sub_08000464
	adds r6, r0, #0
	bl sub_080020F4
	bl sub_08065CA8
	bl sub_08016114
	movs r0, #5
	bl sub_08057624
	movs r4, #0
	b _0800BD88
_0800BD7E:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl sub_080135C4
	adds r4, #1
_0800BD88:
	bl sub_08002164
	cmp r4, r0
	blo _0800BD7E
	cmp r5, #1
	bne _0800BDA4
	ldr r0, _0800BDA0
	ldr r1, [r0, #0]
	movs r2, #2
	orrs r1, r2
	b _0800BDAE
	.2byte 0x0000
_0800BDA0: .4byte gUnk_03003478
_0800BDA4:
	ldr r0, _0800BDEC
	ldr r1, [r0, #0]
	movs r2, #3
	negs r2, r2
	ands r1, r2
_0800BDAE:
	str r1, [r0, #0]
	movs r0, #1
	bl sub_08006E64
	bl sub_0805F07C
	bl sub_080090B0
	bl sub_0805B21C
	bl sub_08022630
	bl sub_08021D88
	bl sub_08021C6C
	bl sub_08065B58
	bl sub_080658A0
	bl sub_080922B4
	bl sub_0805F1B0
	ldr r1, _0800BDF0
	movs r0, #0
	str r0, [r1, #0]
	bl sub_080003F0
	b _0800BDF8
	.2byte 0x0000
_0800BDEC: .4byte gUnk_03003478
_0800BDF0: .4byte gUnk_03003474
_0800BDF4:
	bl sub_080003F0
_0800BDF8:
	bl sub_080021A8
	cmp r0, #0
	bne _0800BE10
	bl sub_0800CD00
	cmp r0, #0
	bne _0800BE10
	bl sub_0800CB78
	cmp r0, #0
	beq _0800BDF4
_0800BE10:
	bl sub_08006DAC
	b _0800BE1A
_0800BE16:
	bl sub_080003F0
_0800BE1A:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0800BE16
	bl sub_080021A8
	cmp r0, #0
	beq _0800BE36
	bl sub_08061910
	bl sub_08002304
	bl sub_080020E0
_0800BE36:
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_0800CBAC
	bl sub_080161A4
	bl sub_08021DAC
	bl sub_08021C70
	bl sub_08065B84
	bl sub_080658CC
	bl sub_08092344
	bl sub_0801AAF8
	cmp r0, #0
	bne _0800BE78
	bl sub_0801ABE8
	b _0800BE70
_0800BE6C:
	bl sub_080003F0
_0800BE70:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0800BE6C
_0800BE78:
	ldr r0, _0800BEB8
	bl sub_08000420
	ldr r0, _0800BEBC
	bl sub_08000420
	bl sub_0805F07C
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_08002228
	cmp r0, #0
	bne _0800BEA8
	bl sub_080020E0
_0800BEA4:
	bl sub_080003F0
_0800BEA8:
	bl sub_08000464
	cmp r6, r0
	blo _0800BEA4
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0800BEB8: .4byte 0x000514C8
_0800BEBC: .4byte 0x11201100
	thumb_func_end sub_0800BD5C
