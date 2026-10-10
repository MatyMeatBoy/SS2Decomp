	thumb_func_start sub_080657C4
sub_080657C4: @ 0x080657C4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, _080657D4
	ldr r4, [r0, #0]
	movs r5, #0
	b _080657DC
	.2byte 0x0000
_080657D4: .4byte gUnk_03006030
_080657D8:
	adds r5, #1
	adds r4, #0x28
_080657DC:
	cmp r5, #3
	bhi _0806582E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080657D8
	b _080657F0
_080657EC:
	bl sub_080003F0
_080657F0:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _080657EC
	movs r0, #0x3c
	str r0, [r4, #8]
	cmp r6, #0
	beq _0806580C
	cmp r6, #1
	beq _08065814
	b _08065818
_0806580C:
	ldr r0, _08065810
	b _08065816
_08065810: .4byte sub_080636B0
_08065814:
	ldr r0, _08065834
_08065816:
	str r0, [r4, #0xc]
_08065818:
	ldr r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08000274
_0806582E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08065834: .4byte sub_08063B80
	thumb_func_end sub_080657C4
