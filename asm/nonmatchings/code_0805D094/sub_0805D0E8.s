	thumb_func_start sub_0805D0E8
sub_0805D0E8: @ 0x0805D0E8
	push {r4, lr}
	ldr r4, _0805D110
	ldr r3, [r4, #0]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r2, r3, r1
	ldrh r1, [r2, #0]
	cmp r1, #3
	bne _0805D128
	adds r0, r2, #0
	bl sub_0805D278
	adds r2, r0, #0
	cmp r2, #0
	beq _0805D118
	ldr r1, [r4, #0]
	ldr r3, _0805D114
	adds r2, r1, r3
	movs r1, #1
	b _0805D12E
_0805D110: .4byte gUnk_030034E0
_0805D114: .4byte 0x00000119
_0805D118:
	ldr r1, [r4, #0]
	ldr r3, _0805D124
	adds r1, r1, r3
	strb r2, [r1, #0]
	b _0805D130
	.2byte 0x0000
_0805D124: .4byte 0x00000119
_0805D128:
	ldr r1, _0805D138
	adds r2, r3, r1
	movs r1, #0
_0805D12E:
	strb r1, [r2, #0]
_0805D130:
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000
_0805D138: .4byte 0x00000119
	thumb_func_end sub_0805D0E8
