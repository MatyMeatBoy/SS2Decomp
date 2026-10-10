	thumb_func_start sub_08053120
sub_08053120: @ 0x08053120
	push {r4, lr}
	cmp r0, #0
	beq _0805312C
	cmp r0, #1
	beq _0805313C
	b _080531B2
_0805312C:
	ldr r0, _08053138
	movs r1, #1
	movs r2, #1
	bl sub_08068820
	b _080531B2
_08053138: .4byte sub_08053120
_0805313C:
	movs r0, #0x84
	lsls r0, r0, #9
	movs r1, #0xb0
	lsls r1, r1, #7
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r4, #4
	b _0805315A
_08053150:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08053166
_0805315A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08053150
_08053166:
	movs r0, #0x80
	lsls r0, r0, #9
	movs r1, #0xb0
	lsls r1, r1, #7
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r0, #0x88
	lsls r0, r0, #9
	movs r1, #0xb0
	lsls r1, r1, #7
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	ldr r0, _080531B8
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08053198
	ldr r0, _080531BC
	bl sub_08006D08
_08053198:
	movs r1, #0x84
	lsls r1, r1, #1
	movs r0, #7
	movs r2, #0x58
	movs r3, #0
	bl sub_08028AAC
	ldr r0, _080531C0
	ldr r2, [r0, #0]
	movs r1, #4
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
_080531B2:
	pop {r4}
	pop {r0}
	bx r0
_080531B8: .4byte gUnk_030027D0
_080531BC: .4byte 0x0000017B
_080531C0: .4byte gUnk_03005CF4
	thumb_func_end sub_08053120
