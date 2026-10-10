	thumb_func_start sub_0801E4CC
sub_0801E4CC: @ 0x0801E4CC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080020F4
	ldr r7, _0801E528
	movs r6, #0xa6
	lsls r6, r6, #1
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0801E530
	ldr r3, [r4, #0x20]
	cmp r3, #0xc6
	bhi _0801E530
	ldr r1, [r4, #0x1c]
	adds r1, r1, r5
	str r1, [r4, #0x1c]
	ldr r2, _0801E52C
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	cmp r1, r0
	blo _0801E530
	adds r0, r3, #1
	str r0, [r4, #0x20]
	ldrh r0, [r4, #0x1a]
	adds r0, #4
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x30]
	adds r0, #1
	strh r0, [r4, #0x30]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	bl sub_08061830
	movs r0, #1
	b _0801E532
_0801E528: .4byte gUnk_03003CE0
_0801E52C: .4byte gUnk_0848FF54
_0801E530:
	movs r0, #0
_0801E532:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0801E4CC
