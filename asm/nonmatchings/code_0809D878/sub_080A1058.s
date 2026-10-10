	thumb_func_start sub_080A1058
sub_080A1058: @ 0x080A1058
	ldr r1, _080A1068
	movs r0, #0
	strb r0, [r1, #0]
	ldr r1, _080A106C
	movs r0, #0x14
	strb r0, [r1, #0]
	bx lr
	.2byte 0x0000
_080A1068: .4byte gUnk_03000339
_080A106C: .4byte gUnk_0300033A
	thumb_func_end sub_080A1058
