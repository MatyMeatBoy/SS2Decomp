	thumb_func_start sub_08057038
sub_08057038: @ 0x08057038
	push {r4, lr}
	movs r2, #0
	movs r1, #0xa
	ldr r0, _08057064
	ldr r0, [r0, #0]
	movs r4, #1
	ldr r3, [r0, #0xc]
_08057046:
	adds r0, r4, #0
	lsls r0, r1
	ands r0, r3
	cmp r0, #0
	beq _08057052
	adds r2, #1
_08057052:
	adds r1, #1
	cmp r1, #0x13
	bls _08057046
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000
_08057064: .4byte gUnk_03004210
	thumb_func_end sub_08057038
