	thumb_func_start sub_08058DB0
sub_08058DB0: @ 0x08058DB0
	push {r4, r5, r6, lr}
	bl sub_0800CD8C
	negs r1, r0
	orrs r1, r0
	lsrs r5, r1, #0x1f
	ldr r6, _08058DDC
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	bne _08058DD2
	movs r5, #1
_08058DD2:
	movs r4, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r6, r6, r0
	b _08058DE2
_08058DDC: .4byte gUnk_03003CE0
_08058DE0:
	adds r4, #1
_08058DE2:
	bl sub_08002164
	cmp r4, r0
	bhs _08058E00
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r4, r0
	adds r0, r0, r6
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	bne _08058DE0
	movs r5, #1
_08058E00:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08058DB0
