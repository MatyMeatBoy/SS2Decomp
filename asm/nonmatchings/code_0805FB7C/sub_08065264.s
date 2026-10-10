	thumb_func_start sub_08065264
sub_08065264: @ 0x08065264
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	adds r6, r1, #0
	mov ip, r2
	ldr r0, [sp, #0x30]
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r2, [r4, #0x2e]
	ldrh r0, [r4, #0x2c]
	adds r1, r2, r0
	strh r1, [r4, #0x2c]
	lsls r0, r2, #0x10
	cmp r0, #0
	ble _08065296
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r7, #0x30
	ldrsh r1, [r4, r7]
	cmp r0, r1
	ble _08065296
	negs r0, r2
	strh r0, [r4, #0x2e]
_08065296:
	ldrh r2, [r4, #0x2e]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080652B0
	movs r7, #0x2c
	ldrsh r1, [r4, r7]
	movs r7, #0x32
	ldrsh r0, [r4, r7]
	cmp r1, r0
	bge _080652B0
	negs r0, r2
	strh r0, [r4, #0x2e]
_080652B0:
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	str r0, [sp, #0xc]
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	movs r0, #0xff
	str r0, [sp, #0x18]
	adds r0, r6, #0
	mov r1, ip
	adds r2, r5, #0
	bl sub_08007F0C
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08065264
