	thumb_func_start sub_0808ECD0
sub_0808ECD0: @ 0x0808ECD0
	push {r4, r5, lr}
	movs r0, #3
	movs r1, #0
	bl sub_0800BD48
	movs r5, #0x2a
_0808ECDC:
	bl sub_0800CC98
	cmp r0, #0
	bne _0808ECF4
	subs r4, r4, r5
	asrs r2, r4, #8
	movs r0, #0xf
	ands r2, r0
	movs r0, #3
	adds r1, r2, #0
	bl sub_0800BBD8
_0808ECF4:
	bl sub_080003F0
	b _0808ECDC
	thumb_func_end sub_0808ECD0
