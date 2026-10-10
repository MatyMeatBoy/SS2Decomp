	thumb_func_start sub_0801DFE8
sub_0801DFE8: @ 0x0801DFE8
	push {r4, r5, r6, lr}
	ldr r4, _0801E01C
	lsls r3, r0, #5
	adds r3, r3, r4
	ldm r3!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	ldm r3!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	ldm r3!, {r4, r5}
	stm r1!, {r4, r5}
	ldr r3, _0801E020
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r3
	ldm r1!, {r0, r3, r6}
	stm r2!, {r0, r3, r6}
	ldm r1!, {r4, r5, r6}
	stm r2!, {r4, r5, r6}
	ldm r1!, {r0, r3, r4}
	stm r2!, {r0, r3, r4}
	ldm r1!, {r0, r5, r6}
	stm r2!, {r0, r5, r6}
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0801E01C: .4byte gUnk_0848FA48
_0801E020: .4byte gUnk_0849E580
	thumb_func_end sub_0801DFE8
