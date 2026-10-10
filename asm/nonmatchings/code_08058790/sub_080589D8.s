	thumb_func_start sub_080589D8
sub_080589D8: @ 0x080589D8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800CE30
	cmp r0, #0
	beq _080589F4
	movs r1, #1
	lsls r1, r4
	ldr r0, _080589F0
	ldr r0, [r0, #0]
	adds r0, #0x88
	b _080589FE
_080589F0: .4byte gUnk_03005CF4
_080589F4:
	movs r1, #1
	lsls r1, r4
	ldr r0, _08058A0C
	ldr r0, [r0, #0]
	adds r0, #0x84
_080589FE:
	ldr r0, [r0, #0]
	ands r1, r0
	cmp r1, #0
	beq _08058A10
	movs r0, #1
	b _08058A12
	.2byte 0x0000
_08058A0C: .4byte gUnk_03005CF4
_08058A10:
	movs r0, #0
_08058A12:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_080589D8
