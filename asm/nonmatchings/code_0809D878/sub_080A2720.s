	thumb_func_start sub_080A2720
sub_080A2720: @ 0x080A2720
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	cmp r6, #0
	bne _080A273C
	ldr r0, _080A2738
	b _080A273E
_080A2738: .4byte gUnk_03000350
_080A273C:
	ldr r0, _080A2748
_080A273E:
	ldr r4, [r0, #0]
	movs r7, #8
	movs r5, #0
	b _080A2754
	.2byte 0x0000
_080A2748: .4byte gUnk_03000354
_080A274C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #0x28
_080A2754:
	cmp r5, r7
	bhs _080A27A8
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080A274C
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080A274C
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _080A27A8
	cmp r6, #0
	beq _080A2780
	cmp r6, #1
	beq _080A2788
	b _080A278C
_080A2780:
	ldr r0, _080A2784
	b _080A278A
_080A2784: .4byte sub_080A1FF4
_080A2788:
	ldr r0, _080A27B4
_080A278A:
	str r0, [r4, #0xc]
_080A278C:
	ldr r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	movs r0, #0x46
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	mov r2, r8
	bl sub_08000274
_080A27A8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A27B4: .4byte sub_080A230C
	thumb_func_end sub_080A2720
