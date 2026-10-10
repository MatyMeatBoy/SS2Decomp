	thumb_func_start sub_080A97E0
sub_080A97E0: @ 0x080A97E0
	push {lr}
	ldr r0, _080A980C
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080A97F4
	bl sub_080A9844
_080A97F4:
	bl sub_08068384
	ldr r1, _080A9810
	movs r0, #0
	str r0, [r1, #0]
	ldr r0, _080A9814
	ldrh r0, [r0, #0]
	bl sub_08016ECC
	pop {r0}
	bx r0
	.2byte 0x0000
_080A980C: .4byte gUnk_0300041C
_080A9810: .4byte gUnk_030056FC
_080A9814: .4byte gUnk_03000420
	thumb_func_end sub_080A97E0
