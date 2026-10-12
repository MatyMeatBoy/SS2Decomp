	thumb_func_start sub_08057B2C
sub_08057B2C: @ 0x08057B2C
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	bl sub_0800CE30
	cmp r0, #0
	beq _08057B4C
	ldr r0, _08057B48
	ldr r0, [r0, #0]
	movs r1, #0xde
	lsls r1, r1, #1
	b _08057B54
	.2byte 0x0000
_08057B48: .4byte gUnk_03005CF4
_08057B4C:
	ldr r0, _08057B60
	ldr r0, [r0, #0]
	movs r1, #0xd8
	lsls r1, r1, #1
_08057B54:
	adds r0, r0, r1
	adds r0, r0, r5
	strb r4, [r0, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
_08057B60: .4byte gUnk_03005CF4
	thumb_func_end sub_08057B2C
