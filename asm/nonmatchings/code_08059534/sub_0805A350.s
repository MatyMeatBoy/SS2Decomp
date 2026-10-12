	thumb_func_start sub_0805A350
sub_0805A350: @ 0x0805A350
	push {lr}
	bl sub_0800CE30
	cmp r0, #0
	beq _0805A368
	ldr r0, _0805A364
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _0805A370
_0805A364: .4byte gUnk_03005CF4
_0805A368:
	ldr r0, _0805A380
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
_0805A370:
	adds r2, r0, r1
	ldrb r1, [r2, #0]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #0]
	pop {r0}
	bx r0
	.2byte 0x0000
_0805A380: .4byte gUnk_03005CF4
	thumb_func_end sub_0805A350
