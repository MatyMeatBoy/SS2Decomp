	thumb_func_start sub_080022A4
sub_080022A4: @ 0x080022A4
	push {r4, r5, lr}
	ldr r1, _080022E0
	movs r0, #1
	str r0, [r1, #0]
	ldr r5, _080022E4
	ldr r4, _080022E8
_080022B0:
	ldr r0, _080022EC
	ldr r1, _080022F0
	movs r2, #0xc
	bl sub_080B8578
	str r4, [r5, #0]
	bl sub_080003F0
	ldr r2, _080022E0
	ldr r0, [r2, #0]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	beq _080022B0
	ldr r0, _080022E4
	movs r1, #0
	str r1, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r2, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
_080022E0: .4byte gUnk_030027D0
_080022E4: .4byte gUnk_03002730
_080022E8: .4byte 0x00000101
_080022EC: .4byte gUnk_03002710
_080022F0: .4byte gUnk_03002770
	thumb_func_end sub_080022A4
