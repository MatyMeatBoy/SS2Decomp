	thumb_func_start sub_080A49A8
sub_080A49A8: @ 0x080A49A8
	push {lr}
	movs r0, #0xdf
	bl sub_0805867C
	ldr r0, _080A49E0
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080A49CA
	bl sub_080A4BFC
	bl sub_080A4B10
	bl sub_080A4A54
_080A49CA:
	bl sub_08068384
	ldr r1, _080A49E4
	movs r0, #0
	str r0, [r1, #0]
	ldr r0, _080A49E8
	ldrh r0, [r0, #0]
	bl sub_08016ECC
	pop {r0}
	bx r0
_080A49E0: .4byte gUnk_03000368
_080A49E4: .4byte gUnk_030056FC
_080A49E8: .4byte gUnk_030003E8
	thumb_func_end sub_080A49A8
