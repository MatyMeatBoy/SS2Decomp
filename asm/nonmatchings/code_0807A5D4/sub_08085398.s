	thumb_func_start sub_08085398
sub_08085398: @ 0x08085398
	push {r4, r5, r6, lr}
	ldr r0, _080853A8
	ldr r0, [r0, #0]
	movs r1, #0xc4
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r4, [r0, #0]
	b _080853B0
_080853A8: .4byte gUnk_03006440
_080853AC:
	bl sub_080003F0
_080853B0:
	adds r0, r4, #0
	bl sub_08000470
	adds r6, r0, #0
	cmp r6, #0
	bne _080853AC
	ldr r5, _080853D8
	ldr r0, [r5, #0]
	movs r4, #0xc4
	lsls r4, r4, #3
	adds r0, r0, r4
	ldr r0, [r0, #0]
	bl sub_08001538
	ldr r0, [r5, #0]
	adds r0, r0, r4
	str r6, [r0, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080853D8: .4byte gUnk_03006440
	thumb_func_end sub_08085398
