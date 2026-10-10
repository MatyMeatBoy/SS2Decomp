	thumb_func_start sub_080B6068
sub_080B6068: @ 0x080B6068
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080586B4
	ldr r0, _080B60DC
	movs r1, #1
	strb r1, [r0, #0]
	bl sub_0800CC98
	cmp r0, #0
	bne _080B609E
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B609E
	movs r0, #0xf8
	lsls r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #6
	movs r2, #1
	bl sub_080009C0
	ldr r1, _080B60E0
	movs r0, #0x3f
	strh r0, [r1, #0x38]
	movs r0, #0x3b
	strh r0, [r1, #0x3a]
_080B609E:
	ldr r1, _080B60E4
	ldrb r2, [r1, #0]
	adds r2, #1
	strb r2, [r1, #0]
	ldr r4, _080B60E8
	ldr r5, _080B60E0
	ldrb r3, [r1, #0]
	lsls r1, r3, #8
	movs r0, #0xf0
	subs r0, r0, r3
	orrs r1, r0
	strh r1, [r5, #0x30]
	ldrb r3, [r4, #0]
	lsls r1, r3, #8
	movs r0, #0xa0
	subs r0, r0, r3
	orrs r1, r0
	strh r1, [r5, #0x34]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x77
	bls _080B60EC
	movs r0, #0x80
	lsls r0, r0, #3
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	movs r0, #1
	b _080B60EE
	.2byte 0x0000
_080B60DC: .4byte gUnk_030007EA
_080B60E0: .4byte gUnk_03001250
_080B60E4: .4byte gUnk_030007E8
_080B60E8: .4byte gUnk_030007E9
_080B60EC:
	movs r0, #0
_080B60EE:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_080B6068
