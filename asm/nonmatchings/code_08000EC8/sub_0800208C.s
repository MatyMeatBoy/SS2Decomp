	thumb_func_start sub_0800208C
sub_0800208C: @ 0x0800208C
	push {lr}
	cmp r0, #0
	beq _08002098
	cmp r0, #1
	beq _080020A8
	b _080020AE
_08002098:
	ldr r1, _080020A0
	ldr r0, _080020A4
	b _080020AC
	.2byte 0x0000
_080020A0: .4byte gUnk_03002740
_080020A4: .4byte sub_080022A4
_080020A8:
	ldr r1, _080020D8
	ldr r0, _080020DC
_080020AC:
	str r0, [r1, #0xc]
_080020AE:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	ldr r1, _080020D8
	str r0, [r1, #0x20]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1, #0x10]
	movs r0, #1
	str r0, [r1, #8]
	movs r0, #0
	str r0, [r1, #0x24]
	adds r0, r1, #0
	movs r1, #0
	bl sub_08000274
	pop {r0}
	bx r0
	.2byte 0x0000
_080020D8: .4byte gUnk_03002740
_080020DC: .4byte sub_08001BE4
	thumb_func_end sub_0800208C
