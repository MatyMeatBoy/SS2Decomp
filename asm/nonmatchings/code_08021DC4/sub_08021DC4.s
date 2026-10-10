	thumb_func_start sub_08021DC4
sub_08021DC4: @ 0x08021DC4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	ldr r2, _08021E38
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _08021DEA
	movs r3, #1
_08021DD8:
	adds r5, #1
	cmp r5, #0x1f
	bhi _08021E32
	adds r1, r3, #0
	lsls r1, r5
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne _08021DD8
_08021DEA:
	cmp r5, #0x1f
	bhi _08021E32
	ldr r1, _08021E3C
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r4, r1, r0
	ldr r0, _08021E40
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _08021E32
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x46
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08000274
	ldr r2, _08021E38
	movs r1, #1
	lsls r1, r5
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
_08021E32:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08021E38: .4byte gUnk_03005CE4
_08021E3C: .4byte gUnk_03005CE0
_08021E40: .4byte sub_08020E08
	thumb_func_end sub_08021DC4
