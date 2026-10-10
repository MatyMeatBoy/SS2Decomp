	thumb_func_start sub_0808536C
sub_0808536C: @ 0x0808536C
	push {r4, lr}
	ldr r4, _08085374
	b _0808537C
	.2byte 0x0000
_08085374: .4byte gUnk_03006440
_08085378:
	bl sub_080003F0
_0808537C:
	movs r0, #0x28
	bl sub_08001494
	ldr r1, [r4, #0]
	movs r2, #0xc4
	lsls r2, r2, #3
	adds r1, r1, r2
	str r0, [r1, #0]
	cmp r0, #0
	beq _08085378
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0808536C
