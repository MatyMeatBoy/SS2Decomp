	thumb_func_start sub_0800BC08
sub_0800BC08: @ 0x0800BC08
	push {r4, r5, lr}
	ldr r4, _0800BC40
	mov ip, r4
	mov r5, ip
	adds r5, #0x7c
	adds r4, #0x84
	ldrh r4, [r4, #0]
	ldrh r5, [r5, #0]
	adds r4, r4, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r4
	strh r0, [r2, #0]
	mov r2, ip
	adds r2, #0x7e
	mov r0, ip
	adds r0, #0x86
	ldrh r0, [r0, #0]
	ldrh r2, [r2, #0]
	adds r0, r0, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r3, #0]
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
_0800BC40: .4byte gUnk_03003170
	thumb_func_end sub_0800BC08
