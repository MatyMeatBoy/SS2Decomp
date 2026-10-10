	thumb_func_start sub_0801F320
sub_0801F320: @ 0x0801F320
	push {r4, lr}
	adds r3, r0, #0
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _0801F360
	adds r0, r2, #0
	lsrs r0, r0, #2
	adds r2, r3, #0
	adds r2, #0xce
	strh r0, [r2, #0]
	ldrb r4, [r1, #2]
	cmp r0, #0
	bne _0801F344
	movs r0, #1
	strh r0, [r2, #0]
	adds r2, #4
	adds r0, #0xff
	b _0801F34C
_0801F344:
	adds r2, r3, #0
	adds r2, #0xd2
	movs r0, #0x80
	lsls r0, r0, #3
_0801F34C:
	strh r0, [r2, #0]
	adds r0, r3, #0
	adds r0, #0xd4
	strh r4, [r0, #0]
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, #4
	strh r1, [r0, #0]
	b _0801F36E
_0801F360:
	adds r0, r3, #0
	adds r0, #0xce
	strh r2, [r0, #0]
	adds r0, #4
	strh r2, [r0, #0]
	adds r0, #2
	strh r2, [r0, #0]
_0801F36E:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0801F320
