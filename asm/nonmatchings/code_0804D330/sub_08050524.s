	thumb_func_start sub_08050524
sub_08050524: @ 0x08050524
	push {r4, lr}
	cmp r0, #0
	beq _08050530
	cmp r0, #1
	beq _08050540
	b _080505B6
_08050530:
	ldr r0, _0805053C
	movs r1, #1
	movs r2, #0
	bl sub_08068820
	b _080505B6
_0805053C: .4byte sub_08050524
_08050540:
	movs r0, #0xde
	lsls r0, r0, #0xa
	movs r1, #0xa0
	lsls r1, r1, #8
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r4, #4
	b _0805055E
_08050554:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0805056A
_0805055E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08050554
_0805056A:
	movs r0, #0xdc
	lsls r0, r0, #0xa
	movs r1, #0xa0
	lsls r1, r1, #8
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r0, #0xe0
	lsls r0, r0, #0xa
	movs r1, #0xa0
	lsls r1, r1, #8
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	ldr r0, _080505BC
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805059C
	ldr r0, _080505C0
	bl sub_08006D08
_0805059C:
	movs r1, #0xde
	lsls r1, r1, #2
	movs r0, #7
	movs r2, #0xa0
	movs r3, #0
	bl sub_08028AAC
	ldr r0, _080505C4
	ldr r2, [r0, #0]
	movs r1, #2
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
_080505B6:
	pop {r4}
	pop {r0}
	bx r0
_080505BC: .4byte gUnk_030027D0
_080505C0: .4byte 0x0000017B
_080505C4: .4byte gUnk_03005CF4
	thumb_func_end sub_08050524
