	thumb_func_start sub_0805D028
sub_0805D028: @ 0x0805D028
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, _0805D060
	ldr r3, [r0, #0]
	adds r0, r3, #0
	adds r0, #0x6a
	ldrh r1, [r0, #0]
	lsls r0, r1, #4
	subs r0, r0, r1
	cmp r2, r0
	blt _0805D044
	movs r2, #0
_0805D044:
	lsls r0, r2, #4
	adds r0, r0, r3
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r4, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805D060: .4byte gUnk_030034E0
	thumb_func_end sub_0805D028
