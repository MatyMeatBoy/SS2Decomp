	thumb_func_start sub_08000498
sub_08000498: @ 0x08000498
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0]
	bl Div
	str r1, [r4, #0]
	pop {r4, pc}
	.2byte 0x0000
_080004A8: .4byte sub_0800035C
_080004AC: .4byte sub_0800035C
_080004B0: .4byte sub_08000378
_080004B4: .4byte sub_080003C0
	thumb_func_end sub_08000498

	arm_func_start sub_080004B8
sub_080004B8: @ 0x080004B8
	push	{r4, r5, r6, r7, r8, r9, sl, fp}
	mov	ip, #67108864
	ldr	fp, _080004F4
	add	sl, fp, #64
	mov	r9, #1
	mov	r8, #0
	strb	r8, [ip, #520]
	ldm	sl, {r0, r1, r2, r3, r4, r5, r6, r7}
	stmia	sl!, {r4, r5, r6, r7}
	stmia	sl!, {r0, r1, r2, r3}
	ldr	r0, [fp, #4]
	str	r8, [fp, #4]
	strb	r9, [ip, #520]
	pop	{r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
_080004F4:
	.4byte gUnk_030024B0
	arm_func_end sub_080004B8

	arm_func_start sub_080004F8
sub_080004F8: @ 0x080004F8
	mov	ip, #67108864
	add	ip, ip, #288
	ldm	ip, {r0, r1}
	push	{r7, r8, r9, sl, fp}
	ldr	fp, _08000610
	mov	r9, #254
	add	r9, r9, #65024
	ldrh	r3, [ip, #8]
	and	r3, r3, #64
	strb	r3, [fp, #9]
	ldr	sl, [fp, #20]
	adds	r3, sl, #1
	blt _08000554
	bne _08000548
	strh	r9, [ip, #10]
	add	r8, fp, #40
	ldm	r8, {r2, r3}
	mov	r7, r2
	stm	r8, {r3, r7}
	b _08000554
_08000548:
	ldr	r3, [fp, #44]
	ldr	r2, [r3, sl, lsl #1]
	strh	r2, [ip, #10]
_08000554:
	cmp	sl, #15
	addlt	sl, sl, #1
	strlt	sl, [fp, #20]
	push	{r0, r1, r5, r6}
	mov	r6, #3
_08000568:
	add	r8, fp, #24
	add	r8, r8, r6, lsl #2
	ldr	sl, [r8]
	lsl	r3, r6, #1
	ldrh	r5, [sp, r3]
	cmp	r5, r9
	bne _08000598
	cmp	sl, #13
	ble _08000598
	mov	r0, #1
	sub	sl, r0, #2
	b _080005C4
_08000598:
	ldr	r0, [r8, #24]
	lsl	r3, sl, #1
	strh	r5, [r0, r3]
	cmp	sl, #13
	bne _080005C4
	ldr	r1, [r8, #40]
	str	r0, [r8, #40]
	str	r1, [r8, #24]
	add	r3, fp, #4
	mov	r0, #1
	strb	r0, [r3, r6]
_080005C4:
	cmp	sl, #15
	addlt	sl, sl, #1
	str	sl, [r8]
	subs	r6, r6, #1
	bge _08000568
	ldrb	r0, [fp]
	cmp	r0, #0
	beq _08000604
	ldr	r7, _08000614
	mov	r0, #0
	strh	r0, [r7]
	ldrh	r0, [ip, #8]
	orr	r0, r0, #128
	strh	r0, [ip, #8]
	mov	r0, #192
	strh	r0, [r7]
_08000604:
	add	sp, sp, #8
	pop	{r5, r6, r7, r8, r9, sl, fp}
	bx	lr
_08000610:
	.4byte gUnk_030024B0
_08000614:
	.4byte 0x0400010E
	arm_func_end sub_080004F8

