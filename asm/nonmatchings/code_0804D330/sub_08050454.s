	thumb_func_start sub_08050454
sub_08050454: @ 0x08050454
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, _08050470
	ldr r2, [r0, #0]
	movs r1, #2
	ldr r0, [r2, #0x38]
	ands r0, r1
	cmp r0, #0
	bne _080504CC
	ldr r7, _08050474
	ldr r0, _08050478
	adds r4, r2, r0
	movs r6, #0
	b _08050480
_08050470: .4byte gUnk_03005CF4
_08050474: .4byte sub_08050524
_08050478: .4byte 0x00000E34
_0805047C:
	adds r6, #1
	adds r4, #0x28
_08050480:
	cmp r6, #0x1d
	bhi _080504DA
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _0805047C
	str r7, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _080504C8
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
	b _080504DA
	.2byte 0x0000
_080504C8: .4byte sub_0802A104
_080504CC:
	movs r1, #0xde
	lsls r1, r1, #2
	movs r0, #7
	movs r2, #0xa0
	movs r3, #0
	bl sub_08028AAC
_080504DA:
	bl sub_0800CC98
	cmp r0, #0
	bne _0805051C
	bl sub_0801AB24
	cmp r0, #1
	beq _08050500
	cmp r0, #1
	bgt _080504F4
	cmp r0, #0
	beq _080504FA
	b _08050514
_080504F4:
	cmp r0, #2
	beq _08050508
	b _08050514
_080504FA:
	bl sub_080576A8
	b _08050514
_08050500:
	movs r0, #6
	bl sub_0801AB50
	b _08050514
_08050508:
	movs r0, #6
	bl sub_0801AB90
	b _08050514
_08050510:
	bl sub_080003F0
_08050514:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08050510
_0805051C:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08050454
