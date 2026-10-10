	thumb_func_start sub_0805F0F0
sub_0805F0F0: @ 0x0805F0F0
	push {lr}
	adds r2, r0, #0
	ldr r0, _0805F130
	ldrb r0, [r0, #0]
	adds r1, r2, #0
	adds r1, #0x31
	ldrb r1, [r1, #0]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805F12A
	adds r0, r2, #0
	adds r0, #0x30
	ldrb r1, [r0, #0]
	adds r2, r0, #0
	cmp r1, #1
	beq _0805F120
	cmp r1, #3
	beq _0805F120
	cmp r1, #4
	beq _0805F120
	cmp r1, #2
	bne _0805F12A
_0805F120:
	movs r0, #4
	strb r0, [r2, #0]
	movs r0, #0xdd
	bl sub_0805865C
_0805F12A:
	pop {r0}
	bx r0
	.2byte 0x0000
_0805F130: .4byte gUnk_03005D70
	thumb_func_end sub_0805F0F0
