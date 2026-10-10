	thumb_func_start sub_080922B4
sub_080922B4: @ 0x080922B4
	ldr r2, _080922FC
	ldr r0, _08092300
	str r0, [r2, #0x18]
	ldr r1, _08092304
	ldr r0, _08092308
	str r0, [r1, #0x18]
	ldr r0, _0809230C
	str r0, [r2, #0x1c]
	ldr r0, _08092310
	str r0, [r1, #0x1c]
	ldr r0, _08092314
	str r0, [r2, #0]
	ldr r0, _08092318
	str r0, [r1, #0]
	ldr r0, _0809231C
	str r0, [r2, #4]
	ldr r0, _08092320
	str r0, [r1, #4]
	ldr r0, _08092324
	str r0, [r2, #8]
	ldr r0, _08092328
	str r0, [r1, #8]
	ldr r0, _0809232C
	str r0, [r2, #0x10]
	ldr r0, _08092330
	str r0, [r1, #0x10]
	ldr r0, _08092334
	str r0, [r2, #0x14]
	ldr r0, _08092338
	str r0, [r1, #0x14]
	ldr r0, _0809233C
	str r0, [r2, #0xc]
	ldr r0, _08092340
	str r0, [r1, #0xc]
	bx lr
	.2byte 0x0000
_080922FC: .4byte gUnk_03000210
_08092300: .4byte sub_08095A60
_08092304: .4byte gUnk_03000230
_08092308: .4byte sub_08095AD8
_0809230C: .4byte sub_08092CB8
_08092310: .4byte sub_080923FC
_08092314: .4byte sub_08092EB4
_08092318: .4byte sub_08092F58
_0809231C: .4byte sub_080934D4
_08092320: .4byte sub_08093584
_08092324: .4byte sub_080943F8
_08092328: .4byte sub_08093BAC
_0809232C: .4byte sub_08094590
_08092330: .4byte sub_08094638
_08092334: .4byte sub_08094A00
_08092338: .4byte sub_08094AB8
_0809233C: .4byte sub_08095518
_08092340: .4byte sub_08094F3C
	thumb_func_end sub_080922B4
