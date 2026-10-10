	thumb_func_start sub_0804C408
sub_0804C408: @ 0x0804C408
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	movs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _0804C424
	ldr r0, _0804C420
	ldr r1, [r0, #0]
	movs r2, #0xe2
	lsls r2, r2, #1
	b _0804C42C
_0804C420: .4byte gUnk_03005CF4
_0804C424:
	ldr r0, _0804C444
	ldr r1, [r0, #0]
	movs r2, #0xdc
	lsls r2, r2, #1
_0804C42C:
	adds r1, r1, r2
	ldrb r1, [r1, #0]
	asrs r1, r1, #2
	ands r1, r4
	cmp r1, #0
	bne _0804C498
	ldr r7, _0804C448
	ldr r0, [r0, #0]
	ldr r1, _0804C44C
	adds r4, r0, r1
	movs r6, #0
	b _0804C454
_0804C444: .4byte gUnk_03005CF4
_0804C448: .4byte sub_0804C4E8
_0804C44C: .4byte 0x00000E34
_0804C450:
	adds r6, #1
	adds r4, #0x28
_0804C454:
	cmp r6, #0x1d
	bhi _0804C498
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _0804C450
	str r7, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _0804C4B4
	str r1, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #6
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_0804C498:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804C4E0
	bl sub_0801AB24
	cmp r0, #1
	beq _0804C4C4
	cmp r0, #1
	bgt _0804C4B8
	cmp r0, #0
	beq _0804C4BE
	b _0804C4D8
	.2byte 0x0000
_0804C4B4: .4byte sub_0802A104
_0804C4B8:
	cmp r0, #2
	beq _0804C4CC
	b _0804C4D8
_0804C4BE:
	bl sub_080576A8
	b _0804C4D8
_0804C4C4:
	movs r0, #6
	bl sub_0801AB50
	b _0804C4D8
_0804C4CC:
	movs r0, #6
	bl sub_0801AB90
	b _0804C4D8
_0804C4D4:
	bl sub_080003F0
_0804C4D8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804C4D4
_0804C4E0:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0804C408
