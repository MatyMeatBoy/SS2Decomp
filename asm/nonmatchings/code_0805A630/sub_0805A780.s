	thumb_func_start sub_0805A780
sub_0805A780: @ 0x0805A780
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0805A7BC
	ldr r0, [r0, #0]
	ldr r1, _0805A7C0
	adds r4, r0, r1
	movs r5, #0
_0805A78E:
	adds r0, r4, #0
	adds r0, #0x48
	cmp r0, r6
	bne _0805A7AC
	subs r0, #8
	ldrh r0, [r0, #0]
	bl sub_08028498
	ldr r0, _0805A7BC
	ldr r2, [r0, #0]
	movs r1, #1
	lsls r1, r5
	ldr r0, [r2, #0x54]
	bics r0, r1
	str r0, [r2, #0x54]
_0805A7AC:
	adds r5, #1
	adds r4, #0x70
	cmp r5, #0xe
	bls _0805A78E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805A7BC: .4byte gUnk_03005CF4
_0805A7C0: .4byte 0x000007A4
	thumb_func_end sub_0805A780
