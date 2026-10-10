	thumb_func_start sub_08001108
sub_08001108: @ 0x08001108
	push {r4, lr}
	lsls r0, r0, #0x18
	ldr r3, _08001128
	ldrh r2, [r3, #0]
	lsrs r4, r2, #8
	movs r1, #0xff
	ands r1, r2
	lsrs r0, r0, #0x10
	orrs r1, r0
	strh r1, [r3, #0]
	ldr r0, _0800112C
	strh r1, [r0, #0]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
_08001128: .4byte gUnk_03000004
_0800112C: .4byte 0x04000004
	thumb_func_end sub_08001108
