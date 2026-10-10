	thumb_func_start sub_08053060
sub_08053060: @ 0x08053060
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, _0805307C
	ldr r2, [r0, #0]
	movs r1, #4
	ldr r0, [r2, #0x38]
	ands r0, r1
	cmp r0, #0
	bne _080530D0
	ldr r7, _08053080
	ldr r0, _08053084
	adds r4, r2, r0
	movs r6, #0
	b _0805308C
_0805307C: .4byte gUnk_03005CF4
_08053080: .4byte sub_08053120
_08053084: .4byte 0x00000E34
_08053088:
	adds r6, #1
	adds r4, #0x28
_0805308C:
	cmp r6, #0x1d
	bhi _080530D0
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _08053088
	str r7, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _080530EC
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #6
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_080530D0:
	bl sub_0800CC98
	cmp r0, #0
	bne _08053118
	bl sub_0801AB24
	cmp r0, #1
	beq _080530FC
	cmp r0, #1
	bgt _080530F0
	cmp r0, #0
	beq _080530F6
	b _08053110
	.2byte 0x0000
_080530EC: .4byte sub_0802A104
_080530F0:
	cmp r0, #2
	beq _08053104
	b _08053110
_080530F6:
	bl sub_080576A8
	b _08053110
_080530FC:
	movs r0, #6
	bl sub_0801AB50
	b _08053110
_08053104:
	movs r0, #6
	bl sub_0801AB90
	b _08053110
_0805310C:
	bl sub_080003F0
_08053110:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0805310C
_08053118:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08053060
