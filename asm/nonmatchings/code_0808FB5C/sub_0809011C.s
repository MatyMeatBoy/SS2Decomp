	thumb_func_start sub_0809011C
sub_0809011C: @ 0x0809011C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r1, r0, #0
	ldr r7, _08090138
	ldr r0, [r7, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0809013C
	adds r0, r1, #0
	bl sub_0802704C
	b _08090198
	.2byte 0x0000
_08090138: .4byte gUnk_03005CF4
_0809013C:
	bl sub_08056E90
	cmp r0, #0
	beq _08090198
	movs r0, #0
	movs r1, #2
	bl sub_08056FB8
	bl sub_08056E78
	bl sub_0800CDAC
	ldr r2, [r7, #0]
	movs r0, #0
	mov r8, r0
	movs r4, #1
	strh r4, [r2, #0x36]
	ldr r0, [r2, #0x74]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r2, #0x74]
	bl sub_080020F4
	ldr r6, _080901A4
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	adds r0, r6, #0
	adds r0, #0x30
	adds r2, r2, r0
	ldr r0, [r2, #0]
	movs r1, #3
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	mov r1, r8
	strh r1, [r0, #0x20]
	ldr r0, [r7, #0]
	strh r4, [r0, #0x30]
	strh r4, [r0, #0x24]
_08090198:
	movs r0, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080901A4: .4byte gUnk_03003CE0
	thumb_func_end sub_0809011C
