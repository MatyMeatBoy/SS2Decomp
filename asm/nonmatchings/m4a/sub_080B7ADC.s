	thumb_func_start sub_080B7ADC
sub_080B7ADC: @ 0x080B7ADC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _080B7B14
	cmp r5, #0x14
	bhi _080B7AF8
	movs r5, #0
	b _080B7B06
_080B7AF8:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _080B7B06
	movs r5, #0x3b
_080B7B06:
	ldr r0, _080B7B10
	adds r0, r5, r0
	ldrb r0, [r0, #0]
	b _080B7B76
	.2byte 0x0000
_080B7B10: .4byte gUnk_080BBA10
_080B7B14:
	cmp r5, #0x23
	bhi _080B7B20
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _080B7B32
_080B7B20:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _080B7B32
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_080B7B32:
	ldr r3, _080B7B7C
	adds r0, r5, r3
	ldrb r6, [r0, #0]
	ldr r4, _080B7B80
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0, #0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_080B7B76:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080B7B7C: .4byte gUnk_080BB974
_080B7B80: .4byte gUnk_080BB9F8
	thumb_func_end sub_080B7ADC
