	thumb_func_start sub_0809F8C8
sub_0809F8C8: @ 0x0809F8C8
	push {lr}
	ldr r0, _0809F900
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0809F8E8
	bl sub_0809FAEC
	bl sub_0809FA28
	bl sub_0809F934
	bl sub_08097C6C
_0809F8E8:
	bl sub_08068384
	ldr r1, _0809F904
	movs r0, #0
	str r0, [r1, #0]
	ldr r0, _0809F908
	ldrh r0, [r0, #0]
	bl sub_08016ECC
	pop {r0}
	bx r0
	.2byte 0x0000
_0809F900: .4byte gUnk_03000310
_0809F904: .4byte gUnk_030056FC
_0809F908: .4byte gUnk_03000314
	thumb_func_end sub_0809F8C8
