	thumb_func_start sub_0800D2F4
sub_0800D2F4: @ 0x0800D2F4
	push {lr}
	bl sub_0801DE60
	cmp r0, #2
	beq _0800D310
	cmp r0, #2
	bgt _0800D308
	cmp r0, #0
	beq _0800D310
	b _0800D360
_0800D308:
	cmp r0, #3
	beq _0800D33C
	cmp r0, #5
	bne _0800D360
_0800D310:
	ldr r0, _0800D338
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x50
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0800D360
	adds r0, r1, #0
	adds r0, #0x30
	movs r1, #7
	bl sub_0801E0AC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #7
	bl sub_08067FE0
	b _0800D360
	.2byte 0x0000
_0800D338: .4byte gUnk_030034E0
_0800D33C:
	ldr r0, _0800D364
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x4c
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0800D360
	adds r0, r1, #0
	adds r0, #0x30
	movs r1, #6
	bl sub_0801E0AC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #6
	bl sub_08067FE0
_0800D360:
	pop {r0}
	bx r0
_0800D364: .4byte gUnk_030034E0
	thumb_func_end sub_0800D2F4
