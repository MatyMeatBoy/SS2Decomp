	thumb_func_start sub_080658CC
sub_080658CC: @ 0x080658CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080658E0
	ldr r0, [r0, #0]
	mov r8, r0
	movs r4, #0
_080658DA:
	lsls r6, r4, #2
	adds r7, r4, #1
	b _080658E8
_080658E0: .4byte gUnk_03006208
_080658E4:
	bl sub_080003F0
_080658E8:
	adds r0, r6, r4
	lsls r0, r0, #3
	add r0, r8
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _080658E4
	adds r4, r7, #0
	cmp r4, #3
	bls _080658DA
	ldr r4, _08065914
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r4, #0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08065914: .4byte gUnk_03006208
	thumb_func_end sub_080658CC
