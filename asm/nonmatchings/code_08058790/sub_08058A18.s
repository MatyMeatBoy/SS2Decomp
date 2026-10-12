	thumb_func_start sub_08058A18
sub_08058A18: @ 0x08058A18
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800CE30
	cmp r0, #0
	beq _08058A30
	ldr r0, _08058A2C
	ldr r2, [r0, #0]
	adds r2, #0x88
	b _08058A36
_08058A2C: .4byte gUnk_03005CF4
_08058A30:
	ldr r0, _08058A48
	ldr r2, [r0, #0]
	adds r2, #0x84
_08058A36:
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08058A48: .4byte gUnk_03005CF4
	thumb_func_end sub_08058A18
