	thumb_func_start sub_080589A0
sub_080589A0: @ 0x080589A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0800CE30
	cmp r0, #0
	beq _080589C0
	ldr r0, _080589BC
	ldr r0, [r0, #0]
	lsls r1, r4, #2
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r0, r2
	b _080589C8
_080589BC: .4byte gUnk_03005CF4
_080589C0:
	ldr r0, _080589D4
	ldr r0, [r0, #0]
	lsls r1, r4, #2
	adds r0, #0xd0
_080589C8:
	adds r0, r0, r1
	str r5, [r0, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_080589D4: .4byte gUnk_03005CF4
	thumb_func_end sub_080589A0
