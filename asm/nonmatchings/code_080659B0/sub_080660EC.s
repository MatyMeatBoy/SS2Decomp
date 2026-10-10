	thumb_func_start sub_080660EC
sub_080660EC: @ 0x080660EC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08066100
	ldr r2, [r0, #0]
	adds r7, r0, #0
	cmp r2, #0x31
	bls _08066116
	movs r0, #0
	b _0806616E
	.2byte 0x0000
_08066100: .4byte gUnk_03006338
_08066104:
	ldrh r0, [r6, #4]
	ldrh r2, [r1, #4]
	adds r0, r0, r2
	strh r0, [r1, #4]
	ldrb r0, [r6, #3]
	strb r0, [r1, #3]
	ldrb r0, [r6, #2]
	strb r0, [r1, #2]
	b _0806616C
_08066116:
	ldr r0, _08066174
	ldr r5, [r0, #0]
	movs r3, #0
	mov ip, r0
	cmp r3, r2
	bhs _08066142
_08066122:
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _0806613A
	ldrb r0, [r5, #0]
	cmp r0, #0x8a
	bne _0806613A
	adds r1, r5, #0
	adds r1, #8
	ldrb r0, [r5, #8]
	ldrb r4, [r6, #0]
	cmp r0, r4
	beq _08066104
_0806613A:
	adds r3, #1
	adds r5, #0x88
	cmp r3, r2
	blo _08066122
_08066142:
	ldr r1, [r7, #0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	mov r2, ip
	ldr r1, [r2, #0]
	adds r5, r1, r0
	movs r4, #1
	str r4, [r5, #4]
	movs r0, #0x8a
	strb r0, [r5, #0]
	adds r1, r5, #0
	adds r1, #8
	ldr r2, _08066178
	adds r0, r6, #0
	bl CpuSet
	strb r4, [r5, #1]
	ldr r0, [r7, #0]
	adds r0, #1
	str r0, [r7, #0]
_0806616C:
	movs r0, #1
_0806616E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08066174: .4byte gUnk_03006300
_08066178: .4byte 0x04000002
	thumb_func_end sub_080660EC
