	thumb_func_start sub_0800BBD8
sub_0800BBD8: @ 0x0800BBD8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	bl sub_0800CCCC
	cmp r0, #0
	bne _0800BBFC
	ldr r1, _0800BC04
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	strh r6, [r0, #4]
	strh r5, [r0, #6]
_0800BBFC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_0800BC04: .4byte gUnk_03003170
	thumb_func_end sub_0800BBD8
