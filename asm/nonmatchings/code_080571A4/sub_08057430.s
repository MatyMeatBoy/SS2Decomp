	thumb_func_start sub_08057430
sub_08057430: @ 0x08057430
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	ldr r1, _08057458
	ldr r3, [r1, #0]
	movs r4, #1
	lsls r4, r2
	ldr r2, [r3, #0x6c]
	adds r1, r2, #0
	ands r1, r4
	cmp r1, #0
	bne _080574A6
	orrs r2, r4
	str r2, [r3, #0x6c]
	ldr r0, _0805745C
	adds r4, r3, r0
	movs r5, #0
	b _08057464
_08057458: .4byte gUnk_03005CF4
_0805745C: .4byte 0x000012E4
_08057460:
	adds r5, #1
	adds r4, #0x28
_08057464:
	cmp r5, #0x1d
	bhi _080574A4
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08057460
	b _08057478
_08057474:
	bl sub_080003F0
_08057478:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08057474
	movs r0, #0x3c
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	mov r1, r8
	bl sub_08000274
	adds r6, r4, #0
_080574A4:
	adds r0, r6, #0
_080574A6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08057430
