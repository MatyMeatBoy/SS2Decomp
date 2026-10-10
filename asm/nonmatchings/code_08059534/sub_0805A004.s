	thumb_func_start sub_0805A004
sub_0805A004: @ 0x0805A004
	push {lr}
	cmp r0, #0
	beq _0805A010
	cmp r0, #1
	beq _0805A01E
	b _0805A036
_0805A010:
	movs r0, #6
	movs r1, #0x80
	movs r2, #0x58
	movs r3, #0
	bl sub_08028AAC
	b _0805A036
_0805A01E:
	movs r0, #7
	movs r1, #0x80
	movs r2, #0x58
	movs r3, #0
	bl sub_08028AAC
	ldr r0, _0805A03C
	ldr r2, [r0, #0]
	movs r1, #0x10
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
_0805A036:
	pop {r0}
	bx r0
	.2byte 0x0000
_0805A03C: .4byte gUnk_03005CF4
	thumb_func_end sub_0805A004
