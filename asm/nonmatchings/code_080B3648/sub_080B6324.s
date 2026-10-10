	thumb_func_start sub_080B6324
sub_080B6324: @ 0x080B6324
	push {lr}
	ldr r0, _080B6354
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080B633C
	bl sub_080B60F4
	bl sub_080B6360
_080B633C:
	bl sub_08068384
	ldr r1, _080B6358
	movs r0, #0
	str r0, [r1, #0]
	ldr r0, _080B635C
	ldrh r0, [r0, #0]
	bl sub_08016ECC
	pop {r0}
	bx r0
	.2byte 0x0000
_080B6354: .4byte gUnk_030007DC
_080B6358: .4byte gUnk_030056FC
_080B635C: .4byte gUnk_030007E0
	thumb_func_end sub_080B6324
