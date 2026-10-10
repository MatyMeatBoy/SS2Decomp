	thumb_func_start sub_0801E46C
sub_0801E46C: @ 0x0801E46C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080020F4
	ldr r3, [r5, #0x10]
	ldr r1, [r4, #0x20]
	adds r2, r1, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	adds r1, #0xd
	cmp r0, r1
	bge _0801E488
	adds r0, r1, #0
_0801E488:
	cmp r3, r0
	ble _0801E492
	lsls r0, r2, #3
	adds r1, r0, r2
	b _0801E496
_0801E492:
	lsls r0, r3, #1
	adds r1, r0, r3
_0801E496:
	adds r0, r5, #0
	adds r0, #0x22
	ldrb r0, [r0, #0]
	cmp r0, #3
	bne _0801E4A6
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #1
_0801E4A6:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_0801E46C
