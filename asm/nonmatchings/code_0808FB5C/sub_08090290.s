	thumb_func_start sub_08090290
sub_08090290: @ 0x08090290
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r1, r0, #0
	ldr r7, _080902AC
	ldr r0, [r7, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _080902B0
	adds r0, r1, #0
	bl sub_0802704C
	b _0809031E
	.2byte 0x0000
_080902AC: .4byte gUnk_03005CF4
_080902B0:
	bl sub_08056E90
	cmp r0, #0
	beq _0809031E
	movs r0, #1
	bl sub_080570DC
	movs r0, #0
	movs r1, #0
	bl sub_08056FB8
	bl sub_080020F4
	ldr r5, _0809032C
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0x68
	movs r1, #0
	mov r8, r1
	movs r6, #1
	strb r6, [r0, #0]
	bl sub_08056E78
	ldr r0, [r7, #0]
	mov r1, r8
	strh r1, [r0, #0x36]
	bl sub_080020F4
	adds r2, r0, #0
	muls r2, r4, r2
	adds r0, r5, #0
	adds r0, #0x30
	adds r2, r2, r0
	ldr r0, [r2, #0]
	movs r1, #3
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	mov r1, r8
	strh r1, [r0, #0x20]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #4
	strh r1, [r0, #0x1c]
	ldr r0, [r7, #0]
	strh r6, [r0, #0x30]
	strh r6, [r0, #0x24]
_0809031E:
	movs r0, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_0809032C: .4byte gUnk_03003CE0
	thumb_func_end sub_08090290
