	thumb_func_start sub_080867F8
sub_080867F8: @ 0x080867F8
	push {r4, lr}
	ldr r4, _08086800
	b _08086808
	.2byte 0x0000
_08086800: .4byte gUnk_03006478
_08086804:
	bl sub_080003F0
_08086808:
	movs r0, #0x60
	bl sub_08001494
	str r0, [r4, #0]
	cmp r0, #0
	beq _08086804
	ldr r4, _08086818
	b _08086820
_08086818: .4byte gUnk_03006450
_0808681C:
	bl sub_080003F0
_08086820:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _0808681C
	ldr r0, _08086850
	ldr r1, [r0, #0x20]
	ldr r2, _08086854
	adds r1, r1, r2
	str r1, [r0, #0x10]
	movs r1, #0x64
	str r1, [r0, #8]
	ldr r1, _08086858
	str r1, [r0, #0x24]
	ldr r1, _0808685C
	str r1, [r0, #0xc]
	movs r1, #0
	bl sub_08000274
	pop {r4}
	pop {r0}
	bx r0
_08086850: .4byte gUnk_03006450
_08086854: .4byte 0x00000BFC
_08086858: .4byte sub_080867E0
_0808685C: .4byte sub_080855D4
	thumb_func_end sub_080867F8
