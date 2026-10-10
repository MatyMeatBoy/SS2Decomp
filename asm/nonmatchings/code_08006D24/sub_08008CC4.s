	thumb_func_start sub_08008CC4
sub_08008CC4: @ 0x08008CC4
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r3, #2]
	cmp r0, r1
	bhs _08008CD8
	movs r0, #0
	b _08008D32
_08008CD8:
	ldr r0, [r3, #8]
	adds r3, r3, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, r3, r0
	ldrh r0, [r3, #4]
	ldrh r1, [r4, #0]
	cmp r0, r1
	bhi _08008CF0
	movs r0, #0
	strh r0, [r4, #0]
_08008CF0:
	ldr r0, [r3, #8]
	adds r2, r3, r0
	ldrh r5, [r4, #0]
	lsls r0, r5, #2
	adds r2, r2, r0
	movs r7, #0
	ldrh r1, [r6, #0]
	ldrh r0, [r2, #2]
	cmp r0, r1
	bhi _08008D2C
	adds r0, r5, #1
	strh r0, [r4, #0]
	strh r7, [r6, #0]
	ldrh r0, [r3, #4]
	ldrh r1, [r4, #0]
	cmp r0, r1
	bhi _08008D30
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08008D1C
	strh r7, [r4, #0]
	b _08008D30
_08008D1C:
	ldrh r0, [r2, #2]
	adds r0, #1
	strh r0, [r6, #0]
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r4, #0]
	movs r7, #1
	b _08008D30
_08008D2C:
	adds r0, r1, #1
	strh r0, [r6, #0]
_08008D30:
	adds r0, r7, #0
_08008D32:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08008CC4
