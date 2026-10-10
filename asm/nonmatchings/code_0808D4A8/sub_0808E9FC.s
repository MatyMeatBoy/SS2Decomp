	thumb_func_start sub_0808E9FC
sub_0808E9FC: @ 0x0808E9FC
	push {lr}
	adds r1, r0, #0
	ldr r0, _0808EA24
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808EA80
	adds r0, r1, #0
	bl sub_0802704C
	ldr r0, _0808EA28
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0xd
	bhi _0808EAD0
	lsls r0, r0, #2
	ldr r1, _0808EA2C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0808EA24: .4byte gUnk_03005CF4
_0808EA28: .4byte gUnk_03003170
_0808EA2C: .4byte _0808EA30
_0808EA30:
	.4byte _0808EA68
_0808EA34: .4byte _0808EAD0
_0808EA38: .4byte _0808EA68
_0808EA3C: .4byte _0808EAD0
_0808EA40: .4byte _0808EAD0
_0808EA44: .4byte _0808EAD0
_0808EA48: .4byte _0808EA68
_0808EA4C: .4byte _0808EAD0
_0808EA50: .4byte _0808EAD0
_0808EA54: .4byte _0808EAD0
_0808EA58: .4byte _0808EA70
_0808EA5C: .4byte _0808EAD0
_0808EA60: .4byte _0808EAD0
_0808EA64: .4byte _0808EA68
_0808EA68:
	ldr r1, _0808EA6C
	b _0808EA72
_0808EA6C: .4byte sub_0808ECA0
_0808EA70:
	ldr r1, _0808EA7C
_0808EA72:
	movs r0, #0
	bl sub_08057328
	b _0808EAD0
	.2byte 0x0000
_0808EA7C: .4byte sub_0808ECD0
_0808EA80:
	bl sub_08056E90
	cmp r0, #0
	beq _0808EAD0
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808EA98
_0808EA94:
	bl sub_080003F0
_0808EA98:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808EA94
	bl sub_0800BB40
	ldr r0, _0808EAC4
	ldr r1, [r0, #0]
	ldr r0, _0808EAC8
	adds r3, r1, r0
	ldr r2, _0808EACC
	ldr r0, [r1, #0x40]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #1
	strh r0, [r1, #0x30]
	strh r0, [r1, #0x24]
	b _0808EAD2
_0808EAC4: .4byte gUnk_03005CF4
_0808EAC8: .4byte 0x0000071C
_0808EACC: .4byte gUnk_08508B54
_0808EAD0:
	movs r0, #0
_0808EAD2:
	pop {r1}
	bx r1
	thumb_func_end sub_0808E9FC
