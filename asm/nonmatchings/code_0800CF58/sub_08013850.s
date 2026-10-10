	thumb_func_start sub_08013850
sub_08013850: @ 0x08013850
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r4, _08013B94
	ldr r0, [r4, #0]
	bl sub_08001538
	ldr r5, _08013B98
	ldr r0, [r5, #0]
	bl sub_08001538
	ldr r0, _08013B9C
	bl sub_08001494
	str r0, [r4, #0]
	ldr r0, _08013BA0
	bl sub_08001494
	str r0, [r5, #0]
	ldr r4, [r4, #0]
	mov r8, r4
	movs r7, #0
	movs r0, #0
	mov r9, r0
	movs r5, #0
	movs r1, #0x24
	add r1, r8
	mov sl, r1
	mov r2, r8
	adds r2, #0x68
	str r2, [sp, #8]
	mov r3, r8
	adds r3, #0x54
	str r3, [sp, #4]
	mov r6, r8
	adds r6, #0x6a
	str r6, [sp, #0xc]
_080138A0:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _08013BA4
	adds r4, r1, r0
	strh r5, [r4, #0]
	strh r5, [r4, #0x12]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	strh r5, [r4, #0x22]
	str r5, [r4, #0x30]
	strh r5, [r4, #0x20]
	strh r5, [r4, #0x24]
	strh r5, [r4, #0x2a]
	adds r0, r4, #0
	adds r0, #0xc8
	strh r5, [r0, #0]
	adds r0, #2
	strh r5, [r0, #0]
	strh r5, [r4, #0x38]
	strh r5, [r4, #0x3a]
	strh r5, [r4, #0x3c]
	strh r5, [r4, #0x3e]
	subs r0, #0x8a
	strh r5, [r0, #0]
	adds r0, #0xc
	movs r1, #0
	bl sub_0801E0BC
	adds r0, r4, #0
	adds r0, #0x58
	strh r5, [r0, #0]
	adds r0, #2
	strh r5, [r0, #0]
	adds r0, #8
	strh r5, [r0, #0]
	subs r0, #2
	strh r5, [r0, #0]
	adds r0, #0x17
	mov r1, r9
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	subs r0, #0x14
	strh r5, [r0, #0]
	adds r0, #2
	strb r1, [r0, #0]
	adds r0, #0x16
	movs r1, #0
	bl sub_0801E0BC
	adds r0, r4, #0
	adds r0, #0xc4
	strh r5, [r0, #0]
	subs r0, #2
	strh r5, [r0, #0]
	adds r0, #4
	strh r5, [r0, #0]
	subs r0, #0x3a
	str r5, [r0, #0]
	adds r0, #4
	str r5, [r0, #0]
	adds r0, #0x4c
	str r5, [r0, #0]
	movs r2, #0x8b
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r5, [r0, #0]
	adds r0, r4, #0
	adds r0, #0x88
	strh r5, [r0, #0]
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r4, r3
	str r5, [r0, #0]
	movs r6, #0xa2
	lsls r6, r6, #1
	adds r0, r4, r6
	str r5, [r0, #0]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r4, r1
	str r5, [r0, #0]
	movs r6, #0
	adds r1, r7, #1
	ldr r3, _08013BA8
	adds r0, r4, #0
	adds r0, #0xe4
_08013952:
	stm r0!, {r3}
	adds r6, #1
	cmp r6, #4
	bls _08013952
	movs r6, #0
	ldr r3, _08013BA8
	adds r0, r4, #0
	adds r0, #0xf8
_08013962:
	stm r0!, {r3}
	adds r6, #1
	cmp r6, #3
	bls _08013962
	adds r7, r1, #0
	cmp r7, #3
	bls _080138A0
	movs r6, #0
	movs r1, #0
_08013974:
	mov r2, r8
	adds r0, r2, r6
	strb r1, [r0, #0]
	adds r6, #1
	cmp r6, #9
	bls _08013974
	movs r4, #0
	strh r4, [r2, #0xa]
	strh r4, [r2, #0xc]
	strh r4, [r2, #0x10]
	strh r4, [r2, #0x12]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x16]
	strh r4, [r2, #0x18]
	strh r4, [r2, #0x1a]
	mov r0, sl
	movs r1, #0
	bl sub_0801E0BC
	mov r0, sp
	strh r4, [r0, #0]
	ldr r0, _08013B98
	ldr r1, [r0, #0]
	ldr r2, _08013BAC
	mov r0, sp
	bl CpuSet
	movs r6, #0
	ldr r7, _08013B94
	mov sl, r7
	movs r3, #0xaa
	lsls r3, r3, #1
	mov ip, r3
	movs r5, #0
	movs r0, #0xa8
	lsls r0, r0, #1
	mov r9, r0
_080139BE:
	ldr r1, [r7, #0]
	adds r1, r1, r5
	mov r2, r9
	adds r0, r1, r2
	strh r4, [r0, #0]
	movs r3, #0xa9
	lsls r3, r3, #1
	adds r0, r1, r3
	strh r4, [r0, #0]
	movs r2, #0
	lsls r3, r6, #4
_080139D4:
	ldr r0, [r7, #0]
	adds r1, r2, r3
	add r0, ip
	adds r0, r0, r1
	strb r4, [r0, #0]
	adds r2, #1
	cmp r2, #0xb
	bls _080139D4
	adds r5, #0x10
	adds r6, #1
	cmp r6, #0x18
	bls _080139BE
	movs r6, #0
	ldr r7, _08013B94
	movs r4, #0
	movs r5, #0
_080139F4:
	ldr r0, [r7, #0]
	adds r0, r0, r5
	adds r1, r0, #0
	adds r1, #0x70
	strh r4, [r1, #0]
	adds r0, #0x72
	strh r4, [r0, #0]
	movs r2, #0
	lsls r3, r6, #4
_08013A06:
	ldr r0, [r7, #0]
	adds r1, r2, r3
	adds r0, #0x74
	adds r0, r0, r1
	strb r4, [r0, #0]
	adds r2, #1
	cmp r2, #0xb
	bls _08013A06
	adds r5, #0x10
	adds r6, #1
	cmp r6, #8
	bls _080139F4
	movs r2, #0
	mov r6, sl
	ldr r1, [r6, #0]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	strh r2, [r0, #0]
	movs r6, #0x81
	lsls r6, r6, #1
	adds r0, r1, r6
	strh r2, [r0, #0]
	adds r3, #0x10
	adds r0, r1, r3
	strh r2, [r0, #0]
	adds r6, #0x10
	adds r0, r1, r6
	strh r2, [r0, #0]
	adds r3, #0x10
	adds r0, r1, r3
	strh r2, [r0, #0]
	adds r6, #0x10
	adds r0, r1, r6
	strh r2, [r0, #0]
	adds r3, #0x20
	adds r0, r1, r3
	strh r2, [r0, #0]
	adds r6, #0x20
	adds r0, r1, r6
	strh r2, [r0, #0]
	subs r3, #0x10
	adds r0, r1, r3
	strh r2, [r0, #0]
	subs r6, #0x10
	adds r0, r1, r6
	strh r2, [r0, #0]
	movs r6, #0
	mov r7, sl
	movs r5, #0
	movs r0, #0xb9
	lsls r0, r0, #2
	mov ip, r0
	movs r4, #0
	movs r1, #0xb8
	lsls r1, r1, #2
	mov r9, r1
_08013A78:
	ldr r0, [r7, #0]
	adds r0, r0, r4
	mov r2, r9
	adds r1, r0, r2
	strh r5, [r1, #0]
	ldr r3, _08013BB0
	adds r0, r0, r3
	strh r5, [r0, #0]
	movs r2, #0
	adds r3, r4, #0
_08013A8C:
	ldr r0, [r7, #0]
	adds r1, r2, r3
	add r0, ip
	adds r0, r0, r1
	strb r5, [r0, #0]
	adds r2, #1
	cmp r2, #0xb
	bls _08013A8C
	adds r4, #0x10
	adds r6, #1
	cmp r6, #0x4a
	bls _08013A78
	movs r6, #0
	ldr r3, _08013B94
	movs r2, #0xc1
	lsls r2, r2, #4
	movs r1, #0
_08013AAE:
	ldr r0, [r3, #0]
	adds r0, r0, r2
	adds r0, r0, r6
	strb r1, [r0, #0]
	adds r6, #1
	cmp r6, #0x90
	bls _08013AAE
	movs r6, #0
	ldr r3, _08013B94
	movs r2, #0
_08013AC2:
	ldr r0, [r3, #0]
	lsls r1, r6, #1
	adds r0, #0x56
	adds r0, r0, r1
	strh r2, [r0, #0]
	adds r6, #1
	cmp r6, #8
	bls _08013AC2
	movs r6, #0
_08013AD4:
	adds r0, r6, #0
	bl sub_080137A0
	adds r6, #1
	cmp r6, #3
	bls _08013AD4
	movs r0, #0
	ldr r6, [sp, #8]
	strh r0, [r6, #0]
	ldr r1, [sp, #4]
	strh r0, [r1, #0]
	movs r0, #1
	ldr r2, [sp, #0xc]
	strh r0, [r2, #0]
	ldr r0, _08013BB4
	mov r3, r8
	str r0, [r3, #0x6c]
	movs r7, #0
	ldr r6, _08013B98
	mov r9, r6
	mov r3, r9
	movs r0, #0
	mov sl, r0
	ldr r5, _08013BB8
	movs r4, #0x63
_08013B06:
	ldr r0, [r3, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r0, r7
	mov r2, sl
	strb r2, [r0, #0]
	ldr r1, [r3, #0]
	lsls r2, r7, #2
	adds r0, r1, #0
	adds r0, #0x38
	adds r0, r0, r2
	str r5, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x60
	adds r0, r0, r2
	str r4, [r0, #0]
	movs r6, #0xe8
	lsls r6, r6, #1
	adds r0, r1, r6
	adds r0, r0, r7
	mov r1, sl
	strb r1, [r0, #0]
	ldr r1, [r3, #0]
	adds r0, r1, #0
	adds r0, #0x88
	adds r0, r0, r2
	str r5, [r0, #0]
	adds r1, #0xb0
	adds r1, r1, r2
	str r4, [r1, #0]
	adds r7, #1
	cmp r7, #9
	bls _08013B06
	mov r2, r9
	ldr r0, [r2, #0]
	movs r3, #1
	str r3, [r0, #0x14]
	str r3, [r0, #0x18]
	movs r2, #0
	strh r2, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	str r2, [r0, #4]
	str r2, [r0, #0xc]
	adds r1, r0, #0
	adds r1, #0xda
	strh r2, [r1, #0]
	ldr r1, _08013BBC
	str r1, [r0, #8]
	str r1, [r0, #0x10]
	str r3, [r0, #0]
	mov r3, r8
	strh r2, [r3, #0x30]
	movs r6, #0
	movs r1, #0
	mov r0, r8
	adds r0, #0x34
_08013B78:
	strh r1, [r0, #2]
	strh r1, [r0, #0]
	adds r0, #4
	adds r6, #1
	cmp r6, #7
	bls _08013B78
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08013B94: .4byte gUnk_030034E0
_08013B98: .4byte gUnk_03004210
_08013B9C: .4byte 0x00000CA4
_08013BA0: .4byte 0x0000051C
_08013BA4: .4byte gUnk_03003CE0
_08013BA8: .4byte 0x0000FFFF
_08013BAC: .4byte 0x0100028E
_08013BB0: .4byte 0x000002E2
_08013BB4: .4byte 0x00004E20
_08013BB8: .4byte 0x00057E3F
_08013BBC: .4byte 0x00000401
	thumb_func_end sub_08013850
