	thumb_func_start sub_0808AA70
sub_0808AA70: @ 0x0808AA70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r5, _0808AA84
	ldr r0, [r5, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808AB44
	b _0808AA8C
_0808AA84: .4byte gUnk_03005CF4
_0808AA88:
	bl sub_080003F0
_0808AA8C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808AA88
	bl sub_080020F4
	adds r4, r0, #0
	ldr r0, _0808AAF0
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r5, r7, r0
	bl sub_0800CCDC
	bl sub_080020F4
	ldr r3, _0808AAF4
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
	movs r1, #0x11
	bl sub_08009930
	b _0808AAFC
	.2byte 0x0000
_0808AAF0: .4byte gUnk_03005CF4
_0808AAF4: .4byte gUnk_03003CE0
_0808AAF8:
	bl sub_080003F0
_0808AAFC:
	bl sub_0800BA6C
	cmp r0, #0
	beq _0808AAF8
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r4, r0, r4
	ldr r0, _0808AB38
	adds r4, r4, r0
	adds r5, r4, #4
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800AD04
	ldr r1, _0808AB3C
	movs r0, #0
	bl sub_08057328
	bl sub_08015EF8
	ldr r0, _0808AB40
	ldr r1, [r0, #0]
	movs r0, #1
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x1c]
	b _0808ABFA
	.2byte 0x0000
_0808AB38: .4byte gUnk_03003D6C
_0808AB3C: .4byte sub_08059FBC
_0808AB40: .4byte gUnk_03005CF4
_0808AB44:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0808ABA0
	adds r2, r1, r0
	movs r4, #1
	adds r6, r5, #0
	movs r0, #0
	mov r8, r0
_0808AB5A:
	ldr r0, [r6, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r7, r0
	lsls r1, r4, #3
	adds r5, r0, r1
	adds r0, r2, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	ldrh r1, [r5, #0]
	subs r0, r0, r1
	cmp r0, #0
	bge _0808AB7E
	negs r0, r0
_0808AB7E:
	cmp r0, #1
	bgt _0808ABF4
	adds r0, r2, #0
	adds r0, #0x90
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	ldrh r1, [r5, #2]
	cmp r0, r1
	bne _0808ABF4
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808ABA8
_0808ABA0: .4byte gUnk_03003CE0
_0808ABA4:
	bl sub_080003F0
_0808ABA8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808ABA4
	bl sub_0800BB40
	cmp r4, #1
	bne _0808ABBE
	ldr r0, [r6, #0]
	strh r4, [r0, #0x36]
	b _0808ABC4
_0808ABBE:
	ldr r0, [r6, #0]
	mov r1, r8
	strh r1, [r0, #0x36]
_0808ABC4:
	ldr r1, _0808ABE8
	ldr r1, [r1, #0]
	ldrh r0, [r5, #4]
	strh r0, [r1, #2]
	ldr r0, _0808ABEC
	adds r3, r1, r0
	ldr r2, _0808ABF0
	ldrh r0, [r5, #4]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	mov r0, r8
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x1c]
	movs r0, #1
	b _0808ABFC
	.2byte 0x0000
_0808ABE8: .4byte gUnk_03005CF4
_0808ABEC: .4byte 0x0000071C
_0808ABF0: .4byte gUnk_084F0AC0
_0808ABF4:
	adds r4, #1
	cmp r4, #3
	bls _0808AB5A
_0808ABFA:
	movs r0, #0
_0808ABFC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0808AA70
