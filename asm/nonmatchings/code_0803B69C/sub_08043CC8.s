	thumb_func_start sub_08043CC8
sub_08043CC8: @ 0x08043CC8
	push {r4, lr}
	sub sp, #8
	bl sub_0800CE30
	cmp r0, #0
	beq _08043CE4
	ldr r0, _08043CE0
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _08043CEC
	.2byte 0x0000
_08043CE0: .4byte gUnk_03005CF4
_08043CE4:
	ldr r0, _08043D18
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
_08043CEC:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r1, r0, #4
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08043D90
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08043D1C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	b _08043D24
_08043D18: .4byte gUnk_03005CF4
_08043D1C: .4byte gUnk_03003CE0
_08043D20:
	bl sub_080003F0
_08043D24:
	bl sub_0805F184
	cmp r0, #0
	bne _08043D20
	b _08043D32
_08043D2E:
	bl sub_080003F0
_08043D32:
	bl sub_0805EF90
	cmp r0, #0
	bne _08043D2E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08043D54
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08043D5C
_08043D54: .4byte 0x0014020E
_08043D58:
	bl sub_080003F0
_08043D5C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08043D72
	bl sub_0800CDF8
	cmp r0, #0
	beq _08043D58
	bl sub_0805EFBC
_08043D72:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08043D98
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
_08043D90:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_08043D98: .4byte gUnk_03003CE0
	thumb_func_end sub_08043CC8
