	thumb_func_start sub_080AE080
sub_080AE080: @ 0x080AE080
	push {lr}
	ldr r0, _080AE0AC
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080AE094
	bl sub_080AE0E4
_080AE094:
	bl sub_08068384
	ldr r1, _080AE0B0
	movs r0, #0
	str r0, [r1, #0]
	ldr r0, _080AE0B4
	ldrh r0, [r0, #0]
	bl sub_08016ECC
	pop {r0}
	bx r0
	.2byte 0x0000
_080AE0AC: .4byte gUnk_03000440
_080AE0B0: .4byte gUnk_030056FC
_080AE0B4: .4byte gUnk_030004BE
	thumb_func_end sub_080AE080
