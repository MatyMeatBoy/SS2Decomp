	thumb_func_start sub_0808AC08
sub_0808AC08: @ 0x0808AC08
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0808AC18
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808ACDC
	b _0808AC20
_0808AC18: .4byte gUnk_03005CF4
_0808AC1C:
	bl sub_080003F0
_0808AC20:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808AC1C
	bl sub_080020F4
	adds r6, r0, #0
	ldr r0, _0808AC84
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r5, r4, r0
	bl sub_0800CCDC
	bl sub_080020F4
	ldr r3, _0808AC88
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	adds r1, r3, #0
	adds r1, #0x8c
	adds r1, r2, r1
	ldrh r0, [r5, #0]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r1, r3, #0
	adds r1, #0x90
	adds r1, r2, r1
	ldrh r0, [r5, #2]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r2, r2, r3
	adds r3, r2, #0
	adds r3, #0x94
	adds r2, #0x8c
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	str r0, [r3, #0]
	str r1, [r3, #4]
	movs r0, #0
	movs r1, #0x12
	bl sub_08009930
	b _0808AC90
	.2byte 0x0000
_0808AC84: .4byte gUnk_03005CF4
_0808AC88: .4byte gUnk_03003CE0
_0808AC8C:
	bl sub_080003F0
_0808AC90:
	bl sub_0800BA6C
	cmp r0, #0
	beq _0808AC8C
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r6, #0
	muls r4, r0, r4
	ldr r0, _0808ACD0
	adds r4, r4, r0
	adds r5, r4, #4
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800AD04
	ldr r1, _0808ACD4
	movs r0, #0
	bl sub_08057328
	bl sub_08015EF8
	bl sub_08015C38
	ldr r0, _0808ACD8
	ldr r1, [r0, #0]
	movs r0, #1
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x1c]
	b _0808AD86
_0808ACD0: .4byte gUnk_03003D6C
_0808ACD4: .4byte sub_08059FBC
_0808ACD8: .4byte gUnk_03005CF4
_0808ACDC:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0808AD38
	adds r3, r1, r0
	movs r2, #1
	movs r6, #0
_0808ACEE:
	ldr r0, _0808AD3C
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r4, r0
	lsls r1, r2, #3
	adds r5, r0, r1
	adds r0, r3, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	ldrh r1, [r5, #0]
	subs r0, r0, r1
	cmp r0, #0
	bge _0808AD14
	negs r0, r0
_0808AD14:
	cmp r0, #1
	bgt _0808AD80
	adds r0, r3, #0
	adds r0, #0x90
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	ldrh r1, [r5, #2]
	cmp r0, r1
	bne _0808AD80
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808AD44
	.2byte 0x0000
_0808AD38: .4byte gUnk_03003CE0
_0808AD3C: .4byte gUnk_03005CF4
_0808AD40:
	bl sub_080003F0
_0808AD44:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808AD40
	bl sub_0800BB40
	ldr r0, _0808AD74
	ldr r1, [r0, #0]
	movs r0, #1
	strh r0, [r1, #0x36]
	ldrh r0, [r5, #4]
	strh r0, [r1, #2]
	ldr r0, _0808AD78
	adds r3, r1, r0
	ldr r2, _0808AD7C
	ldrh r0, [r5, #4]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	strh r6, [r1, #0x10]
	strh r6, [r1, #0x1c]
	movs r0, #1
	b _0808AD88
_0808AD74: .4byte gUnk_03005CF4
_0808AD78: .4byte 0x0000071C
_0808AD7C: .4byte gUnk_084F0AC0
_0808AD80:
	adds r2, #1
	cmp r2, #3
	bls _0808ACEE
_0808AD86:
	movs r0, #0
_0808AD88:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_0808AC08
