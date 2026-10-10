	thumb_func_start sub_08057B98
sub_08057B98: @ 0x08057B98
	push {r4, lr}
	adds r4, r0, #0
	subs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	bne _08057BB8
	ldr r0, _08057BB4
	ldr r0, [r0, #0]
	movs r1, #1
	lsls r1, r4
	ldr r0, [r0, #0x74]
	b _08057BC2
	.2byte 0x0000
_08057BB4: .4byte gUnk_03005CF4
_08057BB8:
	ldr r0, _08057BCC
	ldr r0, [r0, #0]
	movs r1, #1
	lsls r1, r4
	ldr r0, [r0, #0x7c]
_08057BC2:
	ands r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000
_08057BCC: .4byte gUnk_03005CF4
	thumb_func_end sub_08057B98
