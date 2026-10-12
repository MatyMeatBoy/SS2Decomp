	thumb_func_start sub_08058620
sub_08058620: @ 0x08058620
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r5, _08058654
	ldr r3, [r5, #0]
	ldrh r4, [r3, #0xa]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _0805864C
	lsls r1, r4, #2
	ldr r6, _08058658
	adds r0, r3, r6
	adds r0, r0, r1
	str r2, [r0, #0]
	adds r0, r2, #0
	adds r1, r4, #0
	bl sub_08023ED8
	ldr r1, [r5, #0]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
_0805864C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08058654: .4byte gUnk_03005CF4
_08058658: .4byte 0x00000724
	thumb_func_end sub_08058620
