	thumb_func_start sub_0808ECFC
sub_0808ECFC: @ 0x0808ECFC
	push {r4, r5, r6, lr}
	ldr r0, _0808ED68
	movs r1, #0x1e
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x32]
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x7e
	movs r5, #0xa0
	lsls r5, r5, #1
_0808ED10:
	bl sub_0800CC98
	cmp r0, #0
	bne _0808ED6C
	movs r0, #1
	movs r1, #0
	bl sub_0800BD48
	movs r0, #2
	movs r1, #0
	bl sub_0800BD48
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r0, r0, #1
	adds r1, r5, #0
	bl sub_080B942C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	movs r1, #0
	bl sub_0800BBA8
	movs r0, #0
	ldrsh r1, [r6, r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	movs r1, #0xa
	bl sub_080B9394
	adds r1, r5, #0
	bl sub_080B942C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #2
	movs r1, #0
	bl sub_0800BBA8
	b _0808ED74
	.2byte 0x0000
_0808ED68: .4byte gUnk_03003170
_0808ED6C:
	movs r0, #0x15
	strh r0, [r4, #0x1a]
	movs r0, #0x28
	strh r0, [r4, #0x32]
_0808ED74:
	bl sub_080003F0
	b _0808ED10
	thumb_func_end sub_0808ECFC
