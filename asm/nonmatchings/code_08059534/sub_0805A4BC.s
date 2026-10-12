	thumb_func_start sub_0805A4BC
sub_0805A4BC: @ 0x0805A4BC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0805A4D4
	ldr r0, [r4, #0]
	ldr r1, _0805A4D8
	adds r0, r0, r1
	bl sub_08000470
	cmp r0, #0
	bne _0805A52E
	b _0805A4E0
	.2byte 0x0000
_0805A4D4: .4byte gUnk_03005CF4
_0805A4D8: .4byte 0x000006F4
_0805A4DC:
	bl sub_080003F0
_0805A4E0:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	ldr r1, [r4, #0]
	ldr r2, _0805A534
	adds r1, r1, r2
	str r0, [r1, #0]
	cmp r0, #0
	beq _0805A4DC
	ldr r0, _0805A538
	ldr r0, [r0, #0]
	movs r3, #0xe0
	lsls r3, r3, #3
	adds r2, r0, r3
	ldr r1, _0805A53C
	str r1, [r2, #0]
	ldr r1, _0805A540
	adds r2, r0, r1
	adds r3, #0x14
	adds r1, r0, r3
	ldr r1, [r1, #0]
	ldr r3, _0805A544
	adds r1, r1, r3
	str r1, [r2, #0]
	ldr r1, _0805A548
	adds r2, r0, r1
	movs r1, #0x46
	str r1, [r2, #0]
	movs r3, #0xe3
	lsls r3, r3, #3
	adds r2, r0, r3
	movs r1, #0
	str r1, [r2, #0]
	ldr r1, _0805A54C
	adds r0, r0, r1
	adds r1, r5, #0
	bl sub_08000274
_0805A52E:
	pop {r4, r5}
	pop {r0}
	bx r0
_0805A534: .4byte 0x00000714
_0805A538: .4byte gUnk_03005CF4
_0805A53C: .4byte sub_08027C1C
_0805A540: .4byte 0x00000704
_0805A544: .4byte 0x00000BFC
_0805A548: .4byte 0x000006FC
_0805A54C: .4byte 0x000006F4
	thumb_func_end sub_0805A4BC
