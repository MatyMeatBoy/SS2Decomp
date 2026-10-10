	thumb_func_start sub_0800023C
sub_0800023C: @ 0x0800023C
	movs r3, #0
	str r3, [r0, #0]
	str r3, [r0, #8]
	str r3, [r0, #0x14]
	str r3, [r0, #0x18]
	ldr r1, _08000268
	str r0, [r1, #0]
	ldr r1, _08000270
	str r3, [r1, #0]
	movs r3, #1
	str r3, [r0, #4]
	ldr r4, [r0, #0x10]
	subs r4, #0x30
	str r1, [r4, #0xc]
	str r2, [r4, #0x10]
	ldr r5, _080004A8
	str r5, [r4, #0x2c]
	str r4, [r0, #0x10]
	ldr r0, _0800026C
	movs r3, #1
	str r3, [r0, #0]
	b _080002E0
_08000268: .4byte gUnk_03001240
_0800026C: .4byte gUnk_03001244
_08000270: .4byte gUnk_0300123C
	thumb_func_end sub_0800023C
