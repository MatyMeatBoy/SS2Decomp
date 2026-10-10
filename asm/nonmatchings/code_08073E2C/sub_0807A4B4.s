	thumb_func_start sub_0807A4B4
sub_0807A4B4: @ 0x0807A4B4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	bl sub_08013850
	bl sub_0800CB30
	adds r0, r5, #0
	bl sub_0807A20C
	cmp r0, #0
	bne _0807A508
	ldr r4, _0807A504
	ldr r2, [r4, #0]
	movs r0, #0x6c
	adds r1, r5, #0
	muls r1, r0, r1
	adds r1, r1, r6
	ldrb r0, [r1, #1]
	movs r3, #0
	strh r0, [r2, #0xa]
	ldrb r0, [r1, #2]
	strh r0, [r2, #0xc]
	strh r5, [r2, #0xe]
	strb r3, [r6, #4]
	movs r2, #0
	adds r3, r1, #0
	adds r3, #0x10
_0807A4EE:
	ldr r0, [r4, #0]
	adds r0, r0, r2
	adds r1, r3, r2
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r2, #1
	cmp r2, #9
	bls _0807A4EE
	bl sub_0801ACB8
	b _0807A538
_0807A504: .4byte gUnk_030034E0
_0807A508:
	movs r0, #0x6c
	muls r0, r5, r0
	adds r4, r0, r6
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _0807A518
	bl sub_0800CE08
_0807A518:
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0807A538
	movs r2, #0
	ldr r5, _0807A540
	movs r4, #0xf3
	lsls r4, r4, #1
	movs r3, #0
_0807A528:
	ldr r0, [r5, #0]
	lsls r1, r2, #5
	adds r0, r0, r1
	adds r0, r0, r4
	strh r3, [r0, #0]
	adds r2, #1
	cmp r2, #0xf
	bls _0807A528
_0807A538:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0807A540: .4byte gUnk_03004210
	thumb_func_end sub_0807A4B4
