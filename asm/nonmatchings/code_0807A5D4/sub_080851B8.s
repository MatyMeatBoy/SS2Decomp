	thumb_func_start sub_080851B8
sub_080851B8: @ 0x080851B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080851D4
	ldr r0, [r0, #0]
	movs r1, #0xc4
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov r8, r0
	movs r4, #0
_080851CE:
	lsls r5, r4, #2
	adds r7, r4, #1
	b _080851DC
_080851D4: .4byte gUnk_03006440
_080851D8:
	bl sub_080003F0
_080851DC:
	adds r0, r5, r4
	lsls r0, r0, #3
	add r0, r8
	bl sub_08000470
	adds r6, r0, #0
	cmp r6, #0
	bne _080851D8
	adds r4, r7, #0
	cmp r4, #4
	bls _080851CE
	ldr r5, _08085214
	ldr r0, [r5, #0]
	movs r4, #0xc4
	lsls r4, r4, #3
	adds r0, r0, r4
	ldr r0, [r0, #0]
	bl sub_08001538
	ldr r0, [r5, #0]
	adds r0, r0, r4
	str r6, [r0, #0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08085214: .4byte gUnk_03006440
	thumb_func_end sub_080851B8
