	thumb_func_start sub_0802258C
sub_0802258C: @ 0x0802258C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	mov sl, r1
	bl sub_080653CC
	mov r9, r0
	asrs r0, r4, #0x10
	lsls r5, r0, #8
	movs r7, #0
	lsls r4, r4, #0x10
	mov r8, r4
	mov r6, sp
	adds r6, #0xa
	b _080225FC
_080225B2:
	bl sub_0800CC98
	cmp r0, #0
	bne _080225F6
	bl sub_0800CD8C
	cmp r0, #0
	bne _080225F6
	bl sub_0800CCCC
	adds r4, r0, #0
	cmp r4, #0
	bne _080225F6
	lsls r1, r5, #8
	asrs r1, r1, #0x10
	movs r0, #0x10
	str r0, [sp, #0]
	str r4, [sp, #4]
	mov r2, r8
	asrs r0, r2, #0x10
	add r2, sp, #8
	adds r3, r6, #0
	bl sub_0800BC08
	add r0, sp, #8
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0
	ldrsh r2, [r6, r0]
	str r4, [sp, #0]
	mov r0, r9
	movs r3, #0x1f
	bl sub_08065230
_080225F6:
	subs r5, #0x80
	bl sub_080003F0
_080225FC:
	bl sub_0800CB78
	cmp r0, #0
	bne _0802260C
	adds r0, r7, #0
	adds r7, #1
	cmp r0, #0x13
	bls _080225B2
_0802260C:
	ldr r2, _0802262C
	movs r1, #1
	mov r0, sl
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0802262C: .4byte gUnk_03005CE4
	thumb_func_end sub_0802258C
