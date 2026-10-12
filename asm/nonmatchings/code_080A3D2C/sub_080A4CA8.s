	thumb_func_start sub_080A4CA8
sub_080A4CA8: @ 0x080A4CA8
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r4, _080A4CD0
	adds r4, r0, r4
	strb r1, [r4, #0]
	ldr r1, _080A4CD4
	adds r1, r0, r1
	strb r2, [r1, #0]
	ldr r1, _080A4CD8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	strh r3, [r0, #8]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A4CD0: .4byte gUnk_030003F8
_080A4CD4: .4byte gUnk_030003F4
_080A4CD8: .4byte gUnk_03000370
	thumb_func_end sub_080A4CA8
