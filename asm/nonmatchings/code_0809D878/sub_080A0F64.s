	thumb_func_start sub_080A0F64
sub_080A0F64: @ 0x080A0F64
	push {lr}
	ldr r0, _080A0F9C
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080A0F84
	bl sub_080A0FC4
	bl sub_080A10D4
	bl sub_080A118C
	bl sub_08097C6C
_080A0F84:
	bl sub_08068384
	ldr r1, _080A0FA0
	movs r0, #0
	str r0, [r1, #0]
	ldr r0, _080A0FA4
	ldrh r0, [r0, #0]
	bl sub_08016ECC
	pop {r0}
	bx r0
	.2byte 0x0000
_080A0F9C: .4byte gUnk_0300032C
_080A0FA0: .4byte gUnk_030056FC
_080A0FA4: .4byte gUnk_03000330
	thumb_func_end sub_080A0F64
