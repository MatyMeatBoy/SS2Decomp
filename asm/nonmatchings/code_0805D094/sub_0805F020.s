	thumb_func_start sub_0805F020
sub_0805F020: @ 0x0805F020
	push {r4, lr}
	ldr r0, _0805F064
	ldr r0, [r0, #0]
	ldr r1, _0805F068
	adds r0, r0, r1
	bl sub_08007290
	ldr r1, _0805F06C
	movs r2, #0x80
	lsls r2, r2, #5
	bl sub_080B8574
	ldr r0, _0805F070
	bl sub_08007290
	adds r1, r0, #0
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0xf
	movs r2, #1
	bl sub_08000AF0
	ldr r4, _0805F074
	movs r0, #0xd0
	bl sub_08001494
	str r0, [r4, #0]
	ldr r1, _0805F078
	movs r0, #0
	strb r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
_0805F064: .4byte gUnk_03003470
_0805F068: .4byte 0x10010003
_0805F06C: .4byte 0x06008000
_0805F070: .4byte 0x00070003
_0805F074: .4byte gUnk_03005D64
_0805F078: .4byte gUnk_03005D70
	thumb_func_end sub_0805F020
