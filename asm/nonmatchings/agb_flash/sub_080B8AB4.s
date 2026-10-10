	thumb_func_start sub_080B8AB4
sub_080B8AB4: @ 0x080B8AB4
	push {r4, lr}
	ldr r2, _080B8AD4
	ldrh r0, [r2, #0]
	ldr r1, _080B8AD8
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2, #0]
	bl sub_080B85D8
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, _080B8ADC
	movs r4, #1
	b _080B8AE2
	.2byte 0x0000
_080B8AD4: .4byte 0x04000204
_080B8AD8: .4byte 0x0000FFFC
_080B8ADC: .4byte gUnk_08366A60
_080B8AE0:
	adds r2, #4
_080B8AE2:
	ldr r1, [r2, #0]
	adds r0, r1, #0
	adds r0, #0x28
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080B8AF6
	ldrh r0, [r1, #0x28]
	cmp r3, r0
	bne _080B8AE0
	movs r4, #0
_080B8AF6:
	ldr r1, _080B8B30
	ldr r0, [r2, #0]
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, _080B8B34
	ldr r0, [r2, #0]
	ldr r0, [r0, #4]
	str r0, [r1, #0]
	ldr r1, _080B8B38
	ldr r0, [r2, #0]
	ldr r0, [r0, #8]
	str r0, [r1, #0]
	ldr r1, _080B8B3C
	ldr r0, [r2, #0]
	ldr r0, [r0, #0xc]
	str r0, [r1, #0]
	ldr r1, _080B8B40
	ldr r0, [r2, #0]
	ldr r0, [r0, #0x10]
	str r0, [r1, #0]
	ldr r1, _080B8B44
	ldr r0, [r2, #0]
	adds r0, #0x14
	str r0, [r1, #0]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000
_080B8B30: .4byte gUnk_030076DC
_080B8B34: .4byte gUnk_030076E8
_080B8B38: .4byte gUnk_030076EC
_080B8B3C: .4byte gUnk_030076D8
_080B8B40: .4byte gUnk_030076F0
_080B8B44: .4byte gUnk_030076E0
	thumb_func_end sub_080B8AB4
