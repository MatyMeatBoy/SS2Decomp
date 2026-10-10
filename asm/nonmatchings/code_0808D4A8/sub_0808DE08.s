	thumb_func_start sub_0808DE08
sub_0808DE08: @ 0x0808DE08
	push {lr}
	adds r1, r0, #0
	ldr r0, _0808DE30
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808DE3C
	adds r0, r1, #0
	bl sub_0802704C
	ldr r1, _0808DE34
	movs r0, #0
	bl sub_08057328
	ldr r0, _0808DE38
	adds r0, #0x72
	movs r1, #0x14
	strh r1, [r0, #0]
	b _0808DE8C
	.2byte 0x0000
_0808DE30: .4byte gUnk_03005CF4
_0808DE34: .4byte sub_0808E130
_0808DE38: .4byte gUnk_03003170
_0808DE3C:
	bl sub_08056E90
	cmp r0, #0
	beq _0808DE8C
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808DE54
_0808DE50:
	bl sub_080003F0
_0808DE54:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808DE50
	bl sub_0800BB40
	ldr r0, _0808DE80
	ldr r1, [r0, #0]
	ldr r0, _0808DE84
	adds r3, r1, r0
	ldr r2, _0808DE88
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
	b _0808DE8E
_0808DE80: .4byte gUnk_03005CF4
_0808DE84: .4byte 0x0000071C
_0808DE88: .4byte gUnk_084FD06C
_0808DE8C:
	movs r0, #0
_0808DE8E:
	pop {r1}
	bx r1
	thumb_func_end sub_0808DE08
