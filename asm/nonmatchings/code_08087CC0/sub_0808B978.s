	thumb_func_start sub_0808B978
sub_0808B978: @ 0x0808B978
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	ldr r0, _0808B998
	ldr r0, [r0, #0]
	cmp r0, #4
	bhi _0808B9F6
	lsls r0, r0, #2
	ldr r1, _0808B99C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0808B998: .4byte gUnk_03003470
_0808B99C: .4byte _0808B9A0
_0808B9A0:
	.4byte _0808B9B4
_0808B9A4: .4byte _0808B9BC
_0808B9A8: .4byte _0808B9C4
_0808B9AC: .4byte _0808B9CC
_0808B9B0: .4byte _0808B9E4
_0808B9B4:
	ldr r1, _0808B9B8
	b _0808B9CE
_0808B9B8: .4byte 0x00050006
_0808B9BC:
	ldr r1, _0808B9C0
	b _0808B9CE
_0808B9C0: .4byte 0x00050007
_0808B9C4:
	ldr r1, _0808B9C8
	b _0808B9CE
_0808B9C8: .4byte 0x00050008
_0808B9CC:
	ldr r1, _0808B9E0
_0808B9CE:
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #4
	movs r2, #0
	bl sub_08065158
	b _0808B9F6
_0808B9E0: .4byte 0x00050009
_0808B9E4:
	ldr r1, _0808BA50
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #4
	movs r2, #0
	bl sub_08065158
_0808B9F6:
	bl sub_0800CF58
	bl sub_08057934
	movs r2, #0xdf
	lsls r2, r2, #1
	movs r0, #0
	movs r1, #0x79
	movs r3, #0
	bl sub_08028AAC
	movs r0, #0
	movs r1, #4
	bl sub_080290E4
	ldr r1, _0808BA54
	movs r0, #0
	bl sub_08057328
	ldr r4, _0808BA58
	ldr r0, [r4, #0]
	adds r0, #0x5a
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, _0808BA5C
	bl sub_080003F4
	ldr r1, _0808BA60
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0x36]
	movs r2, #0xff
	ands r2, r0
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r6, [r0, #0]
	movs r0, #0
	str r0, [sp, #0x38]
	cmp r2, #9
	bhi _0808BAF4
	lsls r0, r2, #2
	ldr r1, _0808BA64
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0808BA50: .4byte 0x0005000A
_0808BA54: .4byte sub_0802F208
_0808BA58: .4byte gUnk_03005CF4
_0808BA5C: .4byte 0x09999000
_0808BA60: .4byte gUnk_084F0C00
_0808BA64: .4byte _0808BA68
_0808BA68:
	.4byte _0808BA90
_0808BA6C: .4byte _0808BA98
_0808BA70: .4byte _0808BAA4
_0808BA74: .4byte _0808BAB0
_0808BA78: .4byte _0808BAB8
_0808BA7C: .4byte _0808BAC4
_0808BA80: .4byte _0808BAD0
_0808BA84: .4byte _0808BAD8
_0808BA88: .4byte _0808BAE4
_0808BA8C: .4byte _0808BAF0
_0808BA90:
	ldr r1, _0808BA94
	b _0808BAF2
_0808BA94: .4byte gUnk_084AA9E0
_0808BA98:
	ldr r2, _0808BAA0
	mov r9, r2
	b _0808BAF4
	.2byte 0x0000
_0808BAA0: .4byte gUnk_084AAB30
_0808BAA4:
	ldr r0, _0808BAAC
	mov r9, r0
	b _0808BAF4
	.2byte 0x0000
_0808BAAC: .4byte gUnk_084AAC80
_0808BAB0:
	ldr r1, _0808BAB4
	b _0808BAF2
_0808BAB4: .4byte gUnk_084AADD0
_0808BAB8:
	ldr r2, _0808BAC0
	mov r9, r2
	b _0808BAF4
	.2byte 0x0000
_0808BAC0: .4byte gUnk_084AAF20
_0808BAC4:
	ldr r0, _0808BACC
	mov r9, r0
	b _0808BAF4
	.2byte 0x0000
_0808BACC: .4byte gUnk_084AB070
_0808BAD0:
	ldr r1, _0808BAD4
	b _0808BAF2
_0808BAD4: .4byte gUnk_084AB1C0
_0808BAD8:
	ldr r2, _0808BAE0
	mov r9, r2
	b _0808BAF4
	.2byte 0x0000
_0808BAE0: .4byte gUnk_084AB310
_0808BAE4:
	ldr r0, _0808BAEC
	mov r9, r0
	b _0808BAF4
	.2byte 0x0000
_0808BAEC: .4byte gUnk_084AB460
_0808BAF0:
	ldr r1, _0808BB14
_0808BAF2:
	mov r9, r1
_0808BAF4:
	mov r2, r9
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _0808BB00
	b _0808BD7E
_0808BB00:
	bl sub_08057170
	ldr r0, _0808BB18
	ldr r1, [r0, #0]
	movs r0, #0
	strh r0, [r1, #0xa]
	mov r0, r9
	bl sub_08058620
	b _0808BC36
_0808BB14: .4byte gUnk_084AB5B0
_0808BB18: .4byte gUnk_03005CF4
_0808BB1C:
	ldr r0, _0808BB38
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x36]
	movs r4, #0xff
	ands r4, r0
	ldr r1, _0808BB3C
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	lsrs r0, r0, #1
	cmp r6, r0
	bge _0808BB40
	movs r7, #1
	b _0808BB66
_0808BB38: .4byte gUnk_03005CF4
_0808BB3C: .4byte gUnk_084F0C00
_0808BB40:
	adds r0, r4, #0
	bl sub_08058900
	cmp r0, r6
	bhi _0808BB60
	adds r0, r4, #0
	bl sub_08058900
	cmp r0, r6
	bne _0808BB64
	adds r0, r4, #0
	bl sub_08058934
	movs r7, #0
	cmp r0, r8
	bls _0808BB66
_0808BB60:
	movs r7, #2
	b _0808BB66
_0808BB64:
	movs r7, #0
_0808BB66:
	bl sub_0800CC98
	cmp r0, #0
	bne _0808BBF4
	bl sub_0800CD8C
	adds r4, r0, #0
	cmp r4, #0
	bne _0808BBF4
	ldr r0, _0808BC18
	bl sub_08000440
	cmp r0, #0
	beq _0808BB9E
	str r4, [sp, #0]
	add r0, sp, #4
	movs r1, #0
	movs r2, #0x20
	movs r3, #0x22
	bl sub_08065230
	str r4, [sp, #0]
	add r0, sp, #4
	movs r1, #0
	movs r2, #0x28
	movs r3, #0x17
	bl sub_08065230
_0808BB9E:
	adds r0, r6, #0
	movs r1, #0xe1
	lsls r1, r1, #4
	bl __divsi3
	adds r2, r0, #0
	lsls r5, r7, #0x18
	lsrs r5, r5, #0x18
	movs r0, #1
	movs r1, #4
	adds r3, r5, #0
	bl sub_0805FB7C
	adds r0, r6, #0
	movs r1, #0xe1
	lsls r1, r1, #4
	bl __modsi3
	adds r4, r0, #0
	movs r1, #0x3c
	bl __divsi3
	adds r2, r0, #0
	movs r0, #4
	movs r1, #4
	adds r3, r5, #0
	bl sub_0805FB7C
	adds r0, r4, #0
	movs r1, #0x3c
	bl __modsi3
	movs r1, #0x64
	muls r0, r1, r0
	movs r1, #0x3c
	bl __divsi3
	adds r2, r0, #0
	movs r0, #7
	movs r1, #4
	adds r3, r5, #0
	bl sub_0805FB7C
_0808BBF4:
	ldr r0, _0808BC1C
	ldr r0, [r0, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0808BC08
	subs r6, #1
	ldr r2, [sp, #0x38]
	adds r2, #1
	str r2, [sp, #0x38]
_0808BC08:
	movs r0, #1
	bl sub_08057624
	cmp r6, #0
	bgt _0808BC20
	movs r6, #0
	b _0808BC40
	.2byte 0x0000
_0808BC18: .4byte 0x00018A92
_0808BC1C: .4byte gUnk_03005CF4
_0808BC20:
	ldr r4, _0808BC48
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	bne _0808BC36
	b _0808BFF4
_0808BC36:
	bl sub_08058420
	cmp r0, #0
	bne _0808BC40
	b _0808BB1C
_0808BC40:
	movs r0, #0xe1
	lsls r0, r0, #4
	mov sl, r0
	b _0808BC6A
_0808BC48: .4byte gUnk_03003CE0
_0808BC4C:
	ldr r4, _0808BC88
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r4
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	bne _0808BC62
	b _0808BFF4
_0808BC62:
	ldr r0, [r5, #0]
	ldrh r0, [r0, #0xa]
	cmp r0, #1
	bne _0808BD64
_0808BC6A:
	ldr r0, _0808BC8C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x36]
	movs r4, #0xff
	ands r4, r0
	ldr r1, _0808BC90
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	lsrs r0, r0, #1
	cmp r6, r0
	bge _0808BC94
	movs r7, #1
	b _0808BCBA
	.2byte 0x0000
_0808BC88: .4byte gUnk_03003CE0
_0808BC8C: .4byte gUnk_03005CF4
_0808BC90: .4byte gUnk_084F0C00
_0808BC94:
	adds r0, r4, #0
	bl sub_08058900
	cmp r0, r6
	bhi _0808BCB4
	adds r0, r4, #0
	bl sub_08058900
	cmp r0, r6
	bne _0808BCB8
	adds r0, r4, #0
	bl sub_08058934
	movs r7, #0
	cmp r0, r8
	bls _0808BCBA
_0808BCB4:
	movs r7, #2
	b _0808BCBA
_0808BCB8:
	movs r7, #0
_0808BCBA:
	bl sub_0800CC98
	cmp r0, #0
	bne _0808BD44
	bl sub_0800CD8C
	adds r4, r0, #0
	cmp r4, #0
	bne _0808BD44
	ldr r0, _0808BDC4
	bl sub_08000440
	cmp r0, #0
	beq _0808BCF2
	str r4, [sp, #0]
	add r0, sp, #4
	movs r1, #0
	movs r2, #0x20
	movs r3, #0x22
	bl sub_08065230
	str r4, [sp, #0]
	add r0, sp, #4
	movs r1, #0
	movs r2, #0x28
	movs r3, #0x17
	bl sub_08065230
_0808BCF2:
	adds r0, r6, #0
	mov r1, sl
	bl __divsi3
	adds r2, r0, #0
	lsls r5, r7, #0x18
	lsrs r5, r5, #0x18
	movs r0, #1
	movs r1, #4
	adds r3, r5, #0
	bl sub_0805FB7C
	adds r0, r6, #0
	mov r1, sl
	bl __modsi3
	adds r4, r0, #0
	movs r1, #0x3c
	bl __divsi3
	adds r2, r0, #0
	movs r0, #4
	movs r1, #4
	adds r3, r5, #0
	bl sub_0805FB7C
	adds r0, r4, #0
	movs r1, #0x3c
	bl __modsi3
	movs r1, #0x64
	muls r0, r1, r0
	movs r1, #0x3c
	bl __divsi3
	adds r2, r0, #0
	movs r0, #7
	movs r1, #4
	adds r3, r5, #0
	bl sub_0805FB7C
_0808BD44:
	ldr r5, _0808BDC8
	ldr r0, [r5, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0808BD58
	subs r6, #1
	ldr r1, [sp, #0x38]
	adds r1, #1
	str r1, [sp, #0x38]
_0808BD58:
	movs r0, #1
	bl sub_08057624
	cmp r6, #0
	ble _0808BD64
	b _0808BC4C
_0808BD64:
	cmp r6, #0
	ble _0808BE1C
	movs r0, #3
	bl sub_08057624
	movs r2, #0x38
	add r9, r2
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0808BD7E
	b _0808BB00
_0808BD7E:
	cmp r6, #0
	ble _0808BE1C
	ldr r0, _0808BDCC
	bl sub_0805A4BC
	movs r4, #0xe1
	lsls r4, r4, #4
	adds r0, r6, #0
	adds r1, r4, #0
	bl __modsi3
	movs r1, #0x3c
	bl __modsi3
	movs r5, #0x64
	muls r0, r5, r0
	movs r1, #0x3c
	bl __divsi3
	mov r8, r0
	cmp r6, #1
	bne _0808BDD0
	movs r4, #3
	bl sub_080008C8
	mov r2, r8
	subs r1, r4, r2
	bl __umodsi3
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	subs r1, r5, r1
	b _0808BE08
	.2byte 0x0000
_0808BDC4: .4byte 0x00018A92
_0808BDC8: .4byte gUnk_03005CF4
_0808BDCC: .4byte gUnk_0850CAA8
_0808BDD0:
	subs r0, r6, #1
	adds r1, r4, #0
	bl __modsi3
	movs r1, #0x3c
	bl __modsi3
	muls r0, r5, r0
	movs r1, #0x3c
	bl __divsi3
	adds r4, r0, #0
	mov r2, r8
	subs r4, r2, r4
	cmp r4, #0x63
	bhi _0808BDFE
	bl sub_080008C8
	adds r1, r4, #0
	bl __umodsi3
	add r8, r0
	b _0808BE02
_0808BDFE:
	movs r0, #0x64
	mov r8, r0
_0808BE02:
	movs r0, #0x64
	mov r1, r8
	subs r1, r0, r1
_0808BE08:
	str r1, [sp, #0x3c]
	ldr r0, _0808BE18
	ldr r0, [r0, #0]
	adds r0, #0x58
	movs r1, #1
	strh r1, [r0, #0]
	b _0808BE2E
	.2byte 0x0000
_0808BE18: .4byte gUnk_03005CF4
_0808BE1C:
	movs r6, #0
	mov r8, r6
	ldr r0, _0808BE54
	ldr r0, [r0, #0]
	adds r0, #0x58
	movs r1, #2
	strh r1, [r0, #0]
	bl sub_080169C8
_0808BE2E:
	movs r4, #0xe1
	lsls r4, r4, #4
	adds r0, r6, #0
	adds r1, r4, #0
	bl __divsi3
	mov sl, r0
	lsls r0, r7, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #0
	adds r1, r4, #0
	bl __modsi3
	movs r1, #0x3c
	bl __divsi3
	mov r9, r0
	b _0808BEBA
	.2byte 0x0000
_0808BE54: .4byte gUnk_03005CF4
_0808BE58:
	bl sub_0800CC98
	cmp r0, #0
	bne _0808BEB4
	bl sub_0800CD8C
	adds r4, r0, #0
	cmp r4, #0
	bne _0808BEB4
	ldr r0, _0808BF00
	bl sub_08000440
	cmp r0, #0
	beq _0808BE90
	str r4, [sp, #0]
	add r0, sp, #4
	movs r1, #0
	movs r2, #0x20
	movs r3, #0x22
	bl sub_08065230
	str r4, [sp, #0]
	add r0, sp, #4
	movs r1, #0
	movs r2, #0x28
	movs r3, #0x17
	bl sub_08065230
_0808BE90:
	movs r0, #1
	movs r1, #4
	mov r2, sl
	adds r3, r5, #0
	bl sub_0805FB7C
	movs r0, #4
	movs r1, #4
	mov r2, r9
	adds r3, r5, #0
	bl sub_0805FB7C
	movs r0, #7
	movs r1, #4
	mov r2, r8
	adds r3, r5, #0
	bl sub_0805FB7C
_0808BEB4:
	movs r0, #1
	bl sub_08057624
_0808BEBA:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r2, _0808BF04
	adds r0, r0, r2
	ldr r1, [r0, #0]
	ldr r0, _0808BF08
	cmp r1, r0
	bgt _0808BE58
	ldr r0, _0808BF0C
	movs r1, #0
	bl sub_080257D4
	bl sub_08056E24
	movs r4, #0xe1
	lsls r4, r4, #4
	adds r0, r6, #0
	adds r1, r4, #0
	bl __divsi3
	mov r9, r0
	lsls r0, r7, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #0
	adds r1, r4, #0
	bl __modsi3
	movs r1, #0x3c
	bl __divsi3
	adds r7, r0, #0
	b _0808BF72
_0808BF00: .4byte 0x00018A92
_0808BF04: .4byte gUnk_03003D70
_0808BF08: .4byte 0x0001C1FF
_0808BF0C: .4byte gUnk_084F0C28
_0808BF10:
	bl sub_0800CC98
	cmp r0, #0
	bne _0808BF6C
	bl sub_0800CD8C
	adds r4, r0, #0
	cmp r4, #0
	bne _0808BF6C
	ldr r0, _0808BFA4
	bl sub_08000440
	cmp r0, #0
	beq _0808BF48
	str r4, [sp, #0]
	add r0, sp, #4
	movs r1, #0
	movs r2, #0x20
	movs r3, #0x22
	bl sub_08065230
	str r4, [sp, #0]
	add r0, sp, #4
	movs r1, #0
	movs r2, #0x28
	movs r3, #0x17
	bl sub_08065230
_0808BF48:
	movs r0, #1
	movs r1, #4
	mov r2, r9
	adds r3, r5, #0
	bl sub_0805FB7C
	movs r0, #4
	movs r1, #4
	adds r2, r7, #0
	adds r3, r5, #0
	bl sub_0805FB7C
	movs r0, #7
	movs r1, #4
	mov r2, r8
	adds r3, r5, #0
	bl sub_0805FB7C
_0808BF6C:
	movs r0, #1
	bl sub_08057624
_0808BF72:
	bl sub_08056E90
	cmp r0, #0
	beq _0808BF10
	cmp r6, #0
	ble _0808BFF4
	ldr r0, _0808BFA8
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x36]
	movs r4, #0xff
	ands r4, r0
	adds r0, r4, #0
	bl sub_08058900
	ldr r1, [sp, #0x38]
	cmp r0, r1
	bls _0808BFAC
	adds r0, r4, #0
	bl sub_0805896C
	adds r0, r4, #0
	ldr r1, [sp, #0x3c]
	bl sub_080589A0
	b _0808BFD4
_0808BFA4: .4byte 0x00018A92
_0808BFA8: .4byte gUnk_03005CF4
_0808BFAC:
	adds r0, r4, #0
	bl sub_08058900
	ldr r2, [sp, #0x38]
	cmp r0, r2
	bne _0808BFD4
	adds r0, r4, #0
	bl sub_08058934
	ldr r1, [sp, #0x3c]
	cmp r0, r1
	bls _0808BFD4
	adds r0, r4, #0
	ldr r1, [sp, #0x38]
	bl sub_0805896C
	adds r0, r4, #0
	ldr r1, [sp, #0x3c]
	bl sub_080589A0
_0808BFD4:
	adds r0, r4, #1
	bl sub_08058A18
	cmp r4, #9
	bhi _0808BFF4
	ldr r0, _0808C018
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x36]
	ldr r0, _0808C01C
	ands r0, r1
	lsrs r4, r0, #8
	movs r0, #0xff
	ands r0, r1
	adds r1, r4, #0
	bl sub_080588C0
_0808BFF4:
	ldr r0, _0808C018
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #0x40]
	movs r0, #1
	strh r0, [r1, #0x36]
	movs r0, #0
	movs r1, #0x14
	bl sub_0801A664
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0808C018: .4byte gUnk_03005CF4
_0808C01C: .4byte 0x00007FFF
	thumb_func_end sub_0808B978
