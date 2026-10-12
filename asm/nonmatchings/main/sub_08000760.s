	thumb_func_start sub_08000760
sub_08000760: @ 0x08000760
	push {r4, r5, r6, r7, lr}
	ldr r4, _080007AC
	ldr r3, _080007B0
	ldrh r2, [r3, #0]
	strh r2, [r4, #0]
	ldr r0, _080007B4
	ldrh r1, [r0, #0]
	ldr r5, _080007B8
	adds r0, r5, #0
	eors r1, r0
	strh r1, [r3, #0]
	ldr r0, _080007BC
	adds r5, r1, #0
	bics r5, r2
	strh r5, [r0, #0]
	movs r0, #0xf0
	adds r6, r0, #0
	ands r6, r1
	ands r0, r2
	adds r7, r4, #0
	adds r4, r3, #0
	cmp r0, r6
	bne _08000808
	ldr r5, _080007C0
	ldrh r0, [r5, #0]
	adds r0, #1
	strh r0, [r5, #0]
	ldr r1, _080007C4
	ldrh r3, [r1, #0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r3, #0
	cmp r0, r1
	bne _080007CC
	ldr r0, _080007C8
	strh r6, [r0, #0]
	b _08000816
	.2byte 0x0000
_080007AC: .4byte gUnk_03001298
_080007B0: .4byte gUnk_0300130C
_080007B4: .4byte 0x04000130
_080007B8: .4byte 0x000003FF
_080007BC: .4byte gUnk_03001324
_080007C0: .4byte gUnk_03001320
_080007C4: .4byte gUnk_03001730
_080007C8: .4byte gUnk_03001308
_080007CC:
	cmp r0, r1
	bls _080007FC
	ldr r2, _080007F0
	ldrh r0, [r2, #0]
	adds r1, r0, #1
	strh r1, [r2, #0]
	ldr r1, _080007F4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1, #0]
	cmp r0, r1
	bls _080007FC
	ldr r0, _080007F8
	strh r6, [r0, #0]
	movs r0, #0
	strh r0, [r2, #0]
	strh r3, [r5, #0]
	b _08000816
_080007F0: .4byte gUnk_03002340
_080007F4: .4byte gUnk_03002348
_080007F8: .4byte gUnk_03001308
_080007FC:
	ldr r1, _08000804
	movs r0, #0
	strh r0, [r1, #0]
	b _08000816
_08000804: .4byte gUnk_03001308
_08000808:
	ldr r0, _0800085C
	strh r5, [r0, #0]
	ldr r2, _08000860
	ldr r1, _08000864
	movs r0, #0
	strh r0, [r1, #0]
	strh r0, [r2, #0]
_08000816:
	adds r3, r4, #0
	adds r4, r7, #0
	ldr r2, _08000868
	movs r0, #0
	strh r0, [r2, #0]
	ldrb r1, [r4, #0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08000838
	ldrb r1, [r3, #0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08000838
	strh r5, [r2, #0]
_08000838:
	ldrb r1, [r4, #0]
	movs r4, #2
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08000856
	ldrb r1, [r3, #0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08000856
	ldrh r0, [r2, #0]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2, #0]
_08000856:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0800085C: .4byte gUnk_03001308
_08000860: .4byte gUnk_03001320
_08000864: .4byte gUnk_03002340
_08000868: .4byte gUnk_03001328
	thumb_func_end sub_08000760
