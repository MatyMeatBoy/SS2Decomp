	thumb_func_start sub_080008C8
sub_080008C8: @ 0x080008C8
	push {r4, r5, r6, r7, lr}
	ldr r2, _08000938
	ldrb r1, [r2, #0]
	ldrb r0, [r2, #1]
	eors r1, r0
	movs r0, #2
	ands r1, r0
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	negs r0, r1
	lsrs r0, r0, #0x1f
	movs r4, #0
	adds r5, r2, #0
	adds r6, r5, #0
	movs r7, #1
_080008E6:
	adds r3, r4, r6
	ldrb r2, [r3, #0]
	lsrs r1, r2, #1
	lsls r0, r0, #7
	orrs r1, r0
	adds r0, r7, #0
	ands r0, r2
	strb r1, [r3, #0]
	adds r4, #1
	cmp r4, #7
	ble _080008E6
	ldrb r1, [r5, #2]
	movs r2, #7
	adds r0, r2, #0
	ands r0, r1
	adds r0, r0, r5
	ldrb r0, [r0, #0]
	ldrb r3, [r5, #3]
	adds r1, r2, #0
	ands r1, r3
	adds r1, r1, r5
	ldrb r1, [r1, #0]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r3, [r5, #0]
	adds r1, r2, #0
	ands r1, r3
	adds r1, r1, r5
	ldrb r1, [r1, #0]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r5, #1]
	ands r2, r1
	adds r2, r2, r5
	ldrb r1, [r2, #0]
	lsls r1, r1, #0x18
	orrs r0, r1
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_08000938: .4byte gUnk_03001318
	thumb_func_end sub_080008C8
