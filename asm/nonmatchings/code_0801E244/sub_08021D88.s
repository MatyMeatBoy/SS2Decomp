	thumb_func_start sub_08021D88
sub_08021D88: @ 0x08021D88
	push {r4, lr}
	ldr r4, _08021DA4
	movs r0, #0xa0
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0]
	ldr r1, _08021DA8
	movs r0, #0
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08021DA4: .4byte gUnk_03005CE0
_08021DA8: .4byte gUnk_03005CE4
	thumb_func_end sub_08021D88
