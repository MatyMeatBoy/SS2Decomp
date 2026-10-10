	thumb_func_start sub_08067E60
sub_08067E60: @ 0x08067E60
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, _08067EBC
	ldr r3, [r1, #0]
	movs r5, #0
	ldr r2, _08067EC0
	ldr r1, [r2, #0]
	cmp r5, r1
	bhs _08067EB6
	adds r6, r2, #0
_08067E74:
	ldr r1, [r3, #4]
	adds r4, r3, #0
	adds r4, #0x88
	cmp r1, #1
	bne _08067EAC
	ldrb r1, [r3, #0]
	cmp r1, #0x91
	bne _08067EAC
	ldrh r1, [r3, #0xe]
	cmp r1, r7
	bne _08067EAC
	movs r0, #0x31
	subs r0, r0, r5
	lsls r2, r0, #4
	adds r2, r2, r0
	lsls r2, r2, #1
	ldr r0, _08067EC4
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r2, r0
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_080B8578
	ldr r1, [r6, #0]
	subs r1, #1
	str r1, [r6, #0]
_08067EAC:
	adds r5, #1
	adds r3, r4, #0
	ldr r1, [r6, #0]
	cmp r5, r1
	blo _08067E74
_08067EB6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08067EBC: .4byte gUnk_03006300
_08067EC0: .4byte gUnk_03006338
_08067EC4: .4byte 0x001FFFFF
	thumb_func_end sub_08067E60
