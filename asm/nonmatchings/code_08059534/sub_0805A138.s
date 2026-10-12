	thumb_func_start sub_0805A138
sub_0805A138: @ 0x0805A138
	push {lr}
	cmp r0, #0
	beq _0805A144
	cmp r0, #1
	beq _0805A154
	b _0805A17E
_0805A144:
	ldr r0, _0805A150
	movs r1, #1
	movs r2, #1
	bl sub_08068820
	b _0805A17E
_0805A150: .4byte sub_0805A138
_0805A154:
	ldr r0, _0805A184
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805A166
	ldr r0, _0805A188
	bl sub_08006D08
_0805A166:
	ldr r2, _0805A18C
	movs r0, #7
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	ldr r0, _0805A190
	ldr r2, [r0, #0]
	movs r1, #8
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
_0805A17E:
	pop {r0}
	bx r0
	.2byte 0x0000
_0805A184: .4byte gUnk_030027D0
_0805A188: .4byte 0x0000017B
_0805A18C: .4byte 0x0000270F
_0805A190: .4byte gUnk_03005CF4
	thumb_func_end sub_0805A138
