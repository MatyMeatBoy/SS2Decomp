	thumb_func_start sub_0808DF14
sub_0808DF14: @ 0x0808DF14
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, _0808DF38
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808DF40
	adds r0, r1, #0
	bl sub_0802704C
	ldr r1, _0808DF3C
	movs r0, #0
	bl sub_08057328
	movs r0, #0xf7
	bl sub_0805865C
	b _0808DF98
_0808DF38: .4byte gUnk_03005CF4
_0808DF3C: .4byte sub_0808DB38
_0808DF40:
	bl sub_08056E90
	cmp r0, #0
	beq _0808DF98
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808DF58
_0808DF54:
	bl sub_080003F0
_0808DF58:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808DF54
	movs r0, #0xf7
	bl sub_0805867C
	bl sub_0800BB40
	ldr r0, _0808DF8C
	ldr r1, [r0, #0]
	ldr r0, _0808DF90
	adds r3, r1, r0
	ldr r2, _0808DF94
	ldr r0, [r1, #0x40]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #1
	strh r0, [r1, #0x24]
	strh r0, [r1, #0x30]
	b _0808DFF6
	.2byte 0x0000
_0808DF8C: .4byte gUnk_03005CF4
_0808DF90: .4byte 0x0000071C
_0808DF94: .4byte gUnk_084FD06C
_0808DF98:
	bl sub_08002204
	cmp r0, #0
	beq _0808DFF4
	ldr r0, _0808DFDC
	ldr r0, [r0, #0]
	movs r1, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0808DFF4
	bl sub_080008C8
	movs r1, #7
	ands r1, r0
	cmp r1, #4
	bne _0808DFE4
	ldr r4, _0808DFE0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08068070
	adds r0, r4, #0
	movs r1, #1
	bl sub_08068070
	adds r0, r4, #0
	movs r1, #2
	bl sub_08068070
	adds r0, r4, #0
	movs r1, #3
	bl sub_08068070
	b _0808DFF4
_0808DFDC: .4byte gUnk_03002344
_0808DFE0: .4byte sub_0808DB38
_0808DFE4:
	ldr r4, _0808DFFC
	bl sub_080008C8
	movs r1, #3
	ands r1, r0
	adds r0, r4, #0
	bl sub_08068070
_0808DFF4:
	movs r0, #0
_0808DFF6:
	pop {r4}
	pop {r1}
	bx r1
_0808DFFC: .4byte sub_0808DB38
	thumb_func_end sub_0808DF14
