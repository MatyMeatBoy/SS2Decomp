	thumb_func_start sub_080A2698
sub_080A2698: @ 0x080A2698
	push {lr}
	ldr r0, _080A26C4
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080A26AC
	bl sub_080A1F88
_080A26AC:
	bl sub_08068384
	ldr r1, _080A26C8
	movs r0, #0
	str r0, [r1, #0]
	ldr r0, _080A26CC
	ldrh r0, [r0, #0]
	bl sub_08016ECC
	pop {r0}
	bx r0
	.2byte 0x0000
_080A26C4: .4byte gUnk_03000348
_080A26C8: .4byte gUnk_030056FC
_080A26CC: .4byte gUnk_0300034C
	thumb_func_end sub_080A2698
