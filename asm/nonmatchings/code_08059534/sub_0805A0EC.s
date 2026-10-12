	thumb_func_start sub_0805A0EC
sub_0805A0EC: @ 0x0805A0EC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080020F4
	cmp r0, r4
	bne _0805A12E
	movs r4, #1
	movs r3, #0
	ldr r6, _0805A134
	movs r5, #0
_0805A100:
	ldr r0, [r6, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #1
	bne _0805A128
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x22
	bne _0805A128
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _0805A12E
_0805A128:
	adds r3, #1
	cmp r3, #0x18
	bls _0805A100
_0805A12E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0805A134: .4byte gUnk_030034E0
	thumb_func_end sub_0805A0EC
