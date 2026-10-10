	thumb_func_start sub_0802996C
sub_0802996C: @ 0x0802996C
	push {r4, r5, r6, lr}
	bl sub_080020F4
	adds r6, r0, #0
	ldr r3, _08029A74
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r6, #0
	muls r2, r0, r2
	adds r4, r2, r3
	adds r0, r4, #0
	adds r0, #0x62
	ldrh r1, [r0, #0]
	adds r0, #0x62
	strh r1, [r0, #0]
	subs r0, #0x64
	ldrh r0, [r0, #0]
	adds r1, r4, #0
	adds r1, #0xc2
	strh r0, [r1, #0]
	subs r1, #0x5a
	movs r0, #1
	strb r0, [r1, #0]
	adds r3, #0x30
	adds r2, r2, r3
	ldr r0, [r2, #0]
	ldr r1, _08029A78
	ands r0, r1
	str r0, [r2, #0]
	adds r5, r4, #0
_080299A8:
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0x64
	bl sub_0801E1D8
	adds r4, r0, #0
	cmp r4, #0
	beq _080299C6
	ldrh r0, [r5, #0]
	adds r1, r4, #0
	movs r2, #0
	bl sub_0801DB94
	cmp r4, #0
	bne _080299A8
_080299C6:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _08029A74
	adds r5, r1, r0
_080299D2:
	adds r0, r5, #0
	movs r1, #7
	movs r2, #0x64
	bl sub_0801E1D8
	adds r4, r0, #0
	cmp r4, #0
	beq _080299F0
	ldrh r0, [r5, #0]
	adds r1, r4, #0
	movs r2, #0
	bl sub_0801DB94
	cmp r4, #0
	bne _080299D2
_080299F0:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _08029A74
	adds r5, r1, r0
_080299FC:
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0x64
	bl sub_0801E1D8
	adds r4, r0, #0
	cmp r4, #0
	beq _08029A1A
	ldrh r0, [r5, #0]
	adds r1, r4, #0
	movs r2, #0
	bl sub_0801DB94
	cmp r4, #0
	bne _080299FC
_08029A1A:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _08029A74
	adds r5, r1, r0
_08029A26:
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0x64
	bl sub_0801E1D8
	adds r4, r0, #0
	cmp r4, #0
	beq _08029A44
	ldrh r0, [r5, #0]
	adds r1, r4, #0
	movs r2, #0
	bl sub_0801DB94
	cmp r4, #0
	bne _08029A26
_08029A44:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _08029A74
	adds r5, r1, r0
_08029A50:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0x64
	bl sub_0801E1D8
	adds r4, r0, #0
	cmp r4, #0
	beq _08029A6E
	ldrh r0, [r5, #0]
	adds r1, r4, #0
	movs r2, #0
	bl sub_0801DB94
	cmp r4, #0
	bne _08029A50
_08029A6E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08029A74: .4byte gUnk_03003CE0
_08029A78: .4byte 0xFFFFDFFD
	thumb_func_end sub_0802996C
