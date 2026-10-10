	thumb_func_start sub_08009138
sub_08009138: @ 0x08009138
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	adds r7, r1, #0
	movs r0, #0
	movs r1, #0
	bl sub_08000990
	movs r0, #0xf8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	ldr r1, _08009190
	ldr r0, [sp, #0]
	ands r0, r1
	ldr r1, _08009194
	orrs r0, r1
	str r0, [sp, #0]
	movs r0, #0
	mov r1, sp
	bl sub_08000AA8
	cmp r7, #6
	bne _080091A0
	ldr r0, _08009198
	movs r1, #0xae
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrh r1, [r0, #2]
	movs r2, #0xea
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	mov r1, sp
	strh r0, [r1, #0]
	ldr r1, _0800919C
	movs r0, #0x21
	strh r0, [r1, #0x3c]
	b _080091B6
_08009190: .4byte 0xFFFF0000
_08009194: .4byte 0x00001C08
_08009198: .4byte gUnk_0847846C
_0800919C: .4byte gUnk_03001250
_080091A0:
	ldr r1, _0800920C
	movs r0, #0x74
	muls r0, r7, r0
	adds r0, r0, r1
	ldrh r1, [r0, #2]
	movs r2, #0xe8
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	mov r1, sp
	strh r0, [r1, #0]
_080091B6:
	movs r0, #1
	mov r1, sp
	bl sub_08000AA8
	ldr r1, _08009210
	mov r0, sp
	strh r1, [r0, #0]
	movs r0, #2
	mov r1, sp
	bl sub_08000AA8
	ldr r1, _08009214
	mov r0, sp
	strh r1, [r0, #0]
	movs r0, #3
	mov r1, sp
	bl sub_08000AA8
	mov r1, r8
	ldr r0, [r1, #0]
	bl sub_08007290
	adds r6, r0, #0
	mov r2, r8
	ldrh r0, [r2, #0]
	movs r1, #0x90
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r5, r0, #0
	movs r4, #0
_080091F6:
	bl sub_0800CDF8
	cmp r0, #0
	bne _08009206
	bl sub_0800CB78
	cmp r0, #0
	beq _08009218
_08009206:
	bl sub_080013F8
	b _080092B2
_0800920C: .4byte gUnk_0847846C
_08009210: .4byte 0x00001E02
_08009214: .4byte 0x00001F03
_08009218:
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
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _080091F6
	mov r1, r8
	ldr r0, [r1, #0]
	cmp r0, #0
	bge _0800925E
	cmp r7, #0x10
	beq _08009248
	cmp r7, #0x16
	bne _08009252
_08009248:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #0
	b _08009256
_08009252:
	movs r0, #0
	adds r1, r5, #0
_08009256:
	movs r2, #0xf
	bl sub_08000AF0
	b _08009268
_0800925E:
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0xf
	bl sub_08000AF0
_08009268:
	ldr r0, _08009288
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _0800928C
	bl sub_0800CDC0
	cmp r0, #0
	beq _0800928C
	movs r0, #0xd8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	b _080092A2
_08009288: .4byte gUnk_03003170
_0800928C:
	ldr r0, _080092C0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #0xd
	beq _080092A2
	movs r0, #0xf8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
_080092A2:
	mov r0, r9
	bl sub_08001538
	ldr r1, _080092C4
	movs r0, #0
	strh r0, [r1, #0]
	bl sub_080003F0
_080092B2:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080092C0: .4byte gUnk_03003170
_080092C4: .4byte gUnk_03001F40
	thumb_func_end sub_08009138
