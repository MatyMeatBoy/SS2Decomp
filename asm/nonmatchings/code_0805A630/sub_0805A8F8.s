	thumb_func_start sub_0805A8F8
sub_0805A8F8: @ 0x0805A8F8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r1, _0805A90C
	ldr r1, [r1, #0]
	ldr r2, _0805A910
	adds r4, r1, r2
	movs r5, #0
	b _0805A918
	.2byte 0x0000
_0805A90C: .4byte gUnk_03005CF4
_0805A910: .4byte 0x000012E4
_0805A914:
	adds r5, #1
	adds r4, #0x28
_0805A918:
	cmp r5, #0x1d
	bhi _0805A95A
	adds r0, r4, #0
	bl sub_08000470
	adds r1, r0, #0
	cmp r1, #0
	bne _0805A914
	b _0805A92E
_0805A92A:
	bl sub_080003F0
_0805A92E:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0805A92A
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08000274
	adds r0, r4, #0
_0805A95A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0805A8F8
