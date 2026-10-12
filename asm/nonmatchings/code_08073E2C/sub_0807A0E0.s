	thumb_func_start sub_0807A0E0
sub_0807A0E0: @ 0x0807A0E0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _0807A11C
	adds r4, r4, r0
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x14]
	bl sub_0806898C
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, #0xc2
	ldrh r1, [r4, #0]
	subs r1, r1, r0
	strh r1, [r4, #0]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0807A114
	movs r0, #0
	strh r0, [r4, #0]
_0807A114:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_0807A11C: .4byte gUnk_03003CE0
	thumb_func_end sub_0807A0E0
