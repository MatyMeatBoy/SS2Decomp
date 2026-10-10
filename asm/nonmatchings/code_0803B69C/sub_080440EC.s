	thumb_func_start sub_080440EC
sub_080440EC: @ 0x080440EC
	push {r4, lr}
	sub sp, #8
	bl sub_0800CE30
	cmp r0, #0
	beq _08044108
	ldr r0, _08044104
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _08044110
	.2byte 0x0000
_08044104: .4byte gUnk_03005CF4
_08044108:
	ldr r0, _0804413C
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
_08044110:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r1, r0, #4
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _080441B4
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08044140
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	b _08044148
_0804413C: .4byte gUnk_03005CF4
_08044140: .4byte gUnk_03003CE0
_08044144:
	bl sub_080003F0
_08044148:
	bl sub_0805F184
	cmp r0, #0
	bne _08044144
	b _08044156
_08044152:
	bl sub_080003F0
_08044156:
	bl sub_0805EF90
	cmp r0, #0
	bne _08044152
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08044178
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08044180
_08044178: .4byte 0x00140215
_0804417C:
	bl sub_080003F0
_08044180:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08044196
	bl sub_0800CDF8
	cmp r0, #0
	beq _0804417C
	bl sub_0805EFBC
_08044196:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080441BC
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
_080441B4:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_080441BC: .4byte gUnk_03003CE0
	thumb_func_end sub_080440EC
