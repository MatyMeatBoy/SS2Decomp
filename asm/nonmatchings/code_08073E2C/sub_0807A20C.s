	thumb_func_start sub_0807A20C
sub_0807A20C: @ 0x0807A20C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r5, #0
	bl sub_08001494
	adds r6, r0, #0
	adds r0, r5, #0
	bl sub_08001494
	adds r7, r0, #0
	adds r0, r4, #0
	movs r1, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08001B04
	adds r4, #8
	adds r0, r4, #0
	movs r1, #0
	adds r2, r7, #0
	adds r3, r5, #0
	bl sub_08001B04
	ldr r0, _0807A2BC
	adds r5, r6, r0
	adds r4, r0, #0
	movs r3, #0
	adds r1, r6, #0
	movs r2, #0
_0807A24E:
	ldrb r0, [r1, #0]
	adds r0, r3, r0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r2, #1
	adds r1, #1
	cmp r2, r4
	blo _0807A24E
	mvns r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r5, #0]
	cmp r1, r0
	bne _0807A2CC
	ldr r0, _0807A2C0
	adds r5, r7, r0
	adds r4, r0, #0
	movs r3, #0
	adds r1, r7, #0
	movs r2, #0
_0807A276:
	ldrb r0, [r1, #0]
	adds r0, r3, r0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r2, #1
	adds r1, #1
	cmp r2, r4
	blo _0807A276
	mvns r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r5, #0]
	cmp r1, r0
	bne _0807A2CC
	ldr r0, _0807A2C4
	ldr r0, [r0, #0]
	ldr r2, _0807A2BC
	adds r1, r6, #0
	bl sub_080B96A4
	ldr r0, _0807A2C8
	ldr r0, [r0, #0]
	ldr r2, _0807A2C0
	adds r1, r7, #0
	bl sub_080B96A4
	adds r0, r6, #0
	bl sub_08001538
	adds r0, r7, #0
	bl sub_08001538
	movs r0, #1
	b _0807A2DA
	.2byte 0x0000
_0807A2BC: .4byte 0x00000CA4
_0807A2C0: .4byte 0x0000051C
_0807A2C4: .4byte gUnk_030034E0
_0807A2C8: .4byte gUnk_03004210
_0807A2CC:
	adds r0, r6, #0
	bl sub_08001538
	adds r0, r7, #0
	bl sub_08001538
	movs r0, #0
_0807A2DA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0807A20C
