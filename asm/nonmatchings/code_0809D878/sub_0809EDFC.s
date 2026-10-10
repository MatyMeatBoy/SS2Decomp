	thumb_func_start sub_0809EDFC
sub_0809EDFC: @ 0x0809EDFC
	push {r4, r5, lr}
	ldr r3, _0809EE2C
	ldrh r2, [r3, #0]
	movs r1, #2
	ands r1, r2
	ldr r5, _0809EE30
	cmp r1, #0
	bne _0809EE18
	movs r4, #2
_0809EE0E:
	ldrh r2, [r3, #0]
	adds r1, r4, #0
	ands r1, r2
	cmp r1, #0
	beq _0809EE0E
_0809EE18:
	ldrb r1, [r5, #0]
	cmp r1, #8
	bls _0809EE20
	b _0809EF60
_0809EE20:
	lsls r1, r1, #2
	ldr r2, _0809EE34
	adds r1, r1, r2
	ldr r1, [r1, #0]
	mov pc, r1
	.2byte 0x0000
_0809EE2C: .4byte 0x04000004
_0809EE30: .4byte gUnk_03000320
_0809EE34: .4byte _0809EE38
_0809EE38:
	.4byte _0809EE5C
_0809EE3C: .4byte _0809EF10
_0809EE40: .4byte _0809EEB0
_0809EE44: .4byte _0809EF60
_0809EE48: .4byte _0809EECC
_0809EE4C: .4byte _0809EEDC
_0809EE50: .4byte _0809EEEE
_0809EE54: .4byte _0809EF00
_0809EE58: .4byte _0809EF10
_0809EE5C:
	ldr r1, _0809EE9C
	ldr r4, _0809EEA0
	ldrh r0, [r4, #0]
	strh r0, [r1, #0]
	ldrh r0, [r4, #0]
	subs r0, #1
	strh r0, [r4, #0]
	ldrh r0, [r4, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	adds r1, r0, #0
	strh r1, [r4, #0]
	ldr r4, _0809EEA4
	ldr r3, _0809EEA8
	ldr r2, _0809EEAC
	ldrb r1, [r2, #0]
	adds r1, #1
	strb r1, [r2, #0]
	ldrb r1, [r2, #0]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	lsls r1, r2, #1
	adds r1, r1, r2
	asrs r1, r1, #7
	strh r1, [r4, #0]
	b _0809EF60
	.2byte 0x0000
_0809EE9C: .4byte 0x0400001A
_0809EEA0: .4byte gUnk_0300030C
_0809EEA4: .4byte 0x04000018
_0809EEA8: .4byte gUnk_080B9704
_0809EEAC: .4byte gUnk_0300030E
_0809EEB0:
	ldr r2, _0809EEC4
	movs r1, #0
	strh r1, [r2, #0]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r2, [r3, #0]
	ldr r1, _0809EEC8
	ands r1, r2
	b _0809EF5E
	.2byte 0x0000
_0809EEC4: .4byte 0x04000018
_0809EEC8: .4byte 0x0000FBFF
_0809EECC:
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r2, [r3, #0]
	ldr r1, _0809EED8
	ands r1, r2
	b _0809EF5E
_0809EED8: .4byte 0x0000FBFF
_0809EEDC:
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1, #0]
	movs r4, #0x80
	lsls r4, r4, #3
	adds r3, r4, #0
	orrs r2, r3
	strh r2, [r1, #0]
	b _0809EF60
_0809EEEE:
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r2, [r3, #0]
	ldr r1, _0809EEFC
	ands r1, r2
	b _0809EF5E
	.2byte 0x0000
_0809EEFC: .4byte 0x0000FBFF
_0809EF00:
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r2, [r3, #0]
	ldr r1, _0809EF0C
	ands r1, r2
	b _0809EF5E
_0809EF0C: .4byte 0x0000FBFF
_0809EF10:
	ldr r1, _0809EF68
	ldr r4, _0809EF6C
	ldrh r0, [r4, #0]
	strh r0, [r1, #0]
	ldrh r0, [r4, #0]
	subs r0, #1
	strh r0, [r4, #0]
	ldrh r0, [r4, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl __modsi3
	adds r1, r0, #0
	strh r1, [r4, #0]
	ldr r4, _0809EF70
	ldr r3, _0809EF74
	ldr r2, _0809EF78
	ldrb r1, [r2, #0]
	adds r1, #1
	strb r1, [r2, #0]
	ldrb r1, [r2, #0]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	lsls r1, r2, #1
	adds r1, r1, r2
	asrs r1, r1, #7
	strh r1, [r4, #0]
	ldr r3, _0809EF7C
	ldr r1, _0809EF80
	ldrh r2, [r1, #0]
	movs r1, #0x1f
	ands r1, r2
	movs r4, #0xe0
	lsls r4, r4, #4
	adds r2, r4, #0
	orrs r1, r2
_0809EF5E:
	strh r1, [r3, #0]
_0809EF60:
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000
_0809EF68: .4byte 0x0400001A
_0809EF6C: .4byte gUnk_0300030C
_0809EF70: .4byte 0x04000018
_0809EF74: .4byte gUnk_080B9704
_0809EF78: .4byte gUnk_0300030E
_0809EF7C: .4byte 0x04000052
_0809EF80: .4byte gUnk_0300031E
	thumb_func_end sub_0809EDFC
