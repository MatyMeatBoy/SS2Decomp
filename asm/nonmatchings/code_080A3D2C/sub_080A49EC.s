	thumb_func_start sub_080A49EC
sub_080A49EC: @ 0x080A49EC
	push {r4, r5, r6, lr}
	ldr r5, _080A4A34
	ldr r4, _080A4A38
	ldr r3, _080A4A3C
	ldr r2, _080A4A40
	ldr r1, _080A4A44
	movs r0, #0
	strb r0, [r1, #0]
	strb r0, [r2, #0]
	strb r0, [r3, #0]
	strb r0, [r4, #0]
	strb r0, [r5, #0]
	movs r2, #0
	ldr r6, _080A4A48
	ldr r5, _080A4A4C
	ldr r4, _080A4A50
	movs r3, #0
_080A4A0E:
	adds r1, r2, r5
	adds r0, r2, r4
	strb r3, [r0, #0]
	strb r3, [r1, #0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _080A4A0E
	movs r0, #0x28
	bl sub_08001494
	str r0, [r6, #0]
	movs r1, #0
	str r1, [r0, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A4A34: .4byte gUnk_030003F1
_080A4A38: .4byte gUnk_030003F2
_080A4A3C: .4byte gUnk_030003EF
_080A4A40: .4byte gUnk_030003F0
_080A4A44: .4byte gUnk_030003EA
_080A4A48: .4byte gUnk_03000358
_080A4A4C: .4byte gUnk_030003F8
_080A4A50: .4byte gUnk_030003EC
	thumb_func_end sub_080A49EC
