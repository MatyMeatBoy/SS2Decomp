	thumb_func_start sub_0805896C
sub_0805896C: @ 0x0805896C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0800CE30
	cmp r0, #0
	beq _08058988
	ldr r0, _08058984
	ldr r0, [r0, #0]
	lsls r1, r4, #2
	adds r0, #0xf8
	b _08058990
_08058984: .4byte gUnk_03005CF4
_08058988:
	ldr r0, _0805899C
	ldr r0, [r0, #0]
	lsls r1, r4, #2
	adds r0, #0xa8
_08058990:
	adds r0, r0, r1
	str r5, [r0, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805899C: .4byte gUnk_03005CF4
	thumb_func_end sub_0805896C
