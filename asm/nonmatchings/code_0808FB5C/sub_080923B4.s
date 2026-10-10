	thumb_func_start sub_080923B4
sub_080923B4: @ 0x080923B4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	ldr r0, _080923F0
	lsls r5, r5, #0x18
	asrs r5, r5, #0x16
	adds r0, r5, r0
	asrs r6, r4, #0x18
	lsls r4, r4, #8
	asrs r4, r4, #0x18
	ldr r2, [r0, #0]
	adds r0, r6, #0
	adds r1, r4, #0
	bl _call_via_r2
	ldr r0, _080923F4
	adds r5, r5, r0
	ldr r2, [r5, #0]
	adds r0, r6, #0
	adds r1, r4, #0
	bl _call_via_r2
	ldr r0, _080923F8
	bl sub_08000420
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_080923F0: .4byte gUnk_03000210
_080923F4: .4byte gUnk_03000230
_080923F8: .4byte 0x12001111
	thumb_func_end sub_080923B4
