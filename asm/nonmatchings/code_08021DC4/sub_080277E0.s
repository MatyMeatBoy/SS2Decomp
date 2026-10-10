	thumb_func_start sub_080277E0
sub_080277E0: @ 0x080277E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08027804
	adds r1, r1, r0
	mov r9, r1
	bl sub_0800D070
	b _0802780C
_08027804: .4byte gUnk_03003CE0
_08027808:
	bl sub_080003F0
_0802780C:
	bl sub_08067C18
	cmp r0, #0
	beq _08027808
	movs r0, #0xa4
	add r0, r9
	mov r8, r0
	movs r1, #0xa8
	add r1, r9
	mov sl, r1
	b _08027826
_08027822:
	bl sub_080003F0
_08027826:
	bl sub_08067C08
	cmp r0, #0
	beq _08027822
	bl sub_08067BF8
	movs r0, #0x96
	lsls r0, r0, #1
	bl sub_08002298
	bl sub_08002204
	cmp r0, #0
	beq _08027848
	movs r0, #5
	bl sub_08057624
_08027848:
	ldr r0, _08027868
	ldr r2, [r0, #0]
	ldr r3, _0802786C
	adds r1, r2, r3
	ldr r1, [r1, #0]
	str r1, [sp, #0x10]
	ldrh r1, [r2, #0x10]
	adds r7, r0, #0
	cmp r1, #0
	beq _08027862
	ldrh r0, [r2, #0x1c]
	cmp r0, #0
	bne _08027870
_08027862:
	movs r5, #1
	b _08027872
	.2byte 0x0000
_08027868: .4byte gUnk_03005CF4
_0802786C: .4byte 0x0000071C
_08027870:
	movs r5, #0
_08027872:
	mov r1, r9
	ldrh r0, [r1, #0x2e]
	adds r4, r7, #0
	ldr r1, [r4, #0]
	ldr r1, [r1, #0x40]
	movs r2, #1
	bl sub_08023684
	cmp r5, #0
	bne _0802788E
	ldr r1, [r4, #0]
	movs r0, #1
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x1c]
_0802788E:
	ldr r0, [r7, #0]
	ldr r2, _0802790C
	adds r0, r0, r2
	ldr r5, [r0, #0]
	ldrh r0, [r5, #0]
	cmp r0, #0
	beq _080278B4
	movs r1, #0x92
	lsls r1, r1, #1
_080278A0:
	ldrh r0, [r5, #0]
	cmp r0, #1
	beq _080278AA
	cmp r0, #7
	bne _080278AC
_080278AA:
	adds r6, r5, #0
_080278AC:
	adds r5, r5, r1
	ldrh r0, [r5, #0]
	cmp r0, #0
	bne _080278A0
_080278B4:
	bl sub_0805D518
	ldr r4, _08027910
	ldr r0, [r4, #0]
	ldr r2, [r0, #0x44]
	cmp r2, #0
	beq _080278CC
	ldrh r1, [r6, #0]
	lsls r1, r1, #1
	adds r0, #0x22
	adds r0, r0, r1
	strh r2, [r0, #0]
_080278CC:
	bl sub_08056F8C
	ldr r2, [r4, #0]
	ldrh r1, [r2, #4]
	ldr r0, _08027914
	ands r0, r1
	movs r1, #0
	ldr r5, _08027918
	ands r0, r5
	strh r0, [r2, #4]
	str r1, [r2, #0x38]
	str r1, [r2, #0x3c]
	movs r0, #1
	negs r0, r0
	mov r3, r8
	str r0, [r3, #0]
	mov r1, sl
	str r0, [r1, #0]
	ldr r0, [r2, #0x40]
	mov r2, r9
	strh r0, [r2, #0x2c]
	bl sub_0800CCDC
	ldrh r0, [r6, #0]
	cmp r0, #7
	bne _0802792A
	ldr r0, [r4, #0]
	ldrh r1, [r0, #4]
	movs r2, #8
	orrs r1, r2
	strh r1, [r0, #4]
	b _08027920
_0802790C: .4byte 0x0000071C
_08027910: .4byte gUnk_03005CF4
_08027914: .4byte 0x0000FFEF
_08027918: .4byte 0x0000FFF7
_0802791C:
	bl sub_080003F0
_08027920:
	bl sub_08068558
	cmp r0, #0
	beq _0802791C
	b _08027934
_0802792A:
	ldr r2, [r4, #0]
	ldrh r1, [r2, #4]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r2, #4]
_08027934:
	ldr r0, _08027978
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	cmp r0, #0xb
	beq _0802799E
	movs r4, #1
	ldr r5, _0802797C
_08027942:
	ldrh r1, [r6, #0]
	ldr r0, _08027978
	ldr r0, [r0, #0]
	lsls r1, r1, #1
	adds r0, #0x22
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r3, r4, #3
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r0, r3, r1
	adds r2, r6, r0
	ldrh r0, [r2, #8]
	cmp r0, r5
	bne _08027980
	adds r0, r1, #4
	adds r0, r6, r0
	adds r0, r0, r3
	bl sub_08026338
	bl sub_0800CD9C
	b _08027992
_08027978: .4byte gUnk_03005CF4
_0802797C: .4byte 0x0000FFFF
_08027980:
	ldrh r0, [r2, #4]
	cmp r0, #0
	beq _08027992
	adds r0, r1, #4
	adds r0, r6, r0
	adds r0, r0, r3
	subs r1, r4, #1
	bl sub_080257D4
_08027992:
	adds r4, #1
	cmp r4, #3
	bls _08027942
	b _0802799E
_0802799A:
	bl sub_080003F0
_0802799E:
	mov r3, r9
	ldrh r0, [r3, #0x2e]
	ldrh r1, [r3, #0x2c]
	bl sub_0800BAC4
	cmp r0, #0
	beq _0802799A
	b _080279B2
_080279AE:
	bl sub_080003F0
_080279B2:
	bl sub_0800BA6C
	cmp r0, #0
	beq _080279AE
	bl sub_0800CDC0
	cmp r0, #0
	bne _080279D2
	mov r1, r9
	ldrh r0, [r1, #0x2e]
	cmp r0, #0xb
	beq _080279D2
	adds r0, r6, #0
	bl sub_0805A4BC
	b _080279DA
_080279D2:
	ldr r0, _08027A08
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #0x48]
_080279DA:
	bl sub_0800CDC0
	adds r2, r0, #0
	cmp r2, #0
	bne _08027A10
	ldr r0, _08027A08
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	cmp r0, #0xb
	beq _08027A10
	strh r2, [r1, #0xc]
	mov r2, r9
	ldrh r0, [r2, #0x2e]
	ldrh r1, [r2, #0x2c]
	bl sub_08023F98
	movs r4, #0
_080279FC:
	bl sub_080003F0
	adds r4, #1
	cmp r4, #0x77
	bls _080279FC
	b _08027A10
_08027A08: .4byte gUnk_03005CF4
_08027A0C:
	bl sub_080003F0
_08027A10:
	bl sub_08067C18
	cmp r0, #0
	beq _08027A0C
	b _08027A1E
_08027A1A:
	bl sub_080003F0
_08027A1E:
	bl sub_08067C08
	cmp r0, #0
	beq _08027A1A
	bl sub_08067BF8
	bl sub_08002204
	cmp r0, #0
	beq _08027AF4
	movs r0, #0
	str r0, [sp, #4]
	mov r1, sp
	movs r0, #1
	strh r0, [r1, #0]
	ldr r2, _08027A5C
	ldr r0, [r2, #0]
	ldr r3, _08027A60
	adds r0, r0, r3
	ldr r5, [r0, #0]
	ldrh r0, [r5, #0]
	cmp r0, #0
	beq _08027AF4
	mov r8, r2
_08027A4E:
	ldrh r0, [r5, #0]
	cmp r0, #4
	beq _08027A64
	cmp r0, #5
	beq _08027AA6
	b _08027AE8
	.2byte 0x0000
_08027A5C: .4byte gUnk_03005CF4
_08027A60: .4byte 0x0000071C
_08027A64:
	movs r1, #0
_08027A66:
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r4, r5, r0
	movs r6, #0
	adds r7, r1, #1
_08027A74:
	ldrh r1, [r4, #4]
	cmp r1, #0
	beq _08027A96
	mov r0, sp
	strh r1, [r0, #2]
	ldrh r0, [r4, #0]
	lsls r0, r0, #0xb
	ldrh r1, [r4, #2]
	lsls r1, r1, #0xb
	mov r3, r8
	ldr r2, [r3, #0]
	ldr r2, [r2, #0x40]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r3, sp
	bl sub_08066520
_08027A96:
	adds r6, #1
	adds r4, #8
	cmp r6, #3
	bls _08027A74
	adds r1, r7, #0
	cmp r1, #7
	bls _08027A66
	b _08027AE8
_08027AA6:
	mov r1, r8
	ldr r0, [r1, #0]
	ldrh r1, [r0, #0x2c]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r4, r5, r0
	movs r6, #0
_08027ABE:
	ldrh r1, [r4, #4]
	cmp r1, #0
	beq _08027AE0
	mov r0, sp
	strh r1, [r0, #2]
	ldrh r0, [r4, #0]
	lsls r0, r0, #0xb
	ldrh r1, [r4, #2]
	lsls r1, r1, #0xb
	mov r3, r8
	ldr r2, [r3, #0]
	ldr r2, [r2, #0x40]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r3, sp
	bl sub_08066520
_08027AE0:
	adds r6, #1
	adds r4, #8
	cmp r6, #3
	bls _08027ABE
_08027AE8:
	movs r0, #0x92
	lsls r0, r0, #1
	adds r5, r5, r0
	ldrh r0, [r5, #0]
	cmp r0, #0
	bne _08027A4E
_08027AF4:
	ldr r3, _08027B44
	mov r1, r9
	ldrh r0, [r1, #0x2c]
	lsls r0, r0, #2
	ldrh r1, [r1, #0x2e]
	subs r1, #1
	movs r2, #0x64
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _08027B14
	movs r0, #0
	bl sub_08057328
_08027B14:
	bl sub_0800CB9C
	cmp r0, #0
	beq _08027B22
	movs r0, #0x50
	bl sub_08002298
_08027B22:
	ldr r0, _08027B48
	ldr r0, [r0, #0]
	ldr r2, _08027B4C
	adds r0, r0, r2
	ldr r3, [sp, #0x10]
	str r3, [r0, #0]
	bl sub_0800D084
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08027B44: .4byte gUnk_084B0AA0
_08027B48: .4byte gUnk_03005CF4
_08027B4C: .4byte 0x0000071C
	thumb_func_end sub_080277E0
