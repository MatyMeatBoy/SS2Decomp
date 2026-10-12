	thumb_func_start sub_0805921C
sub_0805921C: @ 0x0805921C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_0800CE30
	cmp r0, #0
	beq _08059238
	ldr r0, _08059234
	ldr r0, [r0, #0]
	movs r1, #0xde
	lsls r1, r1, #1
	b _08059240
_08059234: .4byte gUnk_03005CF4
_08059238:
	ldr r0, _0805924C
	ldr r0, [r0, #0]
	movs r1, #0xd8
	lsls r1, r1, #1
_08059240:
	adds r0, r0, r1
	strb r4, [r0, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805924C: .4byte gUnk_03005CF4
	thumb_func_end sub_0805921C
