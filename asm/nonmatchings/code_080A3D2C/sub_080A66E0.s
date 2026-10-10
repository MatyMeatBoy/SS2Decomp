	thumb_func_start sub_080A66E0
sub_080A66E0: @ 0x080A66E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp, #0]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _080A6758
	ldrb r0, [r0, #0]
	cmp r0, #0xff
	bne _080A66FC
	b _080A689E
_080A66FC:
	ldr r1, [sp, #0]
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne _080A6764
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	ldr r2, _080A675C
	mov r8, r2
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r4, #0
	muls r2, r5, r2
	mov r1, r8
	adds r1, #0x8c
	adds r2, r2, r1
	adds r1, r0, #0
	muls r1, r5, r1
	mov r0, r8
	adds r0, #0x94
	adds r1, r1, r0
	ldr r6, _080A6760
	ldr r0, [r6, #0]
	str r0, [r1, #0]
	str r0, [r2, #0]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	adds r2, r4, #0
	muls r2, r5, r2
	mov r1, r8
	adds r1, #0x90
	adds r2, r2, r1
	muls r0, r5, r0
	adds r1, #8
	adds r0, r0, r1
	ldr r1, [r6, #4]
	str r1, [r0, #0]
	str r1, [r2, #0]
	bl sub_08015CB4
	b _080A682E
_080A6758: .4byte gUnk_03000406
_080A675C: .4byte gUnk_03003CE0
_080A6760: .4byte gUnk_085187B4
_080A6764:
	bl sub_08002164
	adds r5, r0, #0
	subs r5, #1
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	ldr r7, _080A687C
	movs r1, #0xa6
	lsls r1, r1, #1
	mov r8, r1
	mov r2, r8
	muls r2, r4, r2
	adds r4, r2, #0
	ldr r1, _080A6880
	adds r4, r4, r1
	ldr r6, _080A6884
	lsls r0, r0, #3
	lsls r5, r5, #5
	adds r0, r0, r5
	adds r0, r0, r6
	ldr r2, _080A6888
	mov r9, r2
	ldr r0, [r0, #0]
	ldr r1, [r2, #0]
	subs r0, r0, r1
	movs r1, #0x14
	bl __divsi3
	ldr r1, [r4, #0]
	adds r1, r1, r0
	str r1, [r4, #0]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	mov r1, r8
	muls r1, r4, r1
	adds r4, r1, #0
	movs r2, #0x90
	adds r2, r2, r7
	mov sl, r2
	add r4, sl
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r6, #4
	adds r0, r0, r6
	ldr r0, [r0, #0]
	mov r2, r9
	ldr r1, [r2, #4]
	subs r0, r0, r1
	movs r1, #0x14
	bl __divsi3
	ldr r1, [r4, #0]
	adds r1, r1, r0
	str r1, [r4, #0]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	mov r2, r8
	muls r2, r4, r2
	adds r1, r7, #0
	adds r1, #0x94
	adds r2, r2, r1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, _080A6880
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	mov r2, r8
	muls r2, r4, r2
	adds r1, r7, #0
	adds r1, #0x98
	adds r2, r2, r1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, sl
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	bl sub_080020F4
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r7
	movs r1, #5
	strh r1, [r0, #0x1c]
_080A682E:
	ldr r1, [sp, #0]
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _080A689E
	movs r0, #0
	strb r0, [r1, #0]
	movs r2, #1
	str r2, [sp, #4]
	ldr r1, _080A688C
	movs r0, #0xff
	strb r0, [r1, #0]
	bl sub_08015D04
	bl sub_08015C38
	bl sub_080020F4
	ldr r2, _080A687C
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xb0
	ldr r1, _080A6890
	strh r1, [r0, #0]
	bl sub_0800CE30
	cmp r0, #1
	bne _080A6894
	movs r0, #0
	movs r1, #0x64
	movs r2, #3
	bl sub_08029A7C
	b _080A689E
_080A687C: .4byte gUnk_03003CE0
_080A6880: .4byte gUnk_03003D6C
_080A6884: .4byte gUnk_085187BC
_080A6888: .4byte gUnk_085187B4
_080A688C: .4byte gUnk_03000406
_080A6890: .4byte 0x0000FFFE
_080A6894:
	movs r0, #0
	movs r1, #0x46
	movs r2, #3
	bl sub_08029A7C
_080A689E:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_080A66E0
