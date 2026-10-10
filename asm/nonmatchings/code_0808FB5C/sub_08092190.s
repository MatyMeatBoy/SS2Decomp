	thumb_func_start sub_08092190
sub_08092190: @ 0x08092190
	push {r4, lr}
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #9
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080921AA
	negs r0, r0
_080921AA:
	lsls r0, r0, #0x18
	ldr r4, _080921DC
	ldr r1, _080921E0
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08000274
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080921DC: .4byte gUnk_03000170
_080921E0: .4byte gUnk_03000198
	thumb_func_end sub_08092190
