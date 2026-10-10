	thumb_func_start sub_08001040
sub_08001040: @ 0x08001040
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _0800109C
	ldrh r1, [r2, #0]
	movs r0, #3
	ands r0, r1
	ldr r6, _080010A0
	ldr r4, _080010A4
	cmp r0, #0
	beq _08001062
	movs r3, #3
_08001058:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08001058
_08001062:
	ldr r1, _080010A8
	movs r0, #0
	strh r0, [r6, #0]
	strh r0, [r1, #0]
	ldrh r1, [r4, #0]
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r4, #0]
	ldr r2, _0800109C
	strh r0, [r2, #0]
	ldrh r1, [r2, #0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0800108C
	movs r3, #3
_08001082:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08001082
_0800108C:
	ldr r1, _080010A8
	movs r0, #1
	strh r0, [r6, #0]
	strh r0, [r1, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_0800109C: .4byte 0x04000004
_080010A0: .4byte gUnk_03000000
_080010A4: .4byte gUnk_03000004
_080010A8: .4byte 0x04000208
	thumb_func_end sub_08001040
