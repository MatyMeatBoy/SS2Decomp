	thumb_func_start sub_080A4C74
sub_080A4C74: @ 0x080A4C74
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _080A4C9C
	ldrb r2, [r3, #0]
	adds r0, r2, #0
	cmp r0, #0xff
	beq _080A4C8C
	ldr r0, _080A4CA0
	strb r2, [r0, #0]
_080A4C8C:
	strb r4, [r3, #0]
	ldr r0, _080A4CA4
	ldr r0, [r0, #0]
	strh r1, [r0, #8]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A4C9C: .4byte gUnk_030003F1
_080A4CA0: .4byte gUnk_030003F2
_080A4CA4: .4byte gUnk_03000368
	thumb_func_end sub_080A4C74
