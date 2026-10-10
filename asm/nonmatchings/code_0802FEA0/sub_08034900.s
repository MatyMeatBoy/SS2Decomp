	thumb_func_start sub_08034900
sub_08034900: @ 0x08034900
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	movs r0, #0x20
	mov r9, r0
	ldr r7, _0803494C
	ldr r1, _08034950
	mov r8, r1
	add r6, sp, #0x10
_08034916:
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [sp, #8]
	movs r0, #0xe0
	lsls r0, r0, #9
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ands r0, r7
	mov r2, r9
	orrs r0, r2
	movs r1, #0x80
	lsls r1, r1, #0xd
	mov r2, r8
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x14]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08034954
	adds r5, r1, r0
	add r4, sp, #0x14
	b _0803495C
_0803494C: .4byte 0xFFFF0000
_08034950: .4byte 0x0000FFFF
_08034954: .4byte gUnk_03003CE0
_08034958:
	bl sub_080003F0
_0803495C:
	adds r0, r5, #0
	adds r0, #0x8c
	add r1, sp, #8
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_08021FE0
	cmp r0, #0
	beq _08034958
	bl sub_0800CE30
	cmp r0, #0
	beq _08034988
	ldr r0, _08034980
	ldr r0, [r0, #0]
	ldr r1, _08034984
	adds r0, r0, r1
	b _08034990
_08034980: .4byte gUnk_03005CF4
_08034984: .4byte 0x000001BF
_08034988:
	ldr r0, _080349B4
	ldr r0, [r0, #0]
	ldr r2, _080349B8
	adds r0, r0, r2
_08034990:
	ldrb r0, [r0, #0]
	cmp r0, #2
	beq _08034A4C
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080349BC
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	b _080349C4
_080349B4: .4byte gUnk_03005CF4
_080349B8: .4byte 0x000001B3
_080349BC: .4byte gUnk_03003CE0
_080349C0:
	bl sub_080003F0
_080349C4:
	bl sub_0805F184
	cmp r0, #0
	bne _080349C0
	b _080349D2
_080349CE:
	bl sub_080003F0
_080349D2:
	bl sub_0805EF90
	cmp r0, #0
	bne _080349CE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080349F4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080349FC
_080349F4: .4byte 0x001401C7
_080349F8:
	bl sub_080003F0
_080349FC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08034A12
	bl sub_0800CDF8
	cmp r0, #0
	beq _080349F8
	bl sub_0805EFBC
_08034A12:
	movs r0, #0
	movs r1, #4
	bl sub_080290E4
	movs r0, #0
	movs r1, #0
	movs r2, #0xa
	negs r2, r2
	movs r3, #4
	bl sub_08028D98
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08034A48
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	b _08034916
_08034A48: .4byte gUnk_03003CE0
_08034A4C:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08034900
