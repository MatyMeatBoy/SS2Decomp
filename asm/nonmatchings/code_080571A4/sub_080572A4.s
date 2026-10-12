	thumb_func_start sub_080572A4
sub_080572A4: @ 0x080572A4
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r5, _080572E0
	movs r0, #0x8b
	lsls r0, r0, #2
	mov ip, r0
	movs r4, #0
	movs r7, #0xb0
	lsls r7, r7, #1
	movs r6, #0xb2
	lsls r6, r6, #1
_080572BA:
	ldr r0, [r5, #0]
	add r0, ip
	adds r0, r0, r3
	strb r4, [r0, #0]
	ldr r1, [r5, #0]
	lsls r2, r3, #3
	adds r0, r1, r7
	adds r0, r0, r2
	str r4, [r0, #0]
	adds r1, r1, r6
	adds r1, r1, r2
	str r4, [r1, #0]
	adds r3, #1
	cmp r3, #9
	bls _080572BA
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080572E0: .4byte gUnk_03005CF4
	thumb_func_end sub_080572A4
