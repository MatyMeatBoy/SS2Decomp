	thumb_func_start sub_08057A5C
sub_08057A5C: @ 0x08057A5C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsrs r5, r4, #3
	movs r0, #7
	ands r4, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _08057A80
	ldr r0, _08057A78
	ldr r2, [r0, #0]
	ldr r0, _08057A7C
	b _08057A86
	.2byte 0x0000
_08057A78: .4byte gUnk_03005CF4
_08057A7C: .4byte 0x000001C3
_08057A80:
	ldr r0, _08057A9C
	ldr r2, [r0, #0]
	ldr r0, _08057AA0
_08057A86:
	adds r2, r2, r0
	adds r2, r2, r5
	movs r1, #1
	lsls r1, r4
	ldrb r0, [r2, #0]
	bics r0, r1
	strb r0, [r2, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08057A9C: .4byte gUnk_03005CF4
_08057AA0: .4byte 0x000001B7
	thumb_func_end sub_08057A5C
