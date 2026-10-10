	thumb_func_start sub_08054514
sub_08054514: @ 0x08054514
	push {r4, r5, lr}
	movs r4, #0x9c
	lsls r4, r4, #1
	movs r0, #0x24
	adds r1, r4, #0
	movs r2, #0xb0
	bl sub_080289C0
	adds r5, r0, #0
	ldr r0, _08054594
	adds r1, r4, #0
	movs r2, #0xc8
	bl sub_080289C0
	adds r4, r0, #0
	movs r2, #0xc8
	negs r2, r2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0xc8
	bl sub_08028D98
	ldr r0, _08054598
	ldr r0, [r0, #0]
	ldr r2, _0805459C
	adds r1, r0, r2
	movs r2, #0
_0805454A:
	ldr r0, [r1, #0]
	cmp r0, r5
	beq _0805455E
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0805454A
	bl sub_080003F0
	movs r1, #0
_0805455E:
	cmp r1, #0
	beq _08054566
	movs r0, #4
	strh r0, [r1, #0x36]
_08054566:
	ldr r0, _08054598
	ldr r0, [r0, #0]
	ldr r2, _0805459C
	adds r1, r0, r2
	movs r2, #0
_08054570:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _08054584
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08054570
	bl sub_080003F0
	movs r1, #0
_08054584:
	cmp r1, #0
	beq _0805458C
	movs r0, #4
	strh r0, [r1, #0x36]
_0805458C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08054594: .4byte 0x00010024
_08054598: .4byte gUnk_03005CF4
_0805459C: .4byte 0x000007A4
	thumb_func_end sub_08054514
