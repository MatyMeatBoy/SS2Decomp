	thumb_func_start sub_080A7DEC
sub_080A7DEC: @ 0x080A7DEC
	push {lr}
	ldr r0, _080A7E28
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080A7E12
	bl sub_080A7E94
	bl sub_080A7F5C
	bl sub_080A8014
	bl sub_080A80D8
	ldr r0, _080A7E2C
	bl sub_0805867C
_080A7E12:
	bl sub_08068384
	ldr r1, _080A7E30
	movs r0, #0
	str r0, [r1, #0]
	ldr r0, _080A7E34
	ldrh r0, [r0, #0]
	bl sub_08016ECC
	pop {r0}
	bx r0
_080A7E28: .4byte gUnk_03000400
_080A7E2C: .4byte 0x000001A1
_080A7E30: .4byte gUnk_030056FC
_080A7E34: .4byte gUnk_03000404
	thumb_func_end sub_080A7DEC
