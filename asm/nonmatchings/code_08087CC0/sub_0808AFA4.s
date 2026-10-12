	thumb_func_start sub_0808AFA4
sub_0808AFA4: @ 0x0808AFA4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080020F4
	ldr r3, _0808AFE4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	adds r1, r3, #0
	adds r1, #0x8c
	adds r1, r2, r1
	ldrh r0, [r4, #0]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r1, r3, #0
	adds r1, #0x90
	adds r1, r2, r1
	ldrh r0, [r4, #2]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r2, r2, r3
	adds r3, r2, #0
	adds r3, #0x94
	adds r2, #0x8c
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	str r0, [r3, #0]
	str r1, [r3, #4]
	pop {r4}
	pop {r0}
	bx r0
_0808AFE4: .4byte gUnk_03003CE0
	thumb_func_end sub_0808AFA4
