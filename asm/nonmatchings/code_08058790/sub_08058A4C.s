	thumb_func_start sub_08058A4C
sub_08058A4C: @ 0x08058A4C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800CE30
	cmp r0, #0
	beq _08058A64
	ldr r0, _08058A60
	ldr r2, [r0, #0]
	adds r2, #0x88
	b _08058A6A
_08058A60: .4byte gUnk_03005CF4
_08058A64:
	ldr r0, _08058A7C
	ldr r2, [r0, #0]
	adds r2, #0x84
_08058A6A:
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08058A7C: .4byte gUnk_03005CF4
	thumb_func_end sub_08058A4C
