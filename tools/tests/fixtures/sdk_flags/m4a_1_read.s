	thumb_func_start MPlayJumpTableCopy
MPlayJumpTableCopy: @ 0x080B6978
	mov ip, lr
	movs r1, #0x24
	ldr r2, _080B69A8
_080B697E:
	ldr r3, [r2, #0]
	bl sub_080B6992
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _080B697E
	bx ip
	thumb_func_end MPlayJumpTableCopy

	thumb_func_start sub_080B6990
sub_080B6990: @ 0x080B6990
	ldrb r3, [r2, #0]
	thumb_func_end sub_080B6990

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

	thumb_func_start sub_080B69AC
sub_080B69AC: @ 0x080B69AC
	ldr r2, [r1, #0x40]
	thumb_func_end sub_080B69AC

	non_word_aligned_thumb_func_start sub_080B69AE
sub_080B69AE: @ 0x080B69AE
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2, #0]
	b sub_080B6992
	thumb_func_end sub_080B69AE
