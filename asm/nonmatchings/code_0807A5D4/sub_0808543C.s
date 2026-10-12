	thumb_func_start sub_0808543C
sub_0808543C: @ 0x0808543C
	push {r4, lr}
	ldr r0, _08085470
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	cmp r0, #4
	bne _08085474
	movs r3, #0
	movs r2, #0
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r1, r0
_08085452:
	ldrh r0, [r1, #0]
	cmp r0, #0xa
	bne _0808545C
	ldr r0, [r1, #4]
	adds r3, r3, r0
_0808545C:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x4a
	bls _08085452
	adds r4, r3, #0
	bl sub_0805D3D4
	adds r4, r4, r0
	b _0808547A
	.2byte 0x0000
_08085470: .4byte gUnk_03006440
_08085474:
	bl sub_0805D404
	adds r4, r0, #0
_0808547A:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_0808543C
