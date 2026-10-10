	thumb_func_start sub_08089EC4
sub_08089EC4: @ 0x08089EC4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08089ED4
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _08089F8A
	b _08089EDC
_08089ED4: .4byte gUnk_03005CF4
_08089ED8:
	bl sub_080003F0
_08089EDC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08089ED8
	bl sub_080020F4
	adds r6, r0, #0
	ldr r0, _08089F40
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x36]
	lsls r4, r0, #3
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, #4
	adds r4, r5, r4
	bl sub_0800CCDC
	bl sub_080020F4
	ldr r3, _08089F44
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
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
	adds r3, r2, #0
	adds r3, #0x94
	adds r2, #0x8c
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	str r0, [r3, #0]
	str r1, [r3, #4]
	movs r0, #0
	movs r1, #0x10
	bl sub_08009930
	b _08089F4C
	.2byte 0x0000
_08089F40: .4byte gUnk_03005CF4
_08089F44: .4byte gUnk_03003CE0
_08089F48:
	bl sub_080003F0
_08089F4C:
	bl sub_0800BA6C
	cmp r0, #0
	beq _08089F48
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r6, #0
	muls r4, r0, r4
	ldr r0, _08089FB4
	adds r4, r4, r0
	adds r5, r4, #4
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800AD04
	ldr r1, _08089FB8
	movs r0, #0
	bl sub_08057328
	bl sub_08015EF8
	ldr r0, _08089FBC
	ldr r1, [r0, #0]
	movs r0, #1
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x1c]
	bl sub_08015C38
_08089F8A:
	bl sub_080020F4
	ldr r1, _08089FC0
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	cmp r0, #0x25
	ble _0808A000
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _08089FC8
	.2byte 0x0000
_08089FB4: .4byte gUnk_03003D6C
_08089FB8: .4byte sub_0802E7AC
_08089FBC: .4byte gUnk_03005CF4
_08089FC0: .4byte gUnk_03003CE0
_08089FC4:
	bl sub_080003F0
_08089FC8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08089FC4
	bl sub_0800BB40
	ldr r0, _08089FF4
	ldr r1, [r0, #0]
	movs r3, #0
	movs r0, #1
	strh r0, [r1, #0x36]
	movs r0, #8
	strh r0, [r1, #2]
	ldr r0, _08089FF8
	adds r2, r1, r0
	ldr r0, _08089FFC
	ldr r0, [r0, #0x20]
	str r0, [r2, #0]
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x1c]
	movs r0, #1
	b _0808A002
_08089FF4: .4byte gUnk_03005CF4
_08089FF8: .4byte 0x0000071C
_08089FFC: .4byte gUnk_084F0AC0
_0808A000:
	movs r0, #0
_0808A002:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08089EC4
