	thumb_func_start sub_0801DEB8
sub_0801DEB8: @ 0x0801DEB8
	push {lr}
	ldr r0, _0801DED8
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0801DEDC
	movs r1, #0
	b _0801DEEE
	.2byte 0x0000
_0801DED8: .4byte gUnk_030034E0
_0801DEDC:
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r1, r0, #0
_0801DEEE:
	adds r0, r1, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	beq _0801DEFC
	movs r0, #0
	b _0801DF02
_0801DEFC:
	adds r0, r1, #0
	adds r0, #0xa7
	ldrb r0, [r0, #0]
_0801DF02:
	pop {r1}
	bx r1
	thumb_func_end sub_0801DEB8
