	thumb_func_start sub_0805813C
sub_0805813C: @ 0x0805813C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #0
	movs r1, #0
	ldr r0, _08058178
	ldr r0, [r0, #0]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r3, r0, r2
	adds r2, r0, #0
	movs r7, #0xa9
	lsls r7, r7, #1
_08058156:
	ldrh r0, [r3, #0]
	cmp r0, r6
	bne _08058166
	adds r0, r2, r7
	ldrh r0, [r0, #0]
	cmp r0, r5
	bne _08058166
	adds r4, #1
_08058166:
	adds r3, #0x10
	adds r2, #0x10
	adds r1, #1
	cmp r1, #0x18
	bls _08058156
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08058178: .4byte gUnk_030034E0
	thumb_func_end sub_0805813C
