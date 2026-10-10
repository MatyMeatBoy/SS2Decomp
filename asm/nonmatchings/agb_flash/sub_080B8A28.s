	thumb_func_start sub_080B8A28
sub_080B8A28: @ 0x080B8A28
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _080B8A3A
_080B8A34:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080B8A3A:
	cmp r6, #2
	bhi _080B8A60
	ldr r0, _080B8A68
	ldr r2, [r0, #0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _080B8A34
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080B88F8
	adds r2, r0, #0
	cmp r2, #0
	bne _080B8A34
_080B8A60:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080B8A68: .4byte gUnk_030076DC
	thumb_func_end sub_080B8A28
