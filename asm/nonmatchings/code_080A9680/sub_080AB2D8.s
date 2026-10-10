	thumb_func_start sub_080AB2D8
sub_080AB2D8: @ 0x080AB2D8
	push {lr}
	bl sub_08068384
	ldr r1, _080AB2F0
	movs r0, #0
	str r0, [r1, #0]
	ldr r0, _080AB2F4
	ldrh r0, [r0, #0]
	bl sub_08016ECC
	pop {r0}
	bx r0
_080AB2F0: .4byte gUnk_030056FC
_080AB2F4: .4byte gUnk_03000430
	thumb_func_end sub_080AB2D8
