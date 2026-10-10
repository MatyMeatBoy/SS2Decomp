	thumb_func_start sub_0801A2F0
sub_0801A2F0: @ 0x0801A2F0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080008C8
	movs r1, #0x64
	bl sub_080B95E4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r5, #0xff
	movs r3, #0
	ldrb r1, [r4, #1]
	b _0801A31A
_0801A30A:
	adds r3, #1
	adds r4, #4
	cmp r3, #2
	bhi _0801A320
	ldrb r0, [r4, #1]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0801A31A:
	cmp r2, r1
	bhs _0801A30A
	ldrb r5, [r4, #0]
_0801A320:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_0801A2F0
