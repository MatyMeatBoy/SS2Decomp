	thumb_func_start sub_08097D7C
sub_08097D7C: @ 0x08097D7C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	ldr r2, _08097DB4
	ldrb r0, [r2, #0xd]
	strb r0, [r2, #0xe]
	ldrb r0, [r2, #0xf]
	cmp r0, #0
	bne _08097DAE
	ldr r1, _08097DB8
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	muls r0, r1, r0
	asrs r0, r0, #8
	strb r0, [r2, #0xd]
	ldrb r0, [r2, #0xc]
	adds r0, r4, r0
	strb r0, [r2, #0xc]
_08097DAE:
	pop {r4, r5}
	pop {r0}
	bx r0
_08097DB4: .4byte gUnk_030002A0
_08097DB8: .4byte gUnk_080B9704
	thumb_func_end sub_08097D7C
