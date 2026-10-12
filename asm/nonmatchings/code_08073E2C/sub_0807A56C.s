	thumb_func_start sub_0807A56C
sub_0807A56C: @ 0x0807A56C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0807A5BC
	adds r0, r5, #0
	bl sub_08001494
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08001B04
	ldr r0, _0807A5C0
	adds r5, r6, r0
	adds r4, r0, #0
	movs r3, #0
	adds r1, r6, #0
	movs r2, #0
_0807A596:
	ldrb r0, [r1, #0]
	adds r0, r3, r0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r2, #1
	adds r1, #1
	cmp r2, r4
	blo _0807A596
	mvns r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r5, #0]
	cmp r1, r0
	bne _0807A5C4
	adds r0, r6, #0
	bl sub_08001538
	movs r0, #1
	b _0807A5CC
_0807A5BC: .4byte 0x00000CA8
_0807A5C0: .4byte 0x00000CA4
_0807A5C4:
	adds r0, r6, #0
	bl sub_08001538
	movs r0, #0
_0807A5CC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_0807A56C
