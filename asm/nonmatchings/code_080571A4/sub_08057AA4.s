	thumb_func_start sub_08057AA4
sub_08057AA4: @ 0x08057AA4
	push {r4, lr}
	adds r3, r0, #0
	lsrs r4, r3, #3
	movs r0, #7
	ands r3, r0
	cmp r1, #0
	beq _08057AC4
	ldr r0, _08057ABC
	ldr r2, [r0, #0]
	ldr r0, _08057AC0
	b _08057ACA
	.2byte 0x0000
_08057ABC: .4byte gUnk_03005CF4
_08057AC0: .4byte 0x000001C3
_08057AC4:
	ldr r0, _08057AE0
	ldr r2, [r0, #0]
	ldr r0, _08057AE4
_08057ACA:
	adds r2, r2, r0
	adds r2, r2, r4
	movs r1, #1
	lsls r1, r3
	ldrb r0, [r2, #0]
	bics r0, r1
	strb r0, [r2, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08057AE0: .4byte gUnk_03005CF4
_08057AE4: .4byte 0x000001B7
	thumb_func_end sub_08057AA4
