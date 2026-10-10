	thumb_func_start sub_0800903C
sub_0800903C: @ 0x0800903C
	push {r4, r5, r6, lr}
	ldr r4, [sp, #0x10]
	ldr r5, [sp, #0x14]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	ldr r6, _08009078
	mov ip, r6
	lsrs r2, r2, #0xa
	orrs r0, r2
	lsrs r1, r1, #8
	orrs r0, r1
	mov r1, ip
	adds r1, #0x40
	strh r0, [r1, #0]
	lsrs r4, r4, #8
	orrs r3, r4
	mov r0, ip
	adds r0, #0x42
	strh r3, [r0, #0]
	adds r0, #2
	strh r5, [r0, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08009078: .4byte gUnk_03001250
	thumb_func_end sub_0800903C
