	non_word_aligned_thumb_func_start sub_080B69AE
sub_080B69AE: @ 0x080B69AE
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2, #0]
	b sub_080B6992
	thumb_func_end sub_080B69AE
