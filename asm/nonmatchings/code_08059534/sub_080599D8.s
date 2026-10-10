	thumb_func_start sub_080599D8
sub_080599D8: @ 0x080599D8
	push {r4, r5, lr}
	adds r5, r0, #0
	subs r4, r5, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _080599F8
	ldr r0, _080599F4
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r0, #1
	lsls r0, r4
	ldr r1, [r1, #0]
	b _08059A02
_080599F4: .4byte gUnk_03005CF4
_080599F8:
	ldr r0, _08059A24
	ldr r1, [r0, #0]
	movs r0, #1
	lsls r0, r4
	ldr r1, [r1, #0x78]
_08059A02:
	ands r1, r0
	cmp r1, #0
	bne _08059A36
	subs r4, r5, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _08059A28
	ldr r0, _08059A24
	ldr r2, [r0, #0]
	adds r2, #0x80
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
	b _08059A36
_08059A24: .4byte gUnk_03005CF4
_08059A28:
	ldr r0, _08059A3C
	ldr r2, [r0, #0]
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_08059A36:
	pop {r4, r5}
	pop {r0}
	bx r0
_08059A3C: .4byte gUnk_03005CF4
	thumb_func_end sub_080599D8
