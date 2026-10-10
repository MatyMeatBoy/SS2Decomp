	thumb_func_start sub_080580F8
sub_080580F8: @ 0x080580F8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #0
	movs r1, #0
	ldr r0, _08058134
	ldr r0, [r0, #0]
	movs r2, #0xb8
	lsls r2, r2, #2
	adds r3, r0, r2
	adds r2, r0, #0
	ldr r7, _08058138
_08058110:
	ldrh r0, [r3, #0]
	cmp r0, r6
	bne _08058120
	adds r0, r2, r7
	ldrh r0, [r0, #0]
	cmp r0, r5
	bne _08058120
	adds r4, #1
_08058120:
	adds r3, #0x10
	adds r2, #0x10
	adds r1, #1
	cmp r1, #0x4a
	bls _08058110
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_08058134: .4byte gUnk_030034E0
_08058138: .4byte 0x000002E2
	thumb_func_end sub_080580F8
