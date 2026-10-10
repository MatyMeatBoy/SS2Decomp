	thumb_func_start sub_08000D0C
sub_08000D0C: @ 0x08000D0C
	push {r4, r5, r6, lr}
	ldr r2, _08000D74
	ldrh r1, [r2, #0]
	movs r0, #3
	ands r0, r1
	ldr r5, _08000D78
	ldr r4, _08000D7C
	ldr r6, _08000D80
	cmp r0, #0
	beq _08000D2C
	movs r3, #3
_08000D22:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000D22
_08000D2C:
	ldr r1, _08000D84
	movs r0, #0
	strh r0, [r5, #0]
	strh r0, [r1, #0]
	ldrh r0, [r4, #0]
	movs r1, #2
	bics r0, r1
	strh r0, [r4, #0]
	ldr r1, _08000D88
	strh r0, [r1, #0]
	ldr r2, _08000D74
	ldrh r1, [r2, #0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08000D58
	movs r3, #3
_08000D4E:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000D4E
_08000D58:
	ldr r1, _08000D84
	movs r0, #1
	strh r0, [r5, #0]
	strh r0, [r1, #0]
	movs r0, #0x11
	negs r0, r0
	ldrh r1, [r6, #0]
	ands r0, r1
	strh r0, [r6, #0]
	ldr r1, _08000D74
	strh r0, [r1, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08000D74: .4byte 0x04000004
_08000D78: .4byte gUnk_03000000
_08000D7C: .4byte gUnk_03000002
_08000D80: .4byte gUnk_03000004
_08000D84: .4byte 0x04000208
_08000D88: .4byte 0x04000200
	thumb_func_end sub_08000D0C
