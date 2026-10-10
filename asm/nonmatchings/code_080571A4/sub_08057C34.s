	thumb_func_start sub_08057C34
sub_08057C34: @ 0x08057C34
	push {r4, lr}
	adds r4, r0, #0
	subs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	bne _08057C54
	ldr r0, _08057C50
	ldr r0, [r0, #0]
	movs r1, #1
	lsls r1, r4
	ldr r0, [r0, #0x78]
	b _08057C60
	.2byte 0x0000
_08057C50: .4byte gUnk_03005CF4
_08057C54:
	ldr r0, _08057C68
	ldr r0, [r0, #0]
	adds r0, #0x80
	movs r1, #1
	lsls r1, r4
	ldr r0, [r0, #0]
_08057C60:
	ands r0, r1
	pop {r4}
	pop {r1}
	bx r1
_08057C68: .4byte gUnk_03005CF4
	thumb_func_end sub_08057C34
