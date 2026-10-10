	thumb_func_start sub_08001394
sub_08001394: @ 0x08001394
	push {r4, r5, r6, r7, lr}
	ldr r0, _080013C0
	ldr r4, [r0, #0]
	movs r5, #0
	ldr r0, _080013C4
	ldr r1, [r0, #0]
	adds r7, r0, #0
	cmp r5, r1
	bhs _080013EA
	ldr r6, _080013C8
_080013A8:
	ldr r2, [r4, #8]
	cmp r2, #0
	bge _080013CC
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	lsls r2, r2, #1
	lsrs r2, r2, #3
	ands r2, r6
	bl CpuFastSet
	b _080013DE
	.2byte 0x0000
_080013C0: .4byte gUnk_0300235C
_080013C4: .4byte gUnk_03002358
_080013C8: .4byte 0x001FFFFF
_080013CC:
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	lsrs r2, r2, #2
	ands r2, r6
	movs r3, #0x80
	lsls r3, r3, #0x13
	orrs r2, r3
	bl CpuSet
_080013DE:
	adds r5, #1
	adds r4, #0xc
	ldr r0, _080013F4
	ldr r0, [r0, #0]
	cmp r5, r0
	blo _080013A8
_080013EA:
	movs r0, #0
	str r0, [r7, #0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080013F4: .4byte gUnk_03002358
	thumb_func_end sub_08001394
