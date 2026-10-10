	thumb_func_start sub_0804FA68
sub_0804FA68: @ 0x0804FA68
	push {r4, lr}
	cmp r0, #0
	beq _0804FA74
	cmp r0, #1
	beq _0804FA84
	b _0804FAF8
_0804FA74:
	ldr r0, _0804FA80
	movs r1, #1
	movs r2, #0
	bl sub_08068820
	b _0804FAF8
_0804FA80: .4byte sub_0804FA68
_0804FA84:
	movs r0, #0x88
	lsls r0, r0, #8
	movs r1, #0xc8
	lsls r1, r1, #8
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r4, #4
	b _0804FAA2
_0804FA98:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804FAAE
_0804FAA2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804FA98
_0804FAAE:
	movs r0, #0x80
	lsls r0, r0, #8
	movs r1, #0xc8
	lsls r1, r1, #8
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r0, #0x90
	lsls r0, r0, #8
	movs r1, #0xc8
	lsls r1, r1, #8
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	ldr r0, _0804FB00
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804FAE0
	ldr r0, _0804FB04
	bl sub_08006D08
_0804FAE0:
	movs r0, #7
	movs r1, #0x88
	movs r2, #0xc8
	movs r3, #0
	bl sub_08028AAC
	ldr r0, _0804FB08
	ldr r2, [r0, #0]
	movs r1, #1
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
_0804FAF8:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_0804FB00: .4byte gUnk_030027D0
_0804FB04: .4byte 0x0000017B
_0804FB08: .4byte gUnk_03005CF4
	thumb_func_end sub_0804FA68
