	thumb_func_start sub_0808AD90
sub_0808AD90: @ 0x0808AD90
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _0808ADA4
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808AE6C
	b _0808ADAC
_0808ADA4: .4byte gUnk_03005CF4
_0808ADA8:
	bl sub_080003F0
_0808ADAC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808ADA8
	bl sub_080020F4
	adds r4, r0, #0
	ldr r0, _0808AE10
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r5, r6, r0
	bl sub_0800CCDC
	bl sub_080020F4
	ldr r3, _0808AE14
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
	movs r1, #0x13
	bl sub_08009930
	b _0808AE1C
	.2byte 0x0000
_0808AE10: .4byte gUnk_03005CF4
_0808AE14: .4byte gUnk_03003CE0
_0808AE18:
	bl sub_080003F0
_0808AE1C:
	bl sub_0800BA6C
	cmp r0, #0
	beq _0808AE18
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r4, r0, r4
	ldr r0, _0808AE60
	adds r4, r4, r0
	adds r5, r4, #4
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800AD04
	ldr r1, _0808AE64
	movs r0, #0
	bl sub_08057328
	bl sub_08015EF8
	bl sub_08015C38
	bl sub_08026C54
	ldr r0, _0808AE68
	ldr r1, [r0, #0]
	movs r0, #1
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x1c]
	b _0808AF1A
	.2byte 0x0000
_0808AE60: .4byte gUnk_03003D6C
_0808AE64: .4byte sub_0802E6E0
_0808AE68: .4byte gUnk_03005CF4
_0808AE6C:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0808AEC8
	adds r3, r1, r0
	movs r2, #1
	movs r4, #0
_0808AE7E:
	ldr r0, _0808AECC
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r6, r0
	lsls r1, r2, #3
	adds r5, r0, r1
	adds r0, r3, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	ldrh r1, [r5, #0]
	subs r0, r0, r1
	cmp r0, #0
	bge _0808AEA4
	negs r0, r0
_0808AEA4:
	cmp r0, #1
	bgt _0808AF14
	adds r0, r3, #0
	adds r0, #0x90
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	ldrh r1, [r5, #2]
	cmp r0, r1
	bne _0808AF14
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808AED4
	.2byte 0x0000
_0808AEC8: .4byte gUnk_03003CE0
_0808AECC: .4byte gUnk_03005CF4
_0808AED0:
	bl sub_080003F0
_0808AED4:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808AED0
	bl sub_08056EA4
	bl sub_0800BB40
	ldr r0, _0808AF08
	ldr r1, [r0, #0]
	movs r0, #2
	strh r0, [r1, #0x36]
	ldrh r0, [r5, #4]
	strh r0, [r1, #2]
	ldr r0, _0808AF0C
	adds r3, r1, r0
	ldr r2, _0808AF10
	ldrh r0, [r5, #4]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x1c]
	movs r0, #1
	b _0808AF9A
_0808AF08: .4byte gUnk_03005CF4
_0808AF0C: .4byte 0x0000071C
_0808AF10: .4byte gUnk_084F0AC0
_0808AF14:
	adds r2, #1
	cmp r2, #3
	bls _0808AE7E
_0808AF1A:
	bl sub_08056E90
	cmp r0, #0
	beq _0808AF98
	ldr r1, _0808AF30
	movs r0, #0
	bl sub_08057328
	adds r4, r0, #0
	b _0808AF3A
	.2byte 0x0000
_0808AF30: .4byte sub_080444C0
_0808AF34:
	movs r0, #1
	bl sub_08057624
_0808AF3A:
	adds r0, r4, #0
	bl sub_08057424
	adds r7, r0, #0
	cmp r7, #0
	bne _0808AF34
	movs r0, #0xd
	movs r1, #0
	bl sub_08056FB8
	bl sub_08056E78
	ldr r1, _0808AF90
	mov r8, r1
	ldr r0, [r1, #0]
	movs r4, #1
	strh r4, [r0, #0x36]
	bl sub_080020F4
	ldr r6, _0808AF94
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	adds r0, r6, #0
	adds r0, #0x30
	adds r2, r2, r0
	ldr r0, [r2, #0]
	movs r1, #3
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	strh r7, [r0, #0x20]
	mov r1, r8
	ldr r0, [r1, #0]
	strh r4, [r0, #0x30]
	strh r4, [r0, #0x24]
	movs r0, #1
	b _0808AF9A
_0808AF90: .4byte gUnk_03005CF4
_0808AF94: .4byte gUnk_03003CE0
_0808AF98:
	movs r0, #0
_0808AF9A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0808AD90
