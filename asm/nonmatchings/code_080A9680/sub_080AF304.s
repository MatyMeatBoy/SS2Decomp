	thumb_func_start sub_080AF304
sub_080AF304: @ 0x080AF304
	push {r4, r5, lr}
	ldr r0, _080AF348
	ldr r1, [r0, #0]
	movs r5, #0
	ldr r0, _080AF34C
	ldrb r0, [r0, #0]
	cmp r5, r0
	bhs _080AF332
	adds r4, r1, #0
_080AF316:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _080AF326
	adds r0, r4, #0
	bl sub_080003A8
_080AF326:
	adds r4, #0x28
	adds r5, #1
	ldr r0, _080AF34C
	ldrb r0, [r0, #0]
	cmp r5, r0
	blo _080AF316
_080AF332:
	ldr r4, _080AF348
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _080AF342
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
_080AF342:
	pop {r4, r5}
	pop {r0}
	bx r0
_080AF348: .4byte gUnk_03000784
_080AF34C: .4byte gUnk_03000780
	thumb_func_end sub_080AF304
