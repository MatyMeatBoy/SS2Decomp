	thumb_func_start sub_08094530
sub_08094530: @ 0x08094530
	push {r4, lr}
	ldr r4, _08094588
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _08094582
	bl sub_08000470
	cmp r0, #0
	bne _0809454A
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _08094582
_0809454A:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	ldr r1, [r4, #0]
	str r0, [r1, #0x20]
	bl sub_080003F0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0809454A
	ldr r0, _08094588
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x20]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0, #0x10]
	ldr r1, _0809458C
	str r1, [r0, #0xc]
	movs r1, #0
	str r1, [r0, #0x24]
	movs r1, #0x44
	str r1, [r0, #8]
	movs r1, #0
	movs r2, #0
	bl sub_08000274
_08094582:
	pop {r4}
	pop {r0}
	bx r0
_08094588: .4byte gUnk_03000270
_0809458C: .4byte sub_080941B4
	thumb_func_end sub_08094530
