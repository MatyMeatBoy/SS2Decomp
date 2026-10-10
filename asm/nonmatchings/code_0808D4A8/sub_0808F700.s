	thumb_func_start sub_0808F700
sub_0808F700: @ 0x0808F700
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r7, _0808F718
	ldr r0, [r7, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	beq _0808F714
	b _0808F8B8
_0808F714:
	b _0808F720
	.2byte 0x0000
_0808F718: .4byte gUnk_03005CF4
_0808F71C:
	bl sub_080003F0
_0808F720:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808F71C
	bl sub_08056E78
	bl sub_0800CF6C
	bl sub_0800CCEC
	bl sub_080020F4
	adds r7, r0, #0
	mov r1, r8
	ldrh r0, [r1, #0]
	bl sub_0805A4A0
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, #4
	mov r0, r8
	adds r6, r0, r1
	ldr r4, _0808F800
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r7, #0
	muls r1, r0, r1
	adds r0, r4, #0
	adds r0, #0x30
	adds r3, r1, r0
	ldr r2, [r3, #0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r2
	cmp r0, #0
	beq _0808F78C
	ldr r0, _0808F804
	ands r2, r0
	str r2, [r3, #0]
	adds r1, r1, r4
	movs r0, #0
	strh r0, [r1, #0x20]
	bl sub_0800CB9C
	cmp r0, #0
	bne _0808F788
	ldr r0, _0808F808
	ldr r0, [r0, #0]
	adds r0, #0x58
	movs r1, #2
	strh r1, [r0, #0]
_0808F788:
	bl sub_0802996C
_0808F78C:
	ldr r4, _0808F800
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r7, #0
	muls r2, r0, r2
	adds r5, r2, r4
	adds r0, r5, #0
	adds r0, #0x62
	ldrh r1, [r0, #0]
	adds r0, #0x62
	strh r1, [r0, #0]
	subs r0, #0x64
	ldrh r0, [r0, #0]
	adds r1, r5, #0
	adds r1, #0xc2
	strh r0, [r1, #0]
	subs r1, #0x5a
	movs r0, #1
	strb r0, [r1, #0]
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
	adds r3, r5, #0
	adds r3, #0x94
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r1, [r0, #4]
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	str r1, [r3, #4]
	adds r4, #0x30
	adds r2, r2, r4
	ldr r0, [r2, #0]
	ldr r1, _0808F80C
	ands r0, r1
	str r0, [r2, #0]
	ldrh r0, [r6, #4]
	strh r0, [r5, #0x1c]
	movs r0, #2
	movs r1, #5
	bl sub_0801A664
	ldr r0, _0808F808
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	ldr r1, [r1, #0x40]
	bl sub_08009930
	b _0808F814
_0808F800: .4byte gUnk_03003CE0
_0808F804: .4byte 0xFFFFDFFD
_0808F808: .4byte gUnk_03005CF4
_0808F80C: .4byte 0xFFFFFBFF
_0808F810:
	bl sub_080003F0
_0808F814:
	bl sub_0800BA6C
	cmp r0, #0
	beq _0808F810
	bl sub_0805D518
	ldr r0, _0808F8A0
	adds r0, #0x76
	movs r1, #0x20
	strh r1, [r0, #0]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r7, #0
	muls r4, r0, r4
	ldr r0, _0808F8A4
	adds r4, r4, r0
	adds r5, r4, #4
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800AD04
	ldr r0, _0808F8A8
	ldr r1, [r0, #0]
	movs r0, #1
	strh r0, [r1, #0x10]
	bl sub_0805A66C
	movs r4, #0
_0808F852:
	bl sub_080003F0
	adds r4, #1
	cmp r4, #0x13
	bls _0808F852
	bl sub_080169C8
	bl sub_080003F0
	mov r0, r8
	bl sub_0805A4BC
	ldr r0, _0808F8AC
	movs r1, #0
	bl sub_080257D4
	bl sub_08056E24
	ldr r4, _0808F8A8
	ldr r0, [r4, #0]
	adds r0, #0x58
	ldrh r0, [r0, #0]
	ldr r1, _0808F8B0
	bl sub_08057328
	ldr r1, _0808F8B4
	movs r0, #0
	bl sub_08057328
	ldr r0, [r4, #0]
	adds r0, #0x58
	movs r1, #0
	strh r1, [r0, #0]
	bl sub_080003F0
	bl sub_080003F0
	b _0808F930
	.2byte 0x0000
_0808F8A0: .4byte gUnk_03003170
_0808F8A4: .4byte gUnk_03003D6C
_0808F8A8: .4byte gUnk_03005CF4
_0808F8AC: .4byte gUnk_0850D500
_0808F8B0: .4byte sub_0802EA50
_0808F8B4: .4byte sub_0808D0B0
_0808F8B8:
	bl sub_08056E90
	cmp r0, #0
	beq _0808F930
	movs r0, #1
	bl sub_080570DC
	movs r0, #0
	movs r1, #0
	bl sub_08056FB8
	bl sub_080020F4
	ldr r5, _0808F92C
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0x68
	movs r1, #0
	mov r8, r1
	movs r6, #1
	strb r6, [r0, #0]
	bl sub_08056E78
	ldr r0, [r7, #0]
	mov r1, r8
	strh r1, [r0, #0x36]
	bl sub_080020F4
	adds r2, r0, #0
	muls r2, r4, r2
	adds r0, r5, #0
	adds r0, #0x30
	adds r2, r2, r0
	ldr r0, [r2, #0]
	movs r1, #3
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	mov r1, r8
	strh r1, [r0, #0x20]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #4
	strh r1, [r0, #0x1c]
	ldr r0, [r7, #0]
	strh r6, [r0, #0x30]
	strh r6, [r0, #0x24]
	movs r0, #1
	b _0808F9D6
	.2byte 0x0000
_0808F92C: .4byte gUnk_03003CE0
_0808F930:
	bl sub_080020F4
	ldr r5, _0808F974
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	cmp r0, #0xc
	bgt _0808F9D4
	bl sub_080020F4
	adds r2, r0, #0
	muls r2, r4, r2
	adds r0, r5, #0
	adds r0, #0x30
	adds r2, r2, r0
	ldr r0, [r2, #0]
	movs r1, #3
	orrs r0, r1
	str r0, [r2, #0]
	bl sub_08067D74
	bl sub_0800BB40
	bl sub_08056E64
	movs r0, #3
	bl sub_0801ABE8
	b _0808F97C
_0808F974: .4byte gUnk_03003CE0
_0808F978:
	bl sub_080003F0
_0808F97C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808F978
	bl sub_0800CCA8
	bl sub_0808D05C
	bl sub_08056E64
	movs r0, #1
	bl sub_080570DC
	ldr r0, _0808F9C4
	bl sub_080003F4
	bl sub_0800CCB8
	ldr r0, _0808F9C8
	ldr r1, [r0, #0]
	ldr r0, _0808F9CC
	adds r3, r1, r0
	ldr r2, _0808F9D0
	ldr r0, [r1, #0x40]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	movs r0, #0
	strh r0, [r1, #0x10]
	adds r1, #0x58
	strh r0, [r1, #0]
	bl sub_080587F0
	movs r0, #1
	b _0808F9D6
_0808F9C4: .4byte 0x02688420
_0808F9C8: .4byte gUnk_03005CF4
_0808F9CC: .4byte 0x0000071C
_0808F9D0: .4byte gUnk_0850D4EC
_0808F9D4:
	movs r0, #0
_0808F9D6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0808F700
