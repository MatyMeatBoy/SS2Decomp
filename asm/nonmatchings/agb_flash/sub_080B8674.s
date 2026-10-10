	thumb_func_start sub_080B8674
sub_080B8674: @ 0x080B8674
	push {lr}
	ldr r1, _080B8694
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _080B8690
	ldrh r0, [r1, #0]
	subs r0, #1
	strh r0, [r1, #0]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B8690
	ldr r1, _080B8698
	movs r0, #1
	strb r0, [r1, #0]
_080B8690:
	pop {r0}
	bx r0
_080B8694: .4byte gUnk_03000E32
_080B8698: .4byte gUnk_030076D0
	thumb_func_end sub_080B8674
