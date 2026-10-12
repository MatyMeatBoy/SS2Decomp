	thumb_func_start sub_08058094
sub_08058094: @ 0x08058094
	push {r4, lr}
	movs r3, #0
	ldr r1, _080580E8
	ldr r0, [r1, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r2, r0, r4
	adds r4, r1, #0
	movs r1, #0x18
_080580A6:
	ldrh r0, [r2, #0]
	cmp r0, #0xa
	bne _080580B0
	ldr r0, [r2, #4]
	adds r3, r3, r0
_080580B0:
	subs r1, #1
	adds r2, #0x10
	cmp r1, #0
	bge _080580A6
	ldr r0, [r4, #0]
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r2, r0, r1
	adds r0, #0x6a
	ldrh r1, [r0, #0]
	lsls r0, r1, #4
	subs r0, r0, r1
	cmp r0, #0
	ble _080580E0
	adds r1, r0, #0
_080580CE:
	ldrh r0, [r2, #0]
	cmp r0, #0xa
	bne _080580D8
	ldr r0, [r2, #4]
	adds r3, r3, r0
_080580D8:
	subs r1, #1
	adds r2, #0x10
	cmp r1, #0
	bne _080580CE
_080580E0:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
_080580E8: .4byte gUnk_030034E0
	thumb_func_end sub_08058094
