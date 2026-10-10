	thumb_func_start sub_0808E130
sub_0808E130: @ 0x0808E130
	push {r4, r5, lr}
	ldr r5, _0808E168
_0808E134:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xff
	bls _0808E140
	movs r4, #0
_0808E140:
	ldr r1, _0808E16C
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x12
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r5, #0]
	cmp r0, #0
	bne _0808E170
	negs r1, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_0800BB94
	b _0808E17C
	.2byte 0x0000
_0808E168: .4byte gUnk_03003200
_0808E16C: .4byte gUnk_080B9704
_0808E170:
	negs r1, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_0800BB80
_0808E17C:
	bl sub_080003F0
	b _0808E134
	thumb_func_end sub_0808E130
