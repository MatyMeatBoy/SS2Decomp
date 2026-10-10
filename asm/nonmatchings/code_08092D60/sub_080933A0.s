	thumb_func_start sub_080933A0
sub_080933A0: @ 0x080933A0
	push {lr}
	ldr r1, _080933E0
	movs r0, #0
	strb r0, [r1, #0]
	ldr r1, _080933E4
	movs r0, #0x10
	strb r0, [r1, #0]
	ldr r1, _080933E8
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, _080933EC
	bl sub_080012D8
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_08000F64
	ldr r0, _080933F0
	bl sub_080011E4
	ldr r2, _080933F4
	movs r0, #0
	strh r0, [r2, #0]
	ldr r1, _080933F8
	str r2, [r1, #0]
	ldr r0, _080933FC
	str r0, [r1, #4]
	ldr r0, _08093400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	pop {r0}
	bx r0
_080933E0: .4byte gUnk_03000267
_080933E4: .4byte gUnk_03000266
_080933E8: .4byte gUnk_03000268
_080933EC: .4byte sub_0809342C
_080933F0: .4byte sub_08093498
_080933F4: .4byte gUnk_03000264
_080933F8: .4byte 0x040000D4
_080933FC: .4byte 0x04000014
_08093400: .4byte 0xE3400001
	thumb_func_end sub_080933A0
