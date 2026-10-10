	thumb_func_start sub_0800191C
sub_0800191C: @ 0x0800191C
	push {r4, r5, lr}
	movs r5, #0
	ldr r4, _08001984
	ldr r2, [r4, #0x28]
	ldrb r1, [r4, #0xb]
	strb r1, [r2, #0]
	ldr r3, [r4, #0x28]
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #3]
	eors r1, r2
	strb r1, [r3, #1]
	ldr r1, [r4, #0x28]
	strh r5, [r1, #2]
	ldr r1, [r4, #0x28]
	adds r1, #4
	ldr r2, _08001988
	bl sub_080B8578
	movs r2, #0
	ldr r1, [r4, #0x28]
_08001944:
	ldrh r0, [r1, #0]
	adds r5, r5, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #0xd
	bls _08001944
	adds r2, r4, #0
	ldr r1, [r2, #0x28]
	mvns r0, r5
	subs r0, #0x10
	strh r0, [r1, #2]
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq _08001966
	ldr r1, _0800198C
	movs r0, #0
	strh r0, [r1, #0]
_08001966:
	movs r0, #1
	negs r0, r0
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq _0800197E
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _0800197E
	ldr r1, _0800198C
	movs r0, #0xc0
	strh r0, [r1, #0]
_0800197E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08001984: .4byte gUnk_030024B0
_08001988: .4byte 0x04000006
_0800198C: .4byte 0x0400010E
	thumb_func_end sub_0800191C
