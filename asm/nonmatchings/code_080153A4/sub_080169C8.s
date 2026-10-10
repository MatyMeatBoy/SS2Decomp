	thumb_func_start sub_080169C8
sub_080169C8: @ 0x080169C8
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	movs r7, #0
	movs r6, #0
_080169D0:
	ldr r0, _08016A60
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08016A06
	adds r0, r4, #0
	bl sub_080003A8
	ldr r0, _08016A64
	ldr r0, [r0, #0]
	adds r2, r7, r0
	adds r1, r2, #0
	adds r1, #0x5c
	movs r0, #0
	strh r0, [r1, #0]
	movs r0, #0xb
	strh r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x86
	ldrb r0, [r0, #0]
	adds r1, #0x28
	ldrb r1, [r1, #0]
	movs r2, #3
	bl sub_080571A4
_08016A06:
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r7, r7, r0
	adds r6, #0x28
	adds r5, #1
	cmp r5, #4
	bls _080169D0
	movs r5, #0
	ldr r6, _08016A68
	movs r4, #0
_08016A1A:
	ldr r0, [r6, #0]
	adds r0, r0, r4
	bl sub_08000470
	cmp r0, #0
	beq _08016A2E
	ldr r0, [r6, #0]
	adds r0, r0, r4
	bl sub_080003A8
_08016A2E:
	adds r4, #0x28
	adds r5, #1
	cmp r5, #1
	bls _08016A1A
	movs r5, #0
	ldr r2, _08016A6C
	ldr r3, _08016A70
	ldr r4, _08016A74
	movs r1, #0
	ldr r0, _08016A78
_08016A42:
	str r1, [r0, #8]
	str r1, [r0, #4]
	str r1, [r0, #0]
	adds r0, #0xc
	adds r5, #1
	cmp r5, #2
	bls _08016A42
	movs r0, #0
	strh r0, [r2, #0]
	str r0, [r3, #0]
	str r0, [r4, #0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08016A60: .4byte gUnk_03004220
_08016A64: .4byte gUnk_030056F4
_08016A68: .4byte gUnk_030056F0
_08016A6C: .4byte gUnk_03005724
_08016A70: .4byte gUnk_030056FC
_08016A74: .4byte gUnk_030056F8
_08016A78: .4byte gUnk_03005700
	thumb_func_end sub_080169C8
