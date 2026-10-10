	thumb_func_start sub_080B22E8
sub_080B22E8: @ 0x080B22E8
	push {lr}
	ldr r0, _080B2324
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080B230C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08009088
	bl sub_08098060
	bl sub_080B1FD4
_080B230C:
	bl sub_08068384
	ldr r1, _080B2328
	movs r0, #0
	str r0, [r1, #0]
	ldr r0, _080B232C
	ldrh r0, [r0, #0]
	bl sub_08016ECC
	pop {r0}
	bx r0
	.2byte 0x0000
_080B2324: .4byte gUnk_030007A0
_080B2328: .4byte gUnk_030056FC
_080B232C: .4byte gUnk_030007A4
	thumb_func_end sub_080B22E8
