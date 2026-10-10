	thumb_func_start sub_080921E4
sub_080921E4: @ 0x080921E4
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov r8, r1
	bl sub_08007280
	adds r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_08007280
	adds r6, r0, #0
	ldrh r0, [r5, #0]
	movs r1, #0xe0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl sub_08007280
	mov r9, r0
	movs r4, #0
_08092210:
	lsls r1, r4, #0xb
	adds r0, r6, r1
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08001348
	bl sub_080003F0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _08092210
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r7
	cmp r0, #0
	beq _08092256
	adds r0, r5, #4
	str r0, [sp, #0]
	mov r2, r8
	lsls r1, r2, #0xb
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08001348
	bl sub_080003F0
	b _0809228E
_08092256:
	str r0, [sp, #0]
	adds r0, r5, #4
	mov r1, sp
	bl sub_08000BC8
	str r0, [sp, #0]
	mov r2, r8
	lsls r1, r2, #0xb
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08001348
	movs r4, #0
_08092276:
	bl sub_080003F0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08092276
	ldr r0, [sp, #0]
	cmp r0, #0
	beq _0809228E
	bl sub_08001538
_0809228E:
	movs r0, #0
	mov r1, r9
	movs r2, #0x10
	bl sub_08000AF0
	ldr r1, _080922B0
	movs r0, #0
	strh r0, [r1, #0]
	mov r0, r9
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_080922B0: .4byte gUnk_03001F40
	thumb_func_end sub_080921E4
