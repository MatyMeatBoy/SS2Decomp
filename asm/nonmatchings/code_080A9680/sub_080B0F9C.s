	thumb_func_start sub_080B0F9C
sub_080B0F9C: @ 0x080B0F9C
	push {lr}
	ldr r0, _080B0FBC
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080B0FB0
	bl sub_08098060
_080B0FB0:
	ldr r1, _080B0FC0
	movs r0, #0
	str r0, [r1, #0]
	pop {r0}
	bx r0
	.2byte 0x0000
_080B0FBC: .4byte gUnk_03000788
_080B0FC0: .4byte gUnk_030056FC
	thumb_func_end sub_080B0F9C
