	thumb_func_start sub_0807C1D8
sub_0807C1D8: @ 0x0807C1D8
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _0807C23C
	ldr r1, [r4, #0]
	ldr r5, [r1, #4]
	cmp r5, #0
	beq _0807C240
	adds r0, r1, #0
	adds r0, #0xa4
	adds r2, r1, #0
	adds r2, #0x4e
	adds r3, r1, #0
	adds r3, #0x52
	movs r1, #1
	str r1, [sp, #0]
	movs r1, #4
	bl sub_08065370
	ldr r0, [r4, #0]
	adds r0, #0xa4
	movs r1, #0
	str r1, [sp, #0]
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #9
	bl sub_08065230
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #0xa4
	adds r1, #0x4e
	ldrh r1, [r1, #0]
	str r1, [sp, #0]
	movs r1, #0x88
	movs r2, #0x78
	movs r3, #5
	bl sub_08065264
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #0xa4
	adds r1, #0x4c
	ldrh r1, [r1, #0]
	str r1, [sp, #0]
	movs r1, #0x68
	movs r2, #0x78
	movs r3, #4
	bl sub_08065230
	b _0807C292
_0807C23C: .4byte gUnk_03006440
_0807C240:
	adds r0, r1, #0
	adds r0, #0xa4
	adds r2, r1, #0
	adds r2, #0x4c
	adds r3, r1, #0
	adds r3, #0x50
	movs r1, #1
	str r1, [sp, #0]
	movs r1, #5
	bl sub_08065370
	ldr r0, [r4, #0]
	adds r0, #0xa4
	str r5, [sp, #0]
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #8
	bl sub_08065230
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #0xa4
	adds r1, #0x4e
	ldrh r1, [r1, #0]
	str r1, [sp, #0]
	movs r1, #0x88
	movs r2, #0x78
	movs r3, #5
	bl sub_08065230
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #0xa4
	adds r1, #0x4c
	ldrh r1, [r1, #0]
	str r1, [sp, #0]
	movs r1, #0x68
	movs r2, #0x78
	movs r3, #4
	bl sub_08065264
_0807C292:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0807C1D8
