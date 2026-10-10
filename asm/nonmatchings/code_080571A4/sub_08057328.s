	thumb_func_start sub_08057328
sub_08057328: @ 0x08057328
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r1, _0805733C
	ldr r1, [r1, #0]
	ldr r2, _08057340
	adds r4, r1, r2
	movs r5, #0
	b _08057348
	.2byte 0x0000
_0805733C: .4byte gUnk_03005CF4
_08057340: .4byte 0x00000E34
_08057344:
	adds r5, #1
	adds r4, #0x28
_08057348:
	cmp r5, #0x1d
	bhi _0805738A
	adds r0, r4, #0
	bl sub_08000470
	adds r1, r0, #0
	cmp r1, #0
	bne _08057344
	b _0805735E
_0805735A:
	bl sub_080003F0
_0805735E:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0805735A
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
_0805738A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08057328
