	thumb_func_start sub_080137A0
sub_080137A0: @ 0x080137A0
	push {r4, lr}
	cmp r0, #1
	beq _080137E4
	cmp r0, #1
	blo _080137B0
	cmp r0, #2
	beq _08013818
	b _08013844
_080137B0:
	ldr r0, _080137E0
	ldr r3, [r0, #0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r3, r2
	movs r2, #0
	strh r2, [r1, #0]
	movs r4, #0x81
	lsls r4, r4, #1
	adds r1, r3, r4
	strh r2, [r1, #0]
	movs r1, #0
	adds r4, r0, #0
	movs r3, #0x82
	lsls r3, r3, #1
_080137CE:
	ldr r0, [r4, #0]
	adds r0, r0, r3
	adds r0, r0, r1
	strb r2, [r0, #0]
	adds r1, #1
	cmp r1, #0xb
	bls _080137CE
	b _08013844
	.2byte 0x0000
_080137E0: .4byte gUnk_030034E0
_080137E4:
	ldr r0, _08013814
	ldr r3, [r0, #0]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r3, r2
	movs r2, #0
	strh r2, [r1, #0]
	movs r4, #0x89
	lsls r4, r4, #1
	adds r1, r3, r4
	strh r2, [r1, #0]
	movs r1, #0
	adds r4, r0, #0
	movs r3, #0x8a
	lsls r3, r3, #1
_08013802:
	ldr r0, [r4, #0]
	adds r0, r0, r3
	adds r0, r0, r1
	strb r2, [r0, #0]
	adds r1, #1
	cmp r1, #0xb
	bls _08013802
	b _08013844
	.2byte 0x0000
_08013814: .4byte gUnk_030034E0
_08013818:
	ldr r0, _0801384C
	ldr r3, [r0, #0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r3, r2
	movs r2, #0
	strh r2, [r1, #0]
	movs r4, #0x91
	lsls r4, r4, #1
	adds r1, r3, r4
	strh r2, [r1, #0]
	movs r1, #0
	adds r4, r0, #0
	movs r3, #0x92
	lsls r3, r3, #1
_08013836:
	ldr r0, [r4, #0]
	adds r0, r0, r3
	adds r0, r0, r1
	strb r2, [r0, #0]
	adds r1, #1
	cmp r1, #0xb
	bls _08013836
_08013844:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_0801384C: .4byte gUnk_030034E0
	thumb_func_end sub_080137A0
