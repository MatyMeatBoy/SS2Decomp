	thumb_func_start sub_08089204
sub_08089204: @ 0x08089204
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, _08089218
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _080892FE
	b _08089220
_08089218: .4byte gUnk_03005CF4
_0808921C:
	bl sub_080003F0
_08089220:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808921C
	bl sub_080020F4
	mov r8, r0
	ldr r0, _080892A8
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r6, r5, r0
	bl sub_0800CCDC
	ldr r4, _080892AC
	movs r7, #0xa6
	lsls r7, r7, #1
	mov r1, r8
	muls r1, r7, r1
	adds r0, r4, #0
	adds r0, #0x30
	adds r5, r1, r0
	ldr r0, [r5, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08089262
	bl sub_0802996C
_08089262:
	ldr r0, [r5, #0]
	ldr r1, _080892B0
	ands r0, r1
	str r0, [r5, #0]
	bl sub_08067D74
	bl sub_080020F4
	adds r2, r0, #0
	muls r2, r7, r2
	adds r1, r4, #0
	adds r1, #0x8c
	adds r1, r2, r1
	ldrh r0, [r6, #0]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r1, r4, #0
	adds r1, #0x90
	adds r1, r2, r1
	ldrh r0, [r6, #2]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r2, r2, r4
	adds r3, r2, #0
	adds r3, #0x94
	adds r2, #0x8c
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	str r0, [r3, #0]
	str r1, [r3, #4]
	movs r0, #0
	movs r1, #2
	bl sub_08009930
	b _080892B8
_080892A8: .4byte gUnk_03005CF4
_080892AC: .4byte gUnk_03003CE0
_080892B0: .4byte 0xFFFFFBFF
_080892B4:
	bl sub_080003F0
_080892B8:
	bl sub_0800BA6C
	cmp r0, #0
	beq _080892B4
	ldr r0, _08089328
	adds r0, #0x76
	movs r1, #0x20
	strh r1, [r0, #0]
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r4, r8
	muls r4, r0, r4
	ldr r0, _0808932C
	adds r4, r4, r0
	adds r5, r4, #4
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800AD04
	ldr r0, _08089330
	ldr r1, [r0, #0]
	movs r0, #1
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x1c]
	bl sub_08015C38
	bl sub_08015EF8
	ldr r1, _08089334
	movs r0, #0
	bl sub_08057328
_080892FE:
	bl sub_080020F4
	ldr r1, _08089338
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	cmp r0, #0x1f
	bne _08089378
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _08089340
	.2byte 0x0000
_08089328: .4byte gUnk_03003170
_0808932C: .4byte gUnk_03003D6C
_08089330: .4byte gUnk_03005CF4
_08089334: .4byte sub_0802AA28
_08089338: .4byte gUnk_03003CE0
_0808933C:
	bl sub_080003F0
_08089340:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808933C
	bl sub_0800BB40
	ldr r0, _0808936C
	ldr r1, [r0, #0]
	movs r3, #0
	movs r0, #2
	strh r0, [r1, #0x36]
	movs r0, #8
	strh r0, [r1, #2]
	ldr r0, _08089370
	adds r2, r1, r0
	ldr r0, _08089374
	ldr r0, [r0, #0x20]
	str r0, [r2, #0]
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x1c]
	movs r0, #1
	b _0808937A
_0808936C: .4byte gUnk_03005CF4
_08089370: .4byte 0x0000071C
_08089374: .4byte gUnk_084F0AC0
_08089378:
	movs r0, #0
_0808937A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08089204
