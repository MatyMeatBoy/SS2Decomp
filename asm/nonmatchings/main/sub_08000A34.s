	thumb_func_start sub_08000A34
sub_08000A34: @ 0x08000A34
	push {r4, r5, r6, lr}
	ldr r5, [sp, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r5, r5, #0x10
	ldr r6, _08000A88
	negs r2, r2
	lsrs r2, r2, #0x1f
	lsls r2, r2, #4
	ldrb r4, [r6, #0]
	movs r3, #0x11
	negs r3, r3
	ands r3, r4
	orrs r3, r2
	negs r1, r1
	lsrs r1, r1, #0x1f
	lsls r1, r1, #5
	movs r2, #0x21
	negs r2, r2
	ands r3, r2
	orrs r3, r1
	negs r0, r0
	lsrs r0, r0, #0x1f
	lsls r0, r0, #6
	movs r1, #0x41
	negs r1, r1
	ands r3, r1
	orrs r3, r0
	strb r3, [r6, #0]
	cmp r5, #0
	beq _08000A82
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r6, #0]
	strh r0, [r1, #0]
_08000A82:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08000A88: .4byte gUnk_0300129C
	thumb_func_end sub_08000A34
