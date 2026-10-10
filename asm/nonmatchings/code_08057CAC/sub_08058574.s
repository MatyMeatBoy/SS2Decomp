	thumb_func_start sub_08058574
sub_08058574: @ 0x08058574
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	mov r9, r0
	adds r7, r1, #0
	mov r8, r2
	ldr r0, _08058590
	ldr r0, [r0, #0]
	ldr r1, _08058594
	adds r4, r0, r1
	movs r5, #0
	b _0805859C
_08058590: .4byte gUnk_03005CF4
_08058594: .4byte 0x00000E34
_08058598:
	adds r5, #1
	adds r4, #0x28
_0805859C:
	cmp r5, #0x1d
	bhi _080585E0
	adds r0, r4, #0
	bl sub_08000470
	adds r6, r0, #0
	cmp r6, #0
	bne _08058598
	str r7, [sp, #0xc]
	mov r0, r8
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _080585F0
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	mov r2, r9
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_080585E0:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080585F0: .4byte sub_0802A104
	thumb_func_end sub_08058574
