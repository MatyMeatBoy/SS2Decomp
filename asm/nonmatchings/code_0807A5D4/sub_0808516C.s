	thumb_func_start sub_0808516C
sub_0808516C: @ 0x0808516C
	push {r4, r5, lr}
	ldr r4, _08085174
	b _0808517C
	.2byte 0x0000
_08085174: .4byte gUnk_03006440
_08085178:
	bl sub_080003F0
_0808517C:
	movs r0, #0xc8
	bl sub_08001494
	ldr r1, [r4, #0]
	movs r2, #0xc4
	lsls r2, r2, #3
	adds r1, r1, r2
	str r0, [r1, #0]
	cmp r0, #0
	beq _08085178
	movs r2, #0
	ldr r5, _080851B4
	movs r4, #0xc4
	lsls r4, r4, #3
	movs r3, #0
	movs r1, #0
_0808519C:
	ldr r0, [r5, #0]
	adds r0, r0, r4
	ldr r0, [r0, #0]
	adds r0, r1, r0
	str r3, [r0, #8]
	adds r1, #0x28
	adds r2, #1
	cmp r2, #4
	bls _0808519C
	pop {r4, r5}
	pop {r0}
	bx r0
_080851B4: .4byte gUnk_03006440
	thumb_func_end sub_0808516C
