	thumb_func_start sub_0805AD18
sub_0805AD18: @ 0x0805AD18
	push {lr}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0805AD40
	adds r2, r1, r0
	adds r1, r2, #0
	adds r1, #0x64
	ldrh r0, [r2, #0xc]
	ldrh r1, [r1, #0]
	cmp r0, r1
	beq _0805AD44
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x28]
	b _0805AD6A
_0805AD40: .4byte gUnk_03003CE0
_0805AD44:
	ldr r0, _0805AD60
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0805AD64
	movs r0, #0
	b _0805AD74
_0805AD60: .4byte gUnk_030034E0
_0805AD64:
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0, #0]
_0805AD6A:
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
_0805AD74:
	pop {r1}
	bx r1
	thumb_func_end sub_0805AD18
