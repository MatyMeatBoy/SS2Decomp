	thumb_func_start sub_080B869C
sub_080B869C: @ 0x080B869C
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _080B86D0
	ldr r0, _080B86C0
	strb r1, [r0, #0]
	ldr r1, _080B86C4
	ldrb r0, [r0, #0]
	lsls r0, r0, #2
	ldr r3, _080B86C8
	adds r0, r0, r3
	str r0, [r1, #0]
	ldr r0, _080B86CC
	str r0, [r2, #0]
	movs r0, #0
	b _080B86D2
_080B86C0: .4byte gUnk_03000E30
_080B86C4: .4byte gUnk_03000E34
_080B86C8: .4byte 0x04000100
_080B86CC: .4byte sub_080B8674
_080B86D0:
	movs r0, #1
_080B86D2:
	pop {r1}
	bx r1
	thumb_func_end sub_080B869C
