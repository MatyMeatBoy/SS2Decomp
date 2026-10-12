	thumb_func_start sub_080579D8
sub_080579D8: @ 0x080579D8
	push {r4, r5, lr}
	adds r4, r0, #0
	lsrs r5, r4, #3
	movs r0, #7
	ands r4, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _080579FC
	ldr r0, _080579F4
	ldr r1, [r0, #0]
	ldr r0, _080579F8
	b _08057A02
	.2byte 0x0000
_080579F4: .4byte gUnk_03005CF4
_080579F8: .4byte 0x000001C3
_080579FC:
	ldr r0, _08057A18
	ldr r1, [r0, #0]
	ldr r0, _08057A1C
_08057A02:
	adds r1, r1, r0
	adds r1, r1, r5
	movs r0, #1
	lsls r0, r4
	ldrb r2, [r1, #0]
	orrs r0, r2
	strb r0, [r1, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08057A18: .4byte gUnk_03005CF4
_08057A1C: .4byte 0x000001B7
	thumb_func_end sub_080579D8
