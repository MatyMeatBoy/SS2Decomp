	thumb_func_start sub_08066404
sub_08066404: @ 0x08066404
	push {r4, r5, r6, lr}
	ldr r6, _08066414
	ldr r2, [r6, #0]
	cmp r2, #0x31
	bls _08066418
	movs r0, #0
	b _0806647A
	.2byte 0x0000
_08066414: .4byte gUnk_03006338
_08066418:
	ldr r5, _08066480
	ldr r0, [r5, #0]
	ldr r1, _08066484
	adds r0, r0, r1
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08066478
	ldr r1, _08066488
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r4, r1, r0
	movs r0, #1
	str r0, [r4, #4]
	movs r0, #0x94
	strb r0, [r4, #0]
	ldr r0, [r5, #0]
	ldr r1, _08066484
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #8
	ldr r2, [r0, #0]
	adds r2, #1
	ldr r3, _0806648C
	ands r2, r3
	movs r3, #0x80
	lsls r3, r3, #0x13
	orrs r2, r3
	bl CpuSet
	ldr r0, [r5, #0]
	ldr r1, _08066484
	adds r0, r0, r1
	ldr r0, [r0, #0]
	lsls r2, r0, #2
	adds r0, r2, #4
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	beq _0806646E
	adds r0, #8
	subs r0, r0, r1
_0806646E:
	lsrs r0, r0, #3
	strb r0, [r4, #1]
	ldr r0, [r6, #0]
	adds r0, #1
	str r0, [r6, #0]
_08066478:
	movs r0, #1
_0806647A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08066480: .4byte gUnk_03005CF4
_08066484: .4byte 0x00001E4C
_08066488: .4byte gUnk_03006300
_0806648C: .4byte 0x001FFFFF
	thumb_func_end sub_08066404
