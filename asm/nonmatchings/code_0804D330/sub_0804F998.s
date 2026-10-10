	thumb_func_start sub_0804F998
sub_0804F998: @ 0x0804F998
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, _0804F9B4
	ldr r2, [r0, #0]
	movs r1, #1
	ldr r0, [r2, #0x38]
	ands r0, r1
	cmp r0, #0
	bne _0804FA10
	ldr r7, _0804F9B8
	ldr r0, _0804F9BC
	adds r4, r2, r0
	movs r6, #0
	b _0804F9C4
_0804F9B4: .4byte gUnk_03005CF4
_0804F9B8: .4byte sub_0804FA68
_0804F9BC: .4byte 0x00000E34
_0804F9C0:
	adds r6, #1
	adds r4, #0x28
_0804F9C4:
	cmp r6, #0x1d
	bhi _0804FA1C
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _0804F9C0
	str r7, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _0804FA0C
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
	b _0804FA1C
	.2byte 0x0000
_0804FA0C: .4byte sub_0802A104
_0804FA10:
	movs r0, #7
	movs r1, #0x88
	movs r2, #0xc8
	movs r3, #0
	bl sub_08028AAC
_0804FA1C:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804FA5E
	bl sub_0801AB24
	cmp r0, #1
	beq _0804FA42
	cmp r0, #1
	bgt _0804FA36
	cmp r0, #0
	beq _0804FA3C
	b _0804FA56
_0804FA36:
	cmp r0, #2
	beq _0804FA4A
	b _0804FA56
_0804FA3C:
	bl sub_080576A8
	b _0804FA56
_0804FA42:
	movs r0, #6
	bl sub_0801AB50
	b _0804FA56
_0804FA4A:
	movs r0, #6
	bl sub_0801AB90
	b _0804FA56
_0804FA52:
	bl sub_080003F0
_0804FA56:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804FA52
_0804FA5E:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0804F998
