	thumb_func_start sub_08057AE8
sub_08057AE8: @ 0x08057AE8
	push {r4, r5, lr}
	adds r4, r0, #0
	lsrs r5, r4, #3
	movs r0, #7
	ands r4, r0
	bl sub_0800CE30
	cmp r0, #0
	bne _08057B0C
	ldr r0, _08057B04
	ldr r0, [r0, #0]
	ldr r1, _08057B08
	b _08057B12
	.2byte 0x0000
_08057B04: .4byte gUnk_03005CF4
_08057B08: .4byte 0x000001B7
_08057B0C:
	ldr r0, _08057B24
	ldr r0, [r0, #0]
	ldr r1, _08057B28
_08057B12:
	adds r0, r0, r1
	adds r0, r0, r5
	ldrb r0, [r0, #0]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	pop {r4, r5}
	pop {r1}
	bx r1
_08057B24: .4byte gUnk_03005CF4
_08057B28: .4byte 0x000001C3
	thumb_func_end sub_08057AE8
