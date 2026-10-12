	thumb_func_start sub_0809D77C
sub_0809D77C: @ 0x0809D77C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _0809D78C
	ldr r4, [r0, #0]
	movs r5, #0
	b _0809D798
	.2byte 0x0000
_0809D78C: .4byte gUnk_03000308
_0809D790:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #0x28
_0809D798:
	cmp r5, #1
	bhi _0809D7D4
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0809D790
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0809D790
	adds r0, r6, #0
	adds r0, #0x46
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0809D7DC
	str r0, [r4, #0xc]
	ldr r0, _0809D7E0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08000274
_0809D7D4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_0809D7DC: .4byte sub_0809CC2C
_0809D7E0: .4byte sub_0809D848
	thumb_func_end sub_0809D77C
