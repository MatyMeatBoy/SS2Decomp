	thumb_func_start sub_0805B0F0
sub_0805B0F0: @ 0x0805B0F0
	push {r4, r5, lr}
	movs r3, #0
	movs r2, #0
	ldr r0, _0805B13C
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_0805B100:
	ldrh r0, [r1, #0]
	cmp r0, #0xa
	bne _0805B10A
	ldr r0, [r1, #4]
	adds r3, r3, r0
_0805B10A:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _0805B100
	movs r4, #0
	movs r2, #0
	ldr r0, _0805B13C
	ldr r0, [r0, #0]
	movs r5, #0xb8
	lsls r5, r5, #2
	adds r1, r0, r5
_0805B120:
	ldrh r0, [r1, #0]
	cmp r0, #0xa
	bne _0805B12A
	ldr r0, [r1, #4]
	adds r4, r4, r0
_0805B12A:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x4a
	bls _0805B120
	adds r3, r3, r4
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
_0805B13C: .4byte gUnk_030034E0
	thumb_func_end sub_0805B0F0
