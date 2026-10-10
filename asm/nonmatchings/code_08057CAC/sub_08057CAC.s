	thumb_func_start sub_08057CAC
sub_08057CAC: @ 0x08057CAC
	push {r4, lr}
	adds r4, r0, #0
	subs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	bne _08057CD0
	ldr r0, _08057CCC
	ldr r2, [r0, #0]
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0x78]
	bics r0, r1
	str r0, [r2, #0x78]
	b _08057CE0
	.2byte 0x0000
_08057CCC: .4byte gUnk_03005CF4
_08057CD0:
	ldr r0, _08057CE8
	ldr r2, [r0, #0]
	adds r2, #0x80
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
_08057CE0:
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000
_08057CE8: .4byte gUnk_03005CF4
	thumb_func_end sub_08057CAC
