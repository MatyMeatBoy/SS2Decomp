	thumb_func_start sub_0805D13C
sub_0805D13C: @ 0x0805D13C
	push {r4, lr}
	ldr r4, _0805D164
	ldr r3, [r4, #0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r2, r3, r1
	ldrh r1, [r2, #0]
	cmp r1, #5
	bne _0805D17C
	adds r0, r2, #0
	bl sub_0805D2E0
	adds r2, r0, #0
	cmp r2, #0
	beq _0805D16C
	ldr r1, [r4, #0]
	ldr r3, _0805D168
	adds r2, r1, r3
	movs r1, #1
	b _0805D182
_0805D164: .4byte gUnk_030034E0
_0805D168: .4byte 0x00000129
_0805D16C:
	ldr r1, [r4, #0]
	ldr r3, _0805D178
	adds r1, r1, r3
	strb r2, [r1, #0]
	b _0805D184
	.2byte 0x0000
_0805D178: .4byte 0x00000129
_0805D17C:
	ldr r1, _0805D18C
	adds r2, r3, r1
	movs r1, #0
_0805D182:
	strb r1, [r2, #0]
_0805D184:
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000
_0805D18C: .4byte 0x00000129
	thumb_func_end sub_0805D13C
