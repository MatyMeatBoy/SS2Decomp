	thumb_func_start sub_080A8114
sub_080A8114: @ 0x080A8114
	push {r4, lr}
	ldr r4, _080A815C
	ldr r0, [r4, #0]
	bl sub_08000470
	cmp r0, #0
	bne _080A812A
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _080A8156
_080A812A:
	ldr r1, [r4, #0]
	movs r0, #0x44
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	bl sub_08001494
	ldr r1, [r4, #0]
	str r0, [r1, #0x20]
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, _080A8160
	str r0, [r1, #0xc]
	movs r0, #0
	str r0, [r1, #0x24]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_08000274
_080A8156:
	pop {r4}
	pop {r0}
	bx r0
_080A815C: .4byte gUnk_03000418
_080A8160: .4byte sub_080A74E8
	thumb_func_end sub_080A8114
