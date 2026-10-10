	thumb_func_start sub_0801A298
sub_0801A298: @ 0x0801A298
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _0801A2EC
	ldr r0, [r0, #0]
	movs r1, #0x19
	bl sub_080B95E4
	ldrh r2, [r5, #0]
	lsls r1, r2, #2
	adds r1, r1, r2
	cmp r0, r1
	bne _0801A2CA
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp, #0]
	bl sub_08016C88
	strh r0, [r5, #4]
_0801A2CA:
	adds r1, r5, #0
	adds r1, #0x44
	ldrh r0, [r1, #0]
	adds r0, #1
	movs r2, #0
	strh r0, [r1, #0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _0801A2E2
	strh r2, [r1, #0]
	strh r2, [r5, #4]
_0801A2E2:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_0801A2EC: .4byte gUnk_03002344
	thumb_func_end sub_0801A298
