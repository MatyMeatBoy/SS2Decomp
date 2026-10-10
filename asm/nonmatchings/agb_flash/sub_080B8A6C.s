	thumb_func_start sub_080B8A6C
sub_080B8A6C: @ 0x080B8A6C
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _080B8A80
_080B8A7A:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080B8A80:
	cmp r6, #2
	bhi _080B8AA8
	ldr r0, _080B8AB0
	ldr r2, [r0, #0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080B8F2C
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _080B8A7A
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080B8990
	adds r3, r0, #0
	cmp r3, #0
	bne _080B8A7A
_080B8AA8:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080B8AB0: .4byte gUnk_030076DC
	thumb_func_end sub_080B8A6C
