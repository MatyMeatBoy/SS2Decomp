	thumb_func_start sub_080AF2BC
sub_080AF2BC: @ 0x080AF2BC
	push {r4, r5, r6, lr}
	ldr r5, _080AF2FC
	movs r0, #0
	str r0, [r5, #0]
	ldr r4, _080AF300
	ldrb r1, [r4, #0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r5, #0]
	movs r1, #0
	ldrb r0, [r4, #0]
	cmp r1, r0
	bge _080AF2F4
	adds r6, r5, #0
	movs r5, #0
	adds r3, r4, #0
	movs r2, #0
_080AF2E4:
	ldr r0, [r6, #0]
	adds r0, r2, r0
	str r5, [r0, #8]
	adds r2, #0x28
	adds r1, #1
	ldrb r0, [r3, #0]
	cmp r1, r0
	blt _080AF2E4
_080AF2F4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_080AF2FC: .4byte gUnk_03000784
_080AF300: .4byte gUnk_03000780
	thumb_func_end sub_080AF2BC
