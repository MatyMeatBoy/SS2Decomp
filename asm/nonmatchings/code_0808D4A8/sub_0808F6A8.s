	thumb_func_start sub_0808F6A8
sub_0808F6A8: @ 0x0808F6A8
	push {r4, r5, lr}
	ldr r5, _0808F6F8
	ldr r0, _0808F6FC
	adds r4, r0, #0
_0808F6B0:
	bl sub_0800CC98
	cmp r0, #0
	bne _0808F6F2
	movs r0, #1
	movs r1, #0
	bl sub_0800BD48
	movs r0, #2
	movs r1, #0
	bl sub_0800BD48
	movs r0, #0
	ldrsh r2, [r5, r0]
	lsls r2, r2, #1
	ands r2, r4
	movs r0, #1
	movs r1, #0
	bl sub_0800BBA8
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	movs r1, #0xa
	bl __divsi3
	adds r2, r0, #0
	ands r2, r4
	movs r0, #2
	movs r1, #0
	bl sub_0800BBA8
_0808F6F2:
	bl sub_080003F0
	b _0808F6B0
_0808F6F8: .4byte gUnk_030031EE
_0808F6FC: .4byte 0x000001FF
	thumb_func_end sub_0808F6A8
