	thumb_func_start sub_080B2780
sub_080B2780: @ 0x080B2780
	push {r4, r5, lr}
	ldr r0, _080B27F4
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080B279E
	ldr r0, _080B27F8
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080B27DC
_080B279E:
	bl sub_080B4B7C
	bl sub_08097C6C
	ldr r4, _080B27FC
	ldr r0, [r4, #0]
	bl sub_08000470
	cmp r0, #0
	beq _080B27B8
	ldr r0, [r4, #0]
	bl sub_080003A8
_080B27B8:
	ldr r0, [r4, #0]
	bl sub_08001538
	movs r5, #0
	str r5, [r4, #0]
	ldr r4, _080B2800
	ldr r0, [r4, #0]
	bl sub_08000470
	cmp r0, #0
	beq _080B27D4
	ldr r0, [r4, #0]
	bl sub_080003A8
_080B27D4:
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r4, #0]
_080B27DC:
	bl sub_08068384
	ldr r1, _080B2804
	movs r0, #0
	str r0, [r1, #0]
	ldr r0, _080B2808
	ldrh r0, [r0, #0]
	bl sub_08016ECC
	pop {r4, r5}
	pop {r0}
	bx r0
_080B27F4: .4byte gUnk_030007B8
_080B27F8: .4byte gUnk_030007BC
_080B27FC: .4byte gUnk_030007B0
_080B2800: .4byte gUnk_030007B4
_080B2804: .4byte gUnk_030056FC
_080B2808: .4byte gUnk_030007C8
	thumb_func_end sub_080B2780
