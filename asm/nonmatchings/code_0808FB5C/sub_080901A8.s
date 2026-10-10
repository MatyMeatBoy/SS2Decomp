	thumb_func_start sub_080901A8
sub_080901A8: @ 0x080901A8
	push {lr}
	adds r1, r0, #0
	ldr r0, _080901C0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _080901C4
	adds r0, r1, #0
	bl sub_0802704C
	b _08090214
	.2byte 0x0000
_080901C0: .4byte gUnk_03005CF4
_080901C4:
	bl sub_08056E90
	cmp r0, #0
	beq _08090214
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _080901DC
_080901D8:
	bl sub_080003F0
_080901DC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080901D8
	bl sub_0800BB40
	ldr r0, _08090208
	ldr r1, [r0, #0]
	ldr r0, _0809020C
	adds r3, r1, r0
	ldr r2, _08090210
	ldr r0, [r1, #0x40]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #1
	strh r0, [r1, #0x30]
	strh r0, [r1, #0x24]
	b _08090216
_08090208: .4byte gUnk_03005CF4
_0809020C: .4byte 0x0000071C
_08090210: .4byte gUnk_08514FAC
_08090214:
	movs r0, #0
_08090216:
	pop {r1}
	bx r1
	thumb_func_end sub_080901A8
