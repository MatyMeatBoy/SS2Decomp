	thumb_func_start sub_0802F424
sub_0802F424: @ 0x0802F424
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08002164
	cmp r0, #1
	bne _0802F468
	adds r0, r4, #0
	movs r1, #5
	bl sub_0802939C
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #0x64
	movs r3, #0x3c
	bl sub_08028D98
	ldr r0, _0802F460
	ldr r0, [r0, #0]
	ldr r2, _0802F464
	adds r1, r0, r2
	movs r2, #0
_0802F44E:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802F49A
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802F44E
	b _0802F494
	.2byte 0x0000
_0802F460: .4byte gUnk_03005CF4
_0802F464: .4byte 0x000007A4
_0802F468:
	adds r0, r4, #0
	movs r1, #5
	bl sub_0802939C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x64
	movs r3, #0x3c
	bl sub_08028D98
	ldr r0, _0802F4A8
	ldr r0, [r0, #0]
	ldr r2, _0802F4AC
	adds r1, r0, r2
	movs r2, #0
_0802F486:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802F49A
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802F486
_0802F494:
	bl sub_080003F0
	movs r1, #0
_0802F49A:
	cmp r1, #0
	beq _0802F4A2
	movs r0, #4
	strh r0, [r1, #0x36]
_0802F4A2:
	pop {r4}
	pop {r0}
	bx r0
_0802F4A8: .4byte gUnk_03005CF4
_0802F4AC: .4byte 0x000007A4
	thumb_func_end sub_0802F424
