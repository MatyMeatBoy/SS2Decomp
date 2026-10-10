	thumb_func_start sub_0808E7FC
sub_0808E7FC: @ 0x0808E7FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0808E824
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808E830
	bl sub_0800CD9C
	adds r0, r4, #0
	bl sub_0802704C
	ldr r0, _0808E828
	ldr r1, _0808E82C
	bl sub_0801674C
	bl sub_0800CD9C
	b _0808E884
	.2byte 0x0000
_0808E824: .4byte gUnk_03005CF4
_0808E828: .4byte sub_080AE1B4
_0808E82C: .4byte sub_080AF2AC
_0808E830:
	bl sub_08056E90
	cmp r0, #0
	beq _0808E884
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808E848
_0808E844:
	bl sub_080003F0
_0808E848:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808E844
	bl sub_0800BB40
	bl sub_0800CDAC
	ldr r0, _0808E878
	ldr r1, [r0, #0]
	ldr r0, _0808E87C
	adds r3, r1, r0
	ldr r2, _0808E880
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
	b _0808E886
_0808E878: .4byte gUnk_03005CF4
_0808E87C: .4byte 0x0000071C
_0808E880: .4byte gUnk_085060D4
_0808E884:
	movs r0, #0
_0808E886:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_0808E7FC
