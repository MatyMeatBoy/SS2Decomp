	non_word_aligned_thumb_func_start sub_080B6992
sub_080B6992: @ 0x080B6992
	push {r0}
	lsrs r0, r2, #0x19
	bne _080B69A4
	ldr r0, _080B69A8
	cmp r2, r0
	blo _080B69A2
	lsrs r0, r2, #0xe
	beq _080B69A4
_080B69A2:
	movs r3, #0
_080B69A4:
	pop {r0}
	bx lr
_080B69A8: .4byte gUnk_080BB7E8
	thumb_func_end sub_080B6992
