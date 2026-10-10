	thumb_func_start sub_0805D5F4
sub_0805D5F4: @ 0x0805D5F4
	push {r4, r5, lr}
	adds r3, r0, #0
	cmp r3, #0
	bge _0805D5FE
	movs r3, #0
_0805D5FE:
	ldr r0, _0805D63C
	lsls r1, r3, #4
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r1, r2
	ldr r0, [r0, #0]
	adds r2, r0, r1
	movs r4, #1
	negs r4, r4
	adds r1, r3, #0
	cmp r3, #0x18
	bgt _0805D634
	ldr r5, _0805D640
_0805D618:
	ldrh r0, [r2, #0]
	cmp r0, #0xa
	bne _0805D62C
	ldr r0, [r2, #4]
	cmp r4, r0
	bge _0805D62C
	cmp r0, r5
	beq _0805D62C
	adds r3, r1, #0
	adds r4, r0, #0
_0805D62C:
	adds r1, #1
	adds r2, #0x10
	cmp r1, #0x18
	ble _0805D618
_0805D634:
	cmp r4, #0
	blt _0805D644
	adds r0, r3, #0
	b _0805D648
_0805D63C: .4byte gUnk_030034E0
_0805D640: .4byte 0x000186A0
_0805D644:
	movs r0, #1
	negs r0, r0
_0805D648:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_0805D5F4
