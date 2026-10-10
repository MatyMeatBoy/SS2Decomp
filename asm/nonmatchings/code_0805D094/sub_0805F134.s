	thumb_func_start sub_0805F134
sub_0805F134: @ 0x0805F134
	push {r4, lr}
	ldr r4, _0805F150
	movs r0, #0x88
	lsls r0, r0, #2
	bl sub_08001494
	str r0, [r4, #0]
	ldr r1, _0805F154
	movs r0, #0
	strb r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805F150: .4byte gUnk_03005D68
_0805F154: .4byte gUnk_03005D6C
	thumb_func_end sub_0805F134
