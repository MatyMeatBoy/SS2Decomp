	thumb_func_start sub_08016114
sub_08016114: @ 0x08016114
	push {r4, r5, r6, lr}
	ldr r5, _08016188
	movs r0, #0xe6
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r5, #0]
	ldr r0, _0801618C
	movs r1, #0
	str r1, [r0, #0]
	ldr r0, _08016190
	str r1, [r0, #0]
	ldr r0, _08016194
	strh r1, [r0, #0]
	ldr r4, _08016198
	movs r0, #0x50
	bl sub_08001494
	str r0, [r4, #0]
	ldr r4, _0801619C
	movs r0, #0x10
	bl sub_08001494
	str r0, [r4, #0]
	ldr r4, [r5, #0]
	movs r6, #0
	movs r5, #0
_0801614A:
	adds r0, r6, #4
	bl sub_0807A064
	strh r5, [r4, #0]
	strh r5, [r4, #8]
	strh r5, [r4, #0xc]
	strh r5, [r4, #0x10]
	str r5, [r4, #0x14]
	str r5, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x4a
	strh r5, [r0, #0]
	adds r6, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r4, r4, r0
	cmp r6, #4
	bls _0801614A
	movs r6, #0
	movs r1, #0
	ldr r0, _080161A0
_08016174:
	str r1, [r0, #8]
	str r1, [r0, #4]
	str r1, [r0, #0]
	adds r0, #0xc
	adds r6, #1
	cmp r6, #2
	bls _08016174
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08016188: .4byte gUnk_030056F4
_0801618C: .4byte gUnk_030056FC
_08016190: .4byte gUnk_030056F8
_08016194: .4byte gUnk_03005724
_08016198: .4byte gUnk_030056F0
_0801619C: .4byte gUnk_030042E8
_080161A0: .4byte gUnk_03005700
	thumb_func_end sub_08016114
