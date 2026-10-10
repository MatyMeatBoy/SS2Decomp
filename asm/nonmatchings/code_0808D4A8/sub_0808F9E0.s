	thumb_func_start sub_0808F9E0
sub_0808F9E0: @ 0x0808F9E0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _0808F9F4
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	beq _0808F9F0
	b _0808FB0C
_0808F9F0:
	b _0808F9FC
	.2byte 0x0000
_0808F9F4: .4byte gUnk_03005CF4
_0808F9F8:
	bl sub_080003F0
_0808F9FC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808F9F8
	bl sub_08056E78
	bl sub_0800CCEC
	bl sub_080020F4
	adds r6, r0, #0
	ldrh r0, [r5, #0]
	bl sub_0805A4A0
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, #4
	adds r4, r5, r1
	ldr r5, _0808FA90
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r3, r6, #0
	muls r3, r0, r3
	adds r0, r5, #0
	adds r0, #0x30
	adds r2, r3, r0
	ldr r1, [r2, #0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _0808FA58
	ldr r0, _0808FA94
	ands r1, r0
	str r1, [r2, #0]
	adds r2, r3, r5
	adds r0, r2, #0
	adds r0, #0x62
	ldrh r1, [r0, #0]
	adds r0, #0x62
	strh r1, [r0, #0]
	subs r0, #0x64
	ldrh r1, [r0, #0]
	adds r0, #0x62
	strh r1, [r0, #0]
_0808FA58:
	adds r1, r5, #0
	adds r1, #0x8c
	adds r1, r3, r1
	ldrh r0, [r4, #0]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r0, r5, #0
	adds r0, #0x90
	adds r0, r3, r0
	movs r1, #0xdf
	lsls r1, r1, #9
	str r1, [r0, #0]
	adds r0, r3, r5
	adds r2, r0, #0
	adds r2, #0x94
	adds r0, #0x8c
	ldr r1, [r0, #4]
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	str r1, [r2, #4]
	ldr r0, _0808FA98
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	ldr r1, [r1, #0x40]
	bl sub_08009930
	b _0808FAA0
	.2byte 0x0000
_0808FA90: .4byte gUnk_03003CE0
_0808FA94: .4byte 0xFFFFDFFD
_0808FA98: .4byte gUnk_03005CF4
_0808FA9C:
	bl sub_080003F0
_0808FAA0:
	bl sub_0800BA6C
	cmp r0, #0
	beq _0808FA9C
	ldr r0, _0808FAEC
	adds r0, #0x76
	movs r1, #0x20
	strh r1, [r0, #0]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r6, #0
	muls r4, r0, r4
	ldr r0, _0808FAF0
	adds r4, r4, r0
	adds r5, r4, #4
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800AD04
	ldr r4, _0808FAF4
	ldr r1, [r4, #0]
	movs r0, #1
	strh r0, [r1, #0x10]
	bl sub_08056E38
	ldr r0, [r4, #0]
	ldrh r1, [r0, #0x36]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808FAFC
	ldr r1, _0808FAF8
	b _0808FAFE
	.2byte 0x0000
_0808FAEC: .4byte gUnk_03003170
_0808FAF0: .4byte gUnk_03003D6C
_0808FAF4: .4byte gUnk_03005CF4
_0808FAF8: .4byte sub_0808B978
_0808FAFC:
	ldr r1, _0808FB08
_0808FAFE:
	movs r0, #0
	bl sub_08057328
	b _0808FB54
	.2byte 0x0000
_0808FB08: .4byte sub_0808CB58
_0808FB0C:
	bl sub_08056E90
	cmp r0, #0
	beq _0808FB54
	bl sub_0800BB40
	bl sub_08056E64
	movs r0, #2
	movs r1, #5
	bl sub_0801A664
	bl sub_080576C4
	bl sub_0800BB40
	movs r0, #1
	bl sub_080570DC
	ldr r1, [r4, #0]
	ldr r0, _0808FB4C
	adds r3, r1, r0
	ldr r2, _0808FB50
	ldr r0, [r1, #0x40]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #1
	b _0808FB56
_0808FB4C: .4byte 0x0000071C
_0808FB50: .4byte gUnk_0850D4EC
_0808FB54:
	movs r0, #0
_0808FB56:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_0808F9E0
