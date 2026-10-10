	thumb_func_start sub_08013BC0
sub_08013BC0: @ 0x08013BC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0800D1B0
	adds r5, r0, #0
	cmp r5, #0
	bne _08013C26
	adds r3, r4, #0
	adds r3, #0xc4
	adds r2, r4, #0
	adds r2, #0x88
	ldrh r0, [r3, #0]
	ldrh r1, [r2, #0]
	subs r0, r0, r1
	strh r0, [r3, #0]
	movs r1, #0x8a
	adds r1, r1, r4
	mov ip, r1
	ldrh r1, [r1, #0]
	subs r0, r0, r1
	strh r0, [r3, #0]
	strh r5, [r2, #0]
	mov r2, ip
	strh r5, [r2, #0]
	movs r6, #0
	ldrsh r1, [r3, r6]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r1, r0
	cmp r1, #0
	bne _08013C06
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bne _08013C1E
_08013C06:
	ldr r2, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r2, r0
	cmp r2, #0
	bne _08013C18
	strh r2, [r3, #0]
	movs r0, #1
	b _08013C34
_08013C18:
	movs r0, #1
	strh r0, [r3, #0]
	b _08013C32
_08013C1E:
	adds r0, r4, #0
	adds r0, #0xe0
	str r1, [r0, #0]
	b _08013C32
_08013C26:
	adds r0, r4, #0
	adds r0, #0x88
	movs r1, #0
	strh r1, [r0, #0]
	adds r0, #2
	strh r1, [r0, #0]
_08013C32:
	movs r0, #0
_08013C34:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08013BC0
