	thumb_func_start sub_080012F8
sub_080012F8: @ 0x080012F8
	push {r4, r5, lr}
	ldr r4, _08001334
	movs r0, #0x96
	lsls r0, r0, #5
	bl sub_08001494
	str r0, [r4, #0]
	movs r3, #0
	ldr r5, _08001338
	movs r1, #0
	movs r2, #0
_0800130E:
	ldr r0, [r4, #0]
	adds r0, r2, r0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r2, #0xc
	adds r3, #1
	cmp r3, r5
	bls _0800130E
	movs r1, #0
	ldr r0, _0800133C
	str r1, [r0, #0]
	ldr r0, _08001340
	str r1, [r0, #0]
	ldr r0, _08001344
	str r1, [r0, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
_08001334: .4byte gUnk_0300235C
_08001338: .4byte 0x0000018F
_0800133C: .4byte gUnk_03002358
_08001340: .4byte gUnk_03002354
_08001344: .4byte gUnk_03002360
	thumb_func_end sub_080012F8
