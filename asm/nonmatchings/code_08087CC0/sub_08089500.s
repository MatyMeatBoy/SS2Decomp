	thumb_func_start sub_08089500
sub_08089500: @ 0x08089500
	push {r4, r5, r6, lr}
	sub sp, #0x3c
	adds r4, r0, #0
	ldr r0, _08089514
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	beq _08089512
	b _08089768
_08089512:
	b _0808951C
_08089514: .4byte gUnk_03005CF4
_08089518:
	bl sub_080003F0
_0808951C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08089518
	bl sub_080020F4
	adds r6, r0, #0
	ldr r0, _0808958C
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r4, r4, r0
	bl sub_0800CF10
	cmp r0, #0
	bne _08089598
	bl sub_080020F4
	ldr r3, _08089590
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	adds r1, r3, #0
	adds r1, #0x8c
	adds r1, r2, r1
	ldrh r0, [r4, #0]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r1, r3, #0
	adds r1, #0x90
	adds r1, r2, r1
	ldrh r0, [r4, #2]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r2, r2, r3
	adds r4, r2, #0
	adds r4, #0x94
	adds r2, #0x8c
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	str r0, [r4, #0]
	str r1, [r4, #4]
	adds r2, r6, #0
	muls r2, r5, r2
	adds r3, #0x30
	adds r2, r2, r3
	ldr r0, [r2, #0]
	ldr r1, _08089594
	ands r0, r1
	str r0, [r2, #0]
	b _080896AC
	.2byte 0x0000
_0808958C: .4byte gUnk_03005CF4
_08089590: .4byte gUnk_03003CE0
_08089594: .4byte 0xFFFFDFD9
_08089598:
	bl sub_0800CDC0
	cmp r0, #0
	beq _080895C8
	bl sub_08056F8C
	bl sub_0805A66C
	bl sub_080169C8
	bl sub_0800CDAC
	bl sub_080267DC
	ldr r0, _080895C4
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #0xd
	bne _080895D0
	bl sub_080B6360
	b _080895D0
_080895C4: .4byte gUnk_03003170
_080895C8:
	adds r0, r6, #0
	movs r1, #1
	bl sub_080657C4
_080895D0:
	cmp r6, #1
	beq _08089614
	cmp r6, #1
	blo _080895E8
	cmp r6, #2
	beq _08089630
	cmp r6, #3
	beq _0808964C
	ldr r1, _080895E4
	b _08089664
_080895E4: .4byte gUnk_03003CE0
_080895E8:
	ldr r3, _08089610
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r6, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x8c
	adds r0, r2, r0
	movs r1, #0x96
	lsls r1, r1, #9
	str r1, [r0, #0]
	adds r0, r3, #0
	adds r0, #0x90
	adds r2, r2, r0
	movs r0, #0xa4
	lsls r0, r0, #7
	str r0, [r2, #0]
	adds r1, r3, #0
	b _08089664
	.2byte 0x0000
_08089610: .4byte gUnk_03003CE0
_08089614:
	ldr r1, _08089628
	movs r0, #0xec
	lsls r0, r0, #1
	adds r2, r1, r0
	ldr r0, _0808962C
	str r0, [r2, #0]
	movs r0, #0xee
	lsls r0, r0, #1
	b _0808965C
	.2byte 0x0000
_08089628: .4byte gUnk_03003CE0
_0808962C: .4byte 0x00012100
_08089630:
	ldr r1, _08089644
	movs r0, #0xc9
	lsls r0, r0, #2
	adds r2, r1, r0
	ldr r0, _08089648
	str r0, [r2, #0]
	movs r0, #0xca
	lsls r0, r0, #2
	b _0808965C
	.2byte 0x0000
_08089644: .4byte gUnk_03003CE0
_08089648: .4byte 0x00013700
_0808964C:
	ldr r1, _080896EC
	movs r0, #0x8e
	lsls r0, r0, #3
	adds r2, r1, r0
	movs r0, #0x8b
	lsls r0, r0, #9
	str r0, [r2, #0]
	ldr r0, _080896F0
_0808965C:
	adds r2, r1, r0
	movs r0, #0xa4
	lsls r0, r0, #7
	str r0, [r2, #0]
_08089664:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r6, #0
	muls r2, r0, r2
	adds r4, r2, r1
	movs r5, #0
	strh r5, [r4, #0x20]
	adds r0, r1, #0
	adds r0, #0x30
	adds r2, r2, r0
	ldr r0, [r2, #0]
	ldr r1, _080896F4
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0]
	bl sub_0802996C
	ldr r1, _080896F8
	movs r3, #1
	negs r3, r3
	str r5, [sp, #0]
	add r0, sp, #8
	movs r2, #8
	bl sub_08065158
	ldr r1, [sp, #0x14]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
	adds r4, #0x68
	movs r0, #1
	strb r0, [r4, #0]
	bl sub_0806617C
_080896AC:
	bl sub_0800CCDC
	movs r0, #0
	str r0, [sp, #0]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
	ldr r1, _080896EC
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r6, r0
	adds r0, r0, r1
	adds r2, r0, #0
	adds r2, #0x94
	adds r0, #0x8c
	ldr r1, [r0, #4]
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	str r1, [r2, #4]
	bl sub_08067D74
	movs r0, #0xa
	bl sub_08057624
	movs r0, #0
	movs r1, #4
	bl sub_08009930
	b _08089700
_080896EC: .4byte gUnk_03003CE0
_080896F0: .4byte 0x00000474
_080896F4: .4byte 0xFFFFDFDB
_080896F8: .4byte 0x0005008C
_080896FC:
	bl sub_080003F0
_08089700:
	bl sub_0800BA6C
	cmp r0, #0
	beq _080896FC
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r6, #0
	muls r4, r0, r4
	ldr r0, _0808973C
	adds r4, r4, r0
	adds r5, r4, #4
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800AD04
	bl sub_0800CF10
	cmp r0, #0
	beq _08089744
	ldr r1, _08089740
	movs r0, #0
	bl sub_08057328
	bl sub_0800CEFC
	b _0808974C
	.2byte 0x0000
_0808973C: .4byte gUnk_03003D6C
_08089740: .4byte sub_0803D99C
_08089744:
	ldr r1, _08089760
	movs r0, #0
	bl sub_08057328
_0808974C:
	bl sub_08015EF8
	ldr r0, _08089764
	ldr r1, [r0, #0]
	movs r0, #1
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x1c]
	bl sub_08015C38
	b _08089778
_08089760: .4byte sub_0802CF84
_08089764: .4byte gUnk_03005CF4
_08089768:
	adds r0, r4, #0
	movs r1, #4
	bl sub_08088B6C
	cmp r0, #0
	beq _08089778
	movs r0, #1
	b _0808977A
_08089778:
	movs r0, #0
_0808977A:
	add sp, #0x3c
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08089500
