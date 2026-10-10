	thumb_func_start sub_0804C5A8
sub_0804C5A8: @ 0x0804C5A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, _0804C5C4
	ldr r2, [r0, #0]
	movs r1, #8
	ldr r0, [r2, #0x38]
	ands r0, r1
	cmp r0, #0
	bne _0804C620
	ldr r7, _0804C5C8
	ldr r0, _0804C5CC
	adds r4, r2, r0
	movs r6, #0
	b _0804C5D4
_0804C5C4: .4byte gUnk_03005CF4
_0804C5C8: .4byte sub_0805A138
_0804C5CC: .4byte 0x00000E34
_0804C5D0:
	adds r6, #1
	adds r4, #0x28
_0804C5D4:
	cmp r6, #0x1d
	bhi _0804C62C
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _0804C5D0
	str r7, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _0804C61C
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
	b _0804C62C
	.2byte 0x0000
_0804C61C: .4byte sub_0802A104
_0804C620:
	ldr r2, _0804C648
	movs r0, #7
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
_0804C62C:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804C674
	bl sub_0801AB24
	cmp r0, #1
	beq _0804C658
	cmp r0, #1
	bgt _0804C64C
	cmp r0, #0
	beq _0804C652
	b _0804C66C
	.2byte 0x0000
_0804C648: .4byte 0x0000270F
_0804C64C:
	cmp r0, #2
	beq _0804C660
	b _0804C66C
_0804C652:
	bl sub_080576A8
	b _0804C66C
_0804C658:
	movs r0, #6
	bl sub_0801AB50
	b _0804C66C
_0804C660:
	movs r0, #6
	bl sub_0801AB90
	b _0804C66C
_0804C668:
	bl sub_080003F0
_0804C66C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804C668
_0804C674:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0804C5A8
