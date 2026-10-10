	thumb_func_start sub_08075494
sub_08075494: @ 0x08075494
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r1, _08075514
	lsls r0, r5, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _080754BE
	movs r3, #1
_080754AC:
	adds r4, #1
	cmp r4, #0xf
	bhi _0807550E
	adds r1, r3, #0
	lsls r1, r4
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne _080754AC
_080754BE:
	cmp r4, #0xf
	bhi _0807550E
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r2, r0, #0
	ldr r0, _08075518
	lsls r6, r5, #2
	adds r0, r6, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r1, r0, r1
	str r2, [r1, #0x20]
	cmp r2, #0
	beq _0807550E
	movs r0, #0x34
	str r0, [r1, #8]
	ldr r0, _0807551C
	str r0, [r1, #0xc]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1, #0x10]
	movs r0, #0
	str r0, [r1, #0x24]
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08000274
	ldr r2, _08075514
	adds r2, r6, r2
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
_0807550E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08075514: .4byte gUnk_030063E0
_08075518: .4byte gUnk_030063B0
_0807551C: .4byte sub_08075088
	thumb_func_end sub_08075494
