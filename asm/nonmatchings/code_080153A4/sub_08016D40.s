	thumb_func_start sub_08016D40
sub_08016D40: @ 0x08016D40
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r1, _08016D80
	adds r0, r5, r1
	ldrb r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08016D88
	ldr r2, _08016D84
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r0, #0]
	lsrs r1, r1, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #5
	ldr r1, [r2, #0]
	adds r1, r1, r0
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	str r0, [r5, #0x24]
	ldr r0, [r1, #0x18]
	asrs r0, r0, #8
	b _08016DB0
	.2byte 0x0000
_08016D80: .4byte 0x00000201
_08016D84: .4byte gUnk_030056F4
_08016D88:
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0, #0]
	lsrs r0, r0, #4
	subs r1, #0xb0
	muls r1, r0, r1
	ldr r0, _08016DFC
	adds r1, r1, r0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r1, #0]
	ldrh r0, [r0, #0]
	lsrs r0, r0, #4
	str r0, [r5, #0x24]
	ldr r0, [r1, #0]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
_08016DB0:
	str r0, [r5, #0x28]
	ldr r0, _08016E00
	ldr r0, [r0, #0]
	movs r1, #0x19
	bl sub_080B95E4
	ldrh r2, [r5, #0]
	lsls r1, r2, #2
	adds r1, r1, r2
	cmp r0, r1
	bne _08016DDA
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp, #0]
	bl sub_08016C88
	strh r0, [r5, #4]
_08016DDA:
	adds r1, r5, #0
	adds r1, #0x44
	ldrh r0, [r1, #0]
	adds r0, #1
	movs r2, #0
	strh r0, [r1, #0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _08016DF2
	strh r2, [r1, #0]
	strh r2, [r5, #4]
_08016DF2:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08016DFC: .4byte gUnk_03003CE0
_08016E00: .4byte gUnk_03002344
	thumb_func_end sub_08016D40
