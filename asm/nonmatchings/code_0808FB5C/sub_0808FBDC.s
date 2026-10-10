	thumb_func_start sub_0808FBDC
sub_0808FBDC: @ 0x0808FBDC
	push {lr}
	adds r1, r0, #0
	ldr r0, _0808FBF4
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808FBF8
	adds r0, r1, #0
	bl sub_0802704C
	b _0808FC48
	.2byte 0x0000
_0808FBF4: .4byte gUnk_03005CF4
_0808FBF8:
	bl sub_08056E90
	cmp r0, #0
	beq _0808FC48
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808FC10
_0808FC0C:
	bl sub_080003F0
_0808FC10:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808FC0C
	bl sub_0800BB40
	ldr r0, _0808FC3C
	ldr r1, [r0, #0]
	ldr r0, _0808FC40
	adds r3, r1, r0
	ldr r2, _0808FC44
	ldr r0, [r1, #0x40]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #6
	strh r0, [r1, #0x36]
	movs r0, #1
	b _0808FC4A
_0808FC3C: .4byte gUnk_03005CF4
_0808FC40: .4byte 0x0000071C
_0808FC44: .4byte gUnk_0850DE28
_0808FC48:
	movs r0, #0
_0808FC4A:
	pop {r1}
	bx r1
	thumb_func_end sub_0808FBDC
