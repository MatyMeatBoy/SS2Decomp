	thumb_func_start sub_08014C04
sub_08014C04: @ 0x08014C04
	push {r4, r5, lr}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08014C44
	adds r4, r1, r0
	ldrh r5, [r4, #0x26]
	ldrh r0, [r4, #0x20]
	cmp r0, #0xd
	beq _08014C36
	bl sub_0800CCCC
	cmp r0, #0
	bne _08014C36
	bl sub_0800CD34
	cmp r0, #0
	bne _08014C36
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_0805865C
_08014C36:
	adds r0, r4, #0
	adds r0, #0xb6
	ldrh r1, [r0, #0]
	adds r5, r0, #0
	cmp r1, #0
	bne _08014C58
	b _08014C52
_08014C44: .4byte gUnk_03003CE0
_08014C48:
	bl sub_080003F0
	ldrh r0, [r5, #0]
	cmp r0, #0
	bne _08014C58
_08014C52:
	ldrh r0, [r4, #0x20]
	cmp r0, #5
	beq _08014C48
_08014C58:
	ldrh r0, [r4, #0x20]
	cmp r0, #0xe
	beq _08014C74
	cmp r0, #0xa
	beq _08014C74
	cmp r0, #0xb
	beq _08014C74
	ldr r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _08014C74
	strh r1, [r4, #0x20]
_08014C74:
	movs r1, #0
	strh r1, [r4, #0x24]
	ldrh r0, [r4, #0x26]
	strh r0, [r4, #0x28]
	strh r1, [r4, #0x26]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08014C04
