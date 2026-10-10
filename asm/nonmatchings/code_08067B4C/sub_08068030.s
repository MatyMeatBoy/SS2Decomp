	thumb_func_start sub_08068030
sub_08068030: @ 0x08068030
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _08068060
	ldr r2, [r3, #0]
	cmp r2, #0x31
	bhi _08068068
	ldr r1, _08068064
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	movs r2, #1
	str r2, [r1, #4]
	movs r0, #0xa1
	strb r0, [r1, #0]
	str r4, [r1, #8]
	strb r2, [r1, #1]
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
	movs r0, #1
	b _0806806A
	.2byte 0x0000
_08068060: .4byte gUnk_03006338
_08068064: .4byte gUnk_03006300
_08068068:
	movs r0, #0
_0806806A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08068030
