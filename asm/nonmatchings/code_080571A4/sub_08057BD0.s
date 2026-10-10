	thumb_func_start sub_08057BD0
sub_08057BD0: @ 0x08057BD0
	push {r4, lr}
	adds r4, r0, #0
	subs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	bne _08057BF4
	ldr r0, _08057BF0
	ldr r2, [r0, #0]
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0x74]
	orrs r0, r1
	str r0, [r2, #0x74]
	b _08057C02
	.2byte 0x0000
_08057BF0: .4byte gUnk_03005CF4
_08057BF4:
	ldr r0, _08057C08
	ldr r2, [r0, #0]
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0x7c]
	orrs r0, r1
	str r0, [r2, #0x7c]
_08057C02:
	pop {r4}
	pop {r1}
	bx r1
_08057C08: .4byte gUnk_03005CF4
	thumb_func_end sub_08057BD0
