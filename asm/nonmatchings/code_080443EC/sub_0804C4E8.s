	thumb_func_start sub_0804C4E8
sub_0804C4E8: @ 0x0804C4E8
	push {r4, lr}
	cmp r0, #0
	beq _0804C4F4
	cmp r0, #1
	beq _0804C504
	b _0804C59E
_0804C4F4:
	ldr r0, _0804C500
	movs r1, #1
	movs r2, #0
	bl sub_08068820
	b _0804C59E
_0804C500: .4byte sub_0804C4E8
_0804C504:
	movs r0, #0xc4
	lsls r0, r0, #9
	movs r1, #0xa0
	lsls r1, r1, #8
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r4, #4
	b _0804C522
_0804C518:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804C52E
_0804C522:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804C518
_0804C52E:
	movs r0, #0xc0
	lsls r0, r0, #9
	movs r1, #0xa0
	lsls r1, r1, #8
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r0, #0xc8
	lsls r0, r0, #9
	movs r1, #0xa0
	lsls r1, r1, #8
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	ldr r0, _0804C580
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804C560
	ldr r0, _0804C584
	bl sub_08006D08
_0804C560:
	movs r1, #0xc4
	lsls r1, r1, #1
	movs r0, #7
	movs r2, #0xa0
	movs r3, #0
	bl sub_08028AAC
	bl sub_0800CE30
	cmp r0, #0
	beq _0804C58C
	ldr r0, _0804C588
	ldr r1, [r0, #0]
	movs r0, #0xe2
	lsls r0, r0, #1
	b _0804C594
_0804C580: .4byte gUnk_030027D0
_0804C584: .4byte 0x0000017B
_0804C588: .4byte gUnk_03005CF4
_0804C58C:
	ldr r0, _0804C5A4
	ldr r1, [r0, #0]
	movs r0, #0xdc
	lsls r0, r0, #1
_0804C594:
	adds r1, r1, r0
	ldrb r2, [r1, #0]
	movs r0, #4
	orrs r0, r2
	strb r0, [r1, #0]
_0804C59E:
	pop {r4}
	pop {r0}
	bx r0
_0804C5A4: .4byte gUnk_03005CF4
	thumb_func_end sub_0804C4E8
