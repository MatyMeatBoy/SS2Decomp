	thumb_func_start sub_0805F07C
sub_0805F07C: @ 0x0805F07C
	push {lr}
	ldr r0, _0805F0B4
	ldr r0, [r0, #0]
	ldr r1, _0805F0B8
	adds r0, r0, r1
	bl sub_08007290
	ldr r1, _0805F0BC
	movs r2, #0x80
	lsls r2, r2, #7
	bl sub_08001348
	ldr r0, _0805F0C0
	bl sub_08007290
	adds r1, r0, #0
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0xf
	movs r2, #1
	bl sub_08000AF0
	bl sub_080003F0
	pop {r0}
	bx r0
	.2byte 0x0000
_0805F0B4: .4byte gUnk_03003470
_0805F0B8: .4byte 0x10010003
_0805F0BC: .4byte 0x06008000
_0805F0C0: .4byte 0x00070003
	thumb_func_end sub_0805F07C
