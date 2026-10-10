	thumb_func_start sub_080066BC
sub_080066BC: @ 0x080066BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	movs r0, #1
	str r0, [sp, #0]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08000A34
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	movs r0, #0x90
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r0, #0x10
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #1
	movs r3, #0
	bl sub_0800BCDC
	ldr r1, _08006760
	ldr r0, [sp, #0x44]
	ands r0, r1
	movs r1, #0xec
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp, #0x44]
	add r1, sp, #0x44
	movs r0, #1
	bl sub_08000AA8
	ldr r1, _08006764
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #4
	movs r2, #0
	movs r3, #3
	bl sub_08065158
	bl sub_080003F0
	bl sub_080003F0
	movs r0, #6
	bl sub_0801AB50
	movs r0, #0
	str r0, [sp, #0x48]
	mov sl, r0
	movs r1, #0
	str r1, [sp, #0x4c]
	add r4, sp, #0x38
	strh r0, [r4, #6]
	add r1, sp, #0x48
	ldrh r1, [r1, #0]
	strh r1, [r4, #4]
	add r0, sp, #0x48
	ldrh r0, [r0, #0]
	strh r0, [r4, #2]
	add r1, sp, #0x48
	ldrh r1, [r1, #0]
	strh r1, [r4, #0]
	bl sub_080020F4
	cmp r0, #0
	bne _08006782
	movs r0, #0
	b _08006786
_08006760: .4byte 0xFFFF0000
_08006764: .4byte 0x00050001
_08006768:
	movs r0, #1
	str r0, [sp, #0x48]
	b _08006A88
_0800676E:
	bl sub_080020F4
	bl sub_08002118
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0xc]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	b _08006A88
_08006782:
	bl sub_080020F4
_08006786:
	bl sub_08002118
	adds r4, r0, #0
	movs r0, #0x30
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	movs r0, #0
	strb r0, [r4, #0xc]
	mov r1, sp
	adds r1, #0x42
	movs r2, #0
	strh r2, [r1, #0]
	add r0, sp, #0x40
	strh r2, [r0, #0]
	b _080067C0
_080067A4:
	bl sub_08002164
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x3c
	movs r3, #0
	bl sub_08065230
	bl sub_080003F0
_080067C0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080067A4
_080067C8:
	bl sub_080020F4
	cmp r0, #0
	beq _080067D2
	b _08006954
_080067D2:
	movs r1, #0
	mov r9, r1
	ldr r4, _080067F8
	ldrh r1, [r4, #0]
	ldrh r2, [r4, #2]
	mov r0, r9
	str r0, [sp, #0]
	add r0, sp, #4
	movs r3, #1
	bl sub_08065230
	movs r6, #1
	movs r7, #0
	adds r4, #4
	mov r8, r4
	mov r5, sp
	adds r5, #0x3a
	b _08006854
	.2byte 0x0000
_080067F8: .4byte gUnk_080B99D8
_080067FC:
	adds r0, r6, #0
	bl sub_08002118
	adds r4, r0, #0
	ldr r0, _0800681C
	movs r1, #1
	lsls r1, r6
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	bne _08006820
	ldrh r0, [r5, #0]
	adds r0, #1
	strh r0, [r5, #0]
	b _08006822
	.2byte 0x0000
_0800681C: .4byte gUnk_03002730
_08006820:
	strh r7, [r5, #0]
_08006822:
	ldrh r0, [r5, #0]
	cmp r0, #5
	bls _0800682C
	strb r7, [r4, #8]
	strb r7, [r4, #9]
_0800682C:
	ldrb r0, [r4, #8]
	cmp r0, #0x4f
	bne _0800684C
	ldrb r0, [r4, #9]
	cmp r0, #0x4b
	bne _0800684C
	movs r1, #1
	add r9, r1
	mov r0, r8
	ldrh r1, [r0, #0]
	ldrh r2, [r0, #2]
	str r7, [sp, #0]
	add r0, sp, #4
	movs r3, #1
	bl sub_08065230
_0800684C:
	movs r1, #4
	add r8, r1
	adds r5, #2
	adds r6, #1
_08006854:
	bl sub_08002164
	cmp r6, r0
	blo _080067FC
	bl sub_080022F4
	cmp r0, #0
	beq _080068DC
	bl sub_08002164
	subs r0, #1
	cmp r9, r0
	bne _080068DC
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #2
	add r2, sp, #0x40
	mov r3, sp
	adds r3, #0x42
	bl sub_08065370
	add r1, sp, #0x40
	ldrh r0, [r1, #0]
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x3c
	movs r3, #2
	bl sub_08065230
	ldr r0, _080068D8
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080068B2
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	bne _080068AA
	movs r0, #0xf
	bl sub_08006D08
_080068AA:
	movs r1, #1
	str r1, [sp, #0x48]
	movs r0, #1
	str r0, [sp, #0x4c]
_080068B2:
	ldr r1, [sp, #0x4c]
	cmp r1, #0
	beq _080068EE
	movs r0, #1
	add sl, r0
	movs r0, #0
	bl sub_08002118
	adds r4, r0, #0
	movs r0, #0x47
	strb r0, [r4, #8]
	movs r0, #0x4f
	strb r0, [r4, #9]
	mov r1, sl
	cmp r1, #5
	bls _080068D4
	b _08006A88
_080068D4:
	b _080068EE
	.2byte 0x0000
_080068D8: .4byte gUnk_03001324
_080068DC:
	movs r0, #0
	str r0, [sp, #0x4c]
	mov sl, r0
	bl sub_08002118
	adds r4, r0, #0
	mov r1, sl
	strb r1, [r4, #8]
	strb r1, [r4, #9]
_080068EE:
	movs r0, #0
	bl sub_08002118
	adds r4, r0, #0
	bl sub_0800CE30
	cmp r0, #0
	beq _08006900
	movs r0, #1
_08006900:
	strb r0, [r4, #0xa]
	ldr r0, _0800691C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _08006920
	ldrb r0, [r4, #0xa]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0xa]
	movs r1, #1
	str r1, [sp, #0x50]
	b _0800692C
	.2byte 0x0000
_0800691C: .4byte gUnk_03004210
_08006920:
	ldrb r1, [r4, #0xa]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r4, #0xa]
	movs r0, #0
	str r0, [sp, #0x50]
_0800692C:
	ldr r0, _08006950
	ldrh r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800693A
	b _08006A64
_0800693A:
	mov r1, sl
	cmp r1, #0
	beq _08006942
	b _08006A64
_08006942:
	movs r0, #0x10
	bl sub_0805865C
	movs r0, #0
	str r0, [sp, #0x48]
	b _08006A88
	.2byte 0x0000
_08006950: .4byte gUnk_03001324
_08006954:
	bl sub_080020F4
	bl sub_08002118
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0xc]
	movs r0, #0x4f
	strb r0, [r4, #8]
	movs r0, #0x4b
	strb r0, [r4, #9]
	movs r0, #0
	bl sub_08002118
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0x47
	bne _08006980
	ldrb r0, [r4, #9]
	cmp r0, #0x4f
	bne _08006980
	b _08006768
_08006980:
	movs r6, #0
	mov r8, r6
	ldr r7, _0800698C
	add r5, sp, #0x38
	b _08006A26
	.2byte 0x0000
_0800698C: .4byte gUnk_080B99D8
_08006990:
	adds r0, r6, #0
	bl sub_08002118
	adds r4, r0, #0
	ldr r0, _080069B0
	movs r1, #1
	lsls r1, r6
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	bne _080069B4
	ldrh r0, [r5, #0]
	adds r0, #1
	strh r0, [r5, #0]
	b _080069B8
	.2byte 0x0000
_080069B0: .4byte gUnk_03002730
_080069B4:
	mov r1, r8
	strh r1, [r5, #0]
_080069B8:
	ldrh r0, [r5, #0]
	cmp r0, #5
	bls _080069C4
	mov r0, r8
	strb r0, [r4, #8]
	strb r0, [r4, #9]
_080069C4:
	ldrb r0, [r4, #8]
	cmp r0, #0x4f
	bne _080069E2
	ldrb r0, [r4, #9]
	cmp r0, #0x4b
	bne _080069E2
	ldrh r1, [r7, #0]
	ldrh r2, [r7, #2]
	mov r0, r8
	str r0, [sp, #0]
	add r0, sp, #4
	movs r3, #1
	bl sub_08065230
	b _08006A20
_080069E2:
	cmp r6, #0
	bne _08006A20
	ldrb r1, [r4, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080069F6
	bl sub_0800CE08
	b _080069FA
_080069F6:
	bl sub_0800CE1C
_080069FA:
	ldrb r0, [r4, #0xa]
	movs r1, #2
	ands r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	negs r1, r1
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x50]
	ldrh r0, [r5, #0]
	cmp r0, #5
	bhi _08006A20
	ldrh r1, [r7, #0]
	ldrh r2, [r7, #2]
	mov r0, r8
	str r0, [sp, #0]
	add r0, sp, #4
	movs r3, #1
	bl sub_08065230
_08006A20:
	adds r7, #4
	adds r5, #2
	adds r6, #1
_08006A26:
	bl sub_08002164
	cmp r6, r0
	blo _08006990
	ldr r0, _08006A84
	ldrh r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08006A52
	ldr r1, [sp, #0x4c]
	cmp r1, #0
	bne _08006A58
	movs r0, #0
	str r0, [sp, #0x48]
	movs r0, #0x10
	bl sub_0805865C
	movs r1, #1
	str r1, [sp, #0x4c]
	movs r0, #0
	mov sl, r0
_08006A52:
	ldr r1, [sp, #0x4c]
	cmp r1, #0
	beq _08006A64
_08006A58:
	mov r0, sl
	movs r1, #1
	add sl, r1
	cmp r0, #0x3c
	bls _08006A64
	b _0800676E
_08006A64:
	bl sub_08002164
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x3c
	movs r3, #0
	bl sub_08065230
	bl sub_080003F0
	b _080067C8
	.2byte 0x0000
_08006A84: .4byte gUnk_03001324
_08006A88:
	ldr r0, [sp, #0x48]
	cmp r0, #1
	bne _08006A9A
	movs r0, #6
	bl sub_0801ABE8
	bl sub_080003F0
	b _08006AA4
_08006A9A:
	movs r0, #0xa
	bl sub_0801AA8C
_08006AA0:
	bl sub_080003F0
_08006AA4:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08006AA0
	ldr r1, [sp, #0x48]
	cmp r1, #0
	beq _08006AB8
	cmp r1, #1
	beq _08006AF2
	b _08006B0E
_08006AB8:
	bl sub_080020F4
	bl sub_08002118
	adds r4, r0, #0
	add r0, sp, #0x48
	ldrb r0, [r0, #0]
	strb r0, [r4, #8]
	add r1, sp, #0x48
	ldrb r1, [r1, #0]
	strb r1, [r4, #9]
	add r0, sp, #0x48
	ldrb r0, [r0, #0]
	strb r0, [r4, #0xa]
	add r1, sp, #0x48
	ldrb r1, [r1, #0]
	strb r1, [r4, #0xb]
	bl sub_080020E0
	movs r6, #0
_08006AE0:
	bl sub_080003F0
	adds r6, #1
	cmp r6, #0x45
	bls _08006AE0
	movs r0, #0x14
	bl sub_08000420
	b _08006B0E
_08006AF2:
	bl sub_080021C4
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _08006B08
	bl sub_08088914
	ldr r1, _08006B28
	ldr r0, _08006B24
	bl sub_080003F4
_08006B08:
	movs r0, #1
	bl sub_0800CB3C
_08006B0E:
	bl sub_0800035C
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08006B24: .4byte 0x5A112EBF
_08006B28: .4byte 0x00000002
	thumb_func_end sub_080066BC
