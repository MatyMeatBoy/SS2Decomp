	thumb_func_start sub_0804EE20
sub_0804EE20: @ 0x0804EE20
	push {r4, r5, lr}
	movs r0, #0x24
	movs r1, #0x80
	movs r2, #0x38
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0804EE9C
	movs r1, #0x80
	movs r2, #0x50
	bl sub_080289C0
	adds r5, r0, #0
	movs r2, #0xc8
	negs r2, r2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0xc8
	bl sub_08028D98
	ldr r0, _0804EEA0
	ldr r0, [r0, #0]
	ldr r2, _0804EEA4
	adds r1, r0, r2
	movs r2, #0
_0804EE52:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0804EE66
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804EE52
	bl sub_080003F0
	movs r1, #0
_0804EE66:
	cmp r1, #0
	beq _0804EE6E
	movs r0, #4
	strh r0, [r1, #0x36]
_0804EE6E:
	ldr r0, _0804EEA0
	ldr r0, [r0, #0]
	ldr r2, _0804EEA4
	adds r1, r0, r2
	movs r2, #0
_0804EE78:
	ldr r0, [r1, #0]
	cmp r0, r5
	beq _0804EE8C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804EE78
	bl sub_080003F0
	movs r1, #0
_0804EE8C:
	cmp r1, #0
	beq _0804EE94
	movs r0, #4
	strh r0, [r1, #0x36]
_0804EE94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_0804EE9C: .4byte 0x00010024
_0804EEA0: .4byte gUnk_03005CF4
_0804EEA4: .4byte 0x000007A4
	thumb_func_end sub_0804EE20
