	thumb_func_start sub_08016C88
sub_08016C88: @ 0x08016C88
	push {r4, r5, r6, lr}
	ldr r4, [sp, #0x10]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r0, #8
	lsls r1, r1, #8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	asrs r1, r1, #0x10
	subs r3, r3, r1
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	adds r0, r6, #0
	muls r0, r6, r0
	lsls r3, r3, #0x10
	asrs r5, r3, #0x10
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r0, r1
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r0, r4
	ble _08016D38
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsls r1, r0, #3
	lsrs r2, r0, #0x1d
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bls _08016CE6
	cmp r2, #6
	bhi _08016CE4
	adds r2, #1
	b _08016CE6
_08016CE4:
	movs r2, #0
_08016CE6:
	cmp r2, #7
	bhi _08016D38
	lsls r0, r2, #2
	ldr r1, _08016CF4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08016CF4: .4byte _08016CF8
_08016CF8:
	.4byte _08016D18
_08016CFC: .4byte _08016D1C
_08016D00: .4byte _08016D20
_08016D04: .4byte _08016D24
_08016D08: .4byte _08016D28
_08016D0C: .4byte _08016D2C
_08016D10: .4byte _08016D30
_08016D14: .4byte _08016D34
_08016D18:
	movs r0, #0x10
	b _08016D3A
_08016D1C:
	movs r0, #0x90
	b _08016D3A
_08016D20:
	movs r0, #0x80
	b _08016D3A
_08016D24:
	movs r0, #0xa0
	b _08016D3A
_08016D28:
	movs r0, #0x20
	b _08016D3A
_08016D2C:
	movs r0, #0x60
	b _08016D3A
_08016D30:
	movs r0, #0x40
	b _08016D3A
_08016D34:
	movs r0, #0x50
	b _08016D3A
_08016D38:
	movs r0, #0
_08016D3A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08016C88
