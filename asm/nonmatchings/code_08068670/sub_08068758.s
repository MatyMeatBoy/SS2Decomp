	thumb_func_start sub_08068758
sub_08068758: @ 0x08068758
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r3, _08068798
	ldr r2, [r3, #0]
	cmp r2, #0x31
	bhi _080687A0
	ldr r1, _0806879C
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	movs r2, #1
	str r2, [r1, #4]
	movs r0, #0x9a
	strb r0, [r1, #0]
	lsls r0, r4, #0x10
	orrs r0, r5
	str r0, [r1, #8]
	ldrh r0, [r6, #0xc]
	str r0, [r1, #0xc]
	strb r2, [r1, #1]
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
	movs r0, #1
	b _080687A2
	.2byte 0x0000
_08068798: .4byte gUnk_03006338
_0806879C: .4byte gUnk_03006300
_080687A0:
	movs r0, #0
_080687A2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08068758
