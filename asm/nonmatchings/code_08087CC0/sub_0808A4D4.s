	thumb_func_start sub_0808A4D4
sub_0808A4D4: @ 0x0808A4D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r5, _0808A4E8
	ldr r0, [r5, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808A5AC
	b _0808A4F0
_0808A4E8: .4byte gUnk_03005CF4
_0808A4EC:
	bl sub_080003F0
_0808A4F0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808A4EC
	bl sub_080020F4
	adds r4, r0, #0
	ldr r0, _0808A554
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	mov r1, r8
	adds r5, r1, r0
	bl sub_0800CCDC
	bl sub_080020F4
	ldr r3, _0808A558
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
	movs r1, #7
	bl sub_08009930
	b _0808A560
_0808A554: .4byte gUnk_03005CF4
_0808A558: .4byte gUnk_03003CE0
_0808A55C:
	bl sub_080003F0
_0808A560:
	bl sub_0800BA6C
	cmp r0, #0
	beq _0808A55C
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r4, r0, r4
	ldr r0, _0808A5A0
	adds r4, r4, r0
	adds r5, r4, #4
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800AD04
	ldr r0, _0808A5A4
	ldr r1, [r0, #0]
	movs r0, #1
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x1c]
	bl sub_08015C38
	ldr r1, _0808A5A8
	movs r0, #0
	bl sub_08057328
	bl sub_08015EF8
	b _0808A66E
	.2byte 0x0000
_0808A5A0: .4byte gUnk_03003D6C
_0808A5A4: .4byte gUnk_03005CF4
_0808A5A8: .4byte sub_0802D800
_0808A5AC:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0808A608
	adds r2, r1, r0
	movs r4, #1
	adds r6, r5, #0
	movs r7, #0
_0808A5C0:
	ldr r0, [r6, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	add r0, r8
	lsls r1, r4, #3
	adds r5, r0, r1
	adds r0, r2, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	ldrh r1, [r5, #0]
	subs r0, r0, r1
	cmp r0, #0
	bge _0808A5E4
	negs r0, r0
_0808A5E4:
	cmp r0, #1
	bgt _0808A668
	adds r0, r2, #0
	adds r0, #0x90
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	ldrh r1, [r5, #2]
	cmp r0, r1
	bne _0808A668
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808A610
	.2byte 0x0000
_0808A608: .4byte gUnk_03003CE0
_0808A60C:
	bl sub_080003F0
_0808A610:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808A60C
	bl sub_0800BB40
	ldrh r0, [r5, #4]
	cmp r0, #7
	bne _0808A638
	cmp r4, #2
	beq _0808A638
	ldr r2, _0808A634
	cmp r4, #3
	bne _0808A63E
	ldr r1, [r6, #0]
	movs r0, #1
	strh r0, [r1, #0x36]
	b _0808A63E
_0808A634: .4byte gUnk_03005CF4
_0808A638:
	ldr r0, [r6, #0]
	strh r7, [r0, #0x36]
	ldr r2, _0808A65C
_0808A63E:
	ldr r1, [r2, #0]
	ldrh r0, [r5, #4]
	strh r0, [r1, #2]
	ldr r0, _0808A660
	adds r3, r1, r0
	ldr r2, _0808A664
	ldrh r0, [r5, #4]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	strh r7, [r1, #0x10]
	strh r7, [r1, #0x1c]
	movs r0, #1
	b _0808A73A
_0808A65C: .4byte gUnk_03005CF4
_0808A660: .4byte 0x0000071C
_0808A664: .4byte gUnk_084F0AC0
_0808A668:
	adds r4, #1
	cmp r4, #3
	bls _0808A5C0
_0808A66E:
	bl sub_080020F4
	ldr r5, _0808A698
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	cmp r0, #1
	bgt _0808A6D8
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808A6A0
_0808A698: .4byte gUnk_03003CE0
_0808A69C:
	bl sub_080003F0
_0808A6A0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808A69C
	bl sub_0800BB40
	ldr r0, _0808A6CC
	ldr r1, [r0, #0]
	movs r3, #0
	movs r0, #4
	strh r0, [r1, #0x36]
	movs r0, #1
	strh r0, [r1, #2]
	ldr r0, _0808A6D0
	adds r2, r1, r0
	ldr r0, _0808A6D4
	ldr r0, [r0, #4]
	str r0, [r2, #0]
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x1c]
	movs r0, #1
	b _0808A73A
_0808A6CC: .4byte gUnk_03005CF4
_0808A6D0: .4byte 0x0000071C
_0808A6D4: .4byte gUnk_084F0AC0
_0808A6D8:
	bl sub_080020F4
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	cmp r0, #0x24
	ble _0808A738
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808A700
_0808A6FC:
	bl sub_080003F0
_0808A700:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808A6FC
	bl sub_0800BB40
	ldr r0, _0808A72C
	ldr r1, [r0, #0]
	movs r2, #0
	movs r0, #5
	strh r0, [r1, #0x36]
	strh r2, [r1, #2]
	ldr r0, _0808A730
	adds r3, r1, r0
	ldr r0, _0808A734
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	strh r2, [r1, #0x10]
	strh r2, [r1, #0x1c]
	movs r0, #1
	b _0808A73A
	.2byte 0x0000
_0808A72C: .4byte gUnk_03005CF4
_0808A730: .4byte 0x0000071C
_0808A734: .4byte gUnk_084F0AC0
_0808A738:
	movs r0, #0
_0808A73A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0808A4D4
