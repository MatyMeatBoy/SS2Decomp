	thumb_func_start sub_08085330
sub_08085330: @ 0x08085330
	push {lr}
	movs r3, #0
	ldr r0, _0808535C
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	cmp r0, #4
	bne _08085360
	movs r2, #0
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r1, r0
_08085346:
	ldrh r0, [r1, #0]
	cmp r0, #0xa
	bne _08085350
	ldr r0, [r1, #4]
	adds r3, r3, r0
_08085350:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x4a
	bls _08085346
	b _08085366
	.2byte 0x0000
_0808535C: .4byte gUnk_03006440
_08085360:
	bl sub_0805D404
	adds r3, r0, #0
_08085366:
	adds r0, r3, #0
	pop {r1}
	bx r1
	thumb_func_end sub_08085330
