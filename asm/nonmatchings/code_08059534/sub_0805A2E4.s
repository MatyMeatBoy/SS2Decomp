	thumb_func_start sub_0805A2E4
sub_0805A2E4: @ 0x0805A2E4
	push {lr}
	bl sub_0800CE30
	cmp r0, #0
	beq _0805A2FC
	ldr r0, _0805A2F8
	ldr r1, [r0, #0]
	movs r0, #0xe2
	lsls r0, r0, #1
	b _0805A304
_0805A2F8: .4byte gUnk_03005CF4
_0805A2FC:
	ldr r0, _0805A314
	ldr r1, [r0, #0]
	movs r0, #0xdc
	lsls r0, r0, #1
_0805A304:
	adds r1, r1, r0
	ldrb r2, [r1, #0]
	movs r0, #0x10
	orrs r0, r2
	strb r0, [r1, #0]
	pop {r0}
	bx r0
	.2byte 0x0000
_0805A314: .4byte gUnk_03005CF4
	thumb_func_end sub_0805A2E4
