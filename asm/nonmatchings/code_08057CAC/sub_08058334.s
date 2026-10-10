	thumb_func_start sub_08058334
sub_08058334: @ 0x08058334
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x10
	adds r6, r0, #0
	mov r8, r1
	adds r5, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _08058388
	adds r0, r0, r1
	ldr r1, _0805838C
	str r1, [sp, #8]
	lsls r6, r6, #8
	str r6, [sp, #0]
	mov r1, r8
	lsls r1, r1, #8
	str r1, [sp, #4]
	lsls r4, r4, #0x10
	orrs r5, r4
	str r5, [sp, #0xc]
	add r2, sp, #8
	add r3, sp, #0xc
	mov r1, sp
	bl sub_08021FE0
	cmp r0, #0
	beq _080583E0
	ldr r0, _08058390
	ldr r0, [r0, #0]
	ldr r2, _08058394
	adds r4, r0, r2
	movs r5, #0
	b _0805839C
_08058388: .4byte gUnk_03003D6C
_0805838C: .4byte 0x00200018
_08058390: .4byte gUnk_03005CF4
_08058394: .4byte 0x00000E34
_08058398:
	adds r5, #1
	adds r4, #0x28
_0805839C:
	cmp r5, #0x1d
	bhi _080583DC
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08058398
	b _080583B0
_080583AC:
	bl sub_080003F0
_080583B0:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080583AC
	movs r0, #0x3c
	str r0, [r4, #8]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000274
_080583DC:
	bl sub_0800035C
_080583E0:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_08058334
