	thumb_func_start sub_080290E4
sub_080290E4: @ 0x080290E4
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	bls _08029134
	ldr r0, _08029128
	ldr r0, [r0, #0]
	ldr r3, _0802912C
	adds r1, r0, r3
	movs r3, #0
_080290FE:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _08029130
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _080290FE
	bl sub_080003F0
	movs r4, #0
_08029112:
	cmp r4, #0
	beq _08029168
	strh r5, [r4, #0x24]
	movs r0, #3
	strh r0, [r4, #0x36]
_0802911C:
	bl sub_080003F0
	ldrh r0, [r4, #0x36]
	cmp r0, #3
	beq _0802911C
	b _08029168
_08029128: .4byte gUnk_03005CF4
_0802912C: .4byte 0x000007A4
_08029130:
	adds r4, r1, #0
	b _08029112
_08029134:
	cmp r2, #0
	beq _08029158
	subs r2, #1
	cmp r2, #4
	bhi _08029168
	ldr r0, _08029154
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	subs r1, r1, r2
	lsls r1, r1, #5
	ldr r0, [r0, #0]
	adds r0, r0, r1
	strh r5, [r0, #8]
	b _08029168
	.2byte 0x0000
_08029154: .4byte gUnk_030056F4
_08029158:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _08029170
	adds r0, r0, r1
	strh r5, [r0, #0x1c]
_08029168:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08029170: .4byte gUnk_03003CE0
	thumb_func_end sub_080290E4
