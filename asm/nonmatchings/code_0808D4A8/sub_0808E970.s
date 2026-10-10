	thumb_func_start sub_0808E970
sub_0808E970: @ 0x0808E970
	push {lr}
	b _0808E9A2
_0808E974:
	bl sub_08058DB0
	cmp r0, #0
	bne _0808E99E
	ldr r0, _0808E9B0
	ldr r0, [r0, #0]
	movs r1, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0808E99E
	bl sub_080008C8
	movs r1, #0xa0
	lsls r1, r1, #1
	bl sub_080B95E4
	adds r1, r0, #0
	adds r1, #0x50
	ldr r0, _0808E9B4
	bl sub_08068070
_0808E99E:
	bl sub_080003F0
_0808E9A2:
	bl sub_08056E90
	cmp r0, #0
	beq _0808E974
	pop {r0}
	bx r0
	.2byte 0x0000
_0808E9B0: .4byte gUnk_03002344
_0808E9B4: .4byte sub_0808E530
	thumb_func_end sub_0808E970
