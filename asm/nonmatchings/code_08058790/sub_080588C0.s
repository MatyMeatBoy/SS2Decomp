	thumb_func_start sub_080588C0
sub_080588C0: @ 0x080588C0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0800CE30
	cmp r0, #0
	beq _080588DC
	ldr r0, _080588D8
	ldr r1, [r0, #0]
	movs r0, #0x90
	lsls r0, r0, #2
	b _080588E2
_080588D8: .4byte gUnk_03005CF4
_080588DC:
	ldr r0, _080588F8
	ldr r1, [r0, #0]
	ldr r0, _080588FC
_080588E2:
	adds r1, r1, r0
	adds r1, r1, r4
	movs r0, #1
	lsls r0, r5
	ldrb r2, [r1, #0]
	orrs r0, r2
	strb r0, [r1, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_080588F8: .4byte gUnk_03005CF4
_080588FC: .4byte 0x00000236
	thumb_func_end sub_080588C0
