	thumb_func_start sub_0808ECA0
sub_0808ECA0: @ 0x0808ECA0
	push {r4, lr}
	ldr r4, _0808ECCC
_0808ECA4:
	bl sub_0800CC98
	cmp r0, #0
	bne _0808ECC6
	movs r0, #3
	movs r1, #0
	bl sub_0800BD48
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	movs r0, #3
	movs r2, #0
	bl sub_0800BBA8
_0808ECC6:
	bl sub_080003F0
	b _0808ECA4
_0808ECCC: .4byte gUnk_030031EC
	thumb_func_end sub_0808ECA0
