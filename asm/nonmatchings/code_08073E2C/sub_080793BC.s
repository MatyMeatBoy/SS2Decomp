	thumb_func_start sub_080793BC
sub_080793BC: @ 0x080793BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	movs r6, #0
	ldr r1, _0807944C
	lsls r0, r7, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _080793EA
	movs r3, #1
_080793D8:
	adds r6, #1
	cmp r6, #0xf
	bhi _08079440
	adds r1, r3, #0
	lsls r1, r6
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne _080793D8
_080793EA:
	cmp r6, #0xf
	bhi _08079440
	ldr r5, _08079450
	lsls r0, r7, #2
	mov r8, r0
	add r5, r8
	ldr r1, [r5, #0]
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	ldr r0, [r5, #0]
	adds r4, r4, r0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08079440
	ldr r0, _08079454
	str r0, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_08000274
	ldr r2, _0807944C
	add r2, r8
	movs r1, #1
	lsls r1, r6
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
_08079440:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0807944C: .4byte gUnk_030063E0
_08079450: .4byte gUnk_030063B0
_08079454: .4byte sub_08078BCC
	thumb_func_end sub_080793BC
