	thumb_func_start sub_0804B054
sub_0804B054: @ 0x0804B054
	push {r4, lr}
	cmp r0, #0
	beq _0804B060
	cmp r0, #1
	beq _0804B070
	b _0804B0EC
_0804B060:
	ldr r0, _0804B06C
	movs r1, #1
	movs r2, #0
	bl sub_08068820
	b _0804B0EC
_0804B06C: .4byte sub_0804B054
_0804B070:
	ldr r0, _0804B090
	ldr r2, [r0, #0]
	movs r1, #8
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	movs r0, #0xcc
	lsls r0, r0, #9
	ldr r1, _0804B094
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r4, #4
	b _0804B0A2
	.2byte 0x0000
_0804B090: .4byte gUnk_03005CF4
_0804B094: .4byte 0x00015900
_0804B098:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804B0AE
_0804B0A2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804B098
_0804B0AE:
	movs r0, #0xc8
	lsls r0, r0, #9
	ldr r1, _0804B0F4
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r0, #0xd0
	lsls r0, r0, #9
	ldr r1, _0804B0F4
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	ldr r0, _0804B0F8
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804B0DC
	ldr r0, _0804B0FC
	bl sub_08006D08
_0804B0DC:
	movs r1, #0xcc
	lsls r1, r1, #1
	movs r2, #0xac
	lsls r2, r2, #1
	movs r0, #8
	movs r3, #0
	bl sub_08028AAC
_0804B0EC:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_0804B0F4: .4byte 0x00015900
_0804B0F8: .4byte gUnk_030027D0
_0804B0FC: .4byte 0x0000017B
	thumb_func_end sub_0804B054
