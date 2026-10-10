	thumb_func_start sub_08092E40
sub_08092E40: @ 0x08092E40
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r0, _08092EA0
	movs r1, #1
	strb r1, [r0, #0]
	ldr r0, _08092EA4
	strb r1, [r0, #0]
	ldr r5, _08092EA8
	ldr r7, _08092EAC
_08092E52:
	ldr r1, _08092EB0
	lsls r0, r6, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrb r0, [r7, #0]
	muls r0, r1, r0
	strh r0, [r5, #0]
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08092E6C
	adds r0, #0x3f
_08092E6C:
	asrs r0, r0, #6
	strh r0, [r5, #0]
	movs r2, #0
	ldrsh r0, [r5, r2]
	ldrb r1, [r7, #0]
	bl __modsi3
	strh r0, [r5, #0]
	ldr r0, _08092EA4
	ldrb r0, [r0, #0]
	adds r0, r6, r0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	bl sub_080003F0
	ldr r0, _08092EA0
	ldrb r4, [r0, #0]
	cmp r4, #0
	bne _08092E52
	bl sub_0800048C
	str r4, [r0, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08092EA0: .4byte gUnk_03000259
_08092EA4: .4byte gUnk_0300025C
_08092EA8: .4byte gUnk_0300025A
_08092EAC: .4byte gUnk_03000258
_08092EB0: .4byte gUnk_080B9704
	thumb_func_end sub_08092E40
