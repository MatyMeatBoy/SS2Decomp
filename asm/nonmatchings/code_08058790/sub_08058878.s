	thumb_func_start sub_08058878
sub_08058878: @ 0x08058878
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0800CE30
	cmp r0, #0
	beq _08058894
	ldr r0, _08058890
	ldr r0, [r0, #0]
	movs r1, #0x90
	lsls r1, r1, #2
	b _0805889A
_08058890: .4byte gUnk_03005CF4
_08058894:
	ldr r0, _080588B0
	ldr r0, [r0, #0]
	ldr r1, _080588B4
_0805889A:
	adds r0, r0, r1
	adds r0, r0, r4
	ldrb r0, [r0, #0]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080588B8
	movs r0, #1
	b _080588BA
	.2byte 0x0000
_080588B0: .4byte gUnk_03005CF4
_080588B4: .4byte 0x00000236
_080588B8:
	movs r0, #0
_080588BA:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_08058878
