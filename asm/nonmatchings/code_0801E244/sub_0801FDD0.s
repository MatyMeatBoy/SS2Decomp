	thumb_func_start sub_0801FDD0
sub_0801FDD0: @ 0x0801FDD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov r8, r0
	bl sub_0805AD18
	str r0, [sp, #0x18]
	ldr r4, _0801FE28
	adds r0, r4, #0
	ldr r1, [sp, #0x18]
	movs r2, #0xc4
	bl memcpy
	adds r4, #0xbc
	ldrh r0, [r4, #0]
	cmp r0, #0
	bne _0801FE0C
	ldr r0, _0801FE2C
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, #0x77
	ldrb r0, [r1, #0]
	strh r0, [r4, #0]
_0801FE0C:
	mov r0, r8
	adds r0, #0x8c
	ldr r1, [r0, #4]
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, r8
	ldrh r0, [r1, #0x20]
	cmp r0, #2
	beq _0801FE30
	cmp r0, #5
	beq _0801FEB8
	bl _08020670
_0801FE28: .4byte gUnk_03000060
_0801FE2C: .4byte gUnk_030034E0
_0801FE30:
	movs r0, #0x91
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0, #0]
	cmp r0, #0xf
	bhi _0801FE48
	mov r2, r8
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x30]
_0801FE48:
	mov r0, r8
	adds r0, #0x64
	ldrh r0, [r0, #0]
	cmp r0, #9
	bls _0801FE62
	movs r0, #0x9c
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0, #0]
	mov r1, r8
	adds r1, #0xb2
	ldrh r0, [r0, #0x24]
	b _0801FE74
_0801FE62:
	ldr r4, _0801FEB0
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r4
	mov r1, r8
	adds r1, #0xb2
	ldrh r0, [r0, #0]
_0801FE74:
	ldrh r1, [r1, #0]
	cmp r0, r1
	beq _0801FE7E
	bl _08020670
_0801FE7E:
	mov r0, r8
	adds r0, #0xb4
	ldrh r0, [r0, #0]
	cmp r0, #1
	beq _0801FE8C
	bl _08020670
_0801FE8C:
	mov r3, r8
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0801FEA4
	ldr r1, _0801FEB4
	adds r1, #0xa9
	ldrb r0, [r1, #0]
	adds r0, #0x18
	strb r0, [r1, #0]
_0801FEA4:
	mov r4, r8
	movs r0, #0x3a
	ldrsh r4, [r4, r0]
	str r4, [sp, #0x20]
	b _0802023E
	.2byte 0x0000
_0801FEB0: .4byte gUnk_0849E760
_0801FEB4: .4byte gUnk_03000060
_0801FEB8:
	mov r2, r8
	movs r3, #0x3a
	ldrsh r1, [r2, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	str r0, [sp, #0x20]
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0801FED2
	b _08020670
_0801FED2:
	lsls r0, r0, #2
	ldr r1, _0801FEDC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801FEDC: .4byte _0801FEE0
_0801FEE0:
	.4byte _0801FF00
_0801FEE4: .4byte _08020164
_0801FEE8: .4byte _08020670
_0801FEEC: .4byte _0801FF84
_0801FEF0: .4byte _0802004C
_0801FEF4: .4byte _080200E8
_0801FEF8: .4byte _080201C0
_0801FEFC: .4byte _08020228
_0801FF00:
	ldr r0, _0801FF50
	mov r1, r8
	adds r1, #0xb2
	ldrh r0, [r0, #0]
	ldrh r1, [r1, #0]
	cmp r0, r1
	bls _0801FF10
	b _08020670
_0801FF10:
	mov r0, r8
	adds r0, #0xb4
	ldrh r0, [r0, #0]
	cmp r0, #1
	beq _0801FF1C
	b _08020670
_0801FF1C:
	ldr r2, _0801FF54
	adds r0, r2, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #2
	bne _0801FF5C
	ldr r0, _0801FF58
	ldrb r1, [r0, #0]
	adds r3, r2, #0
	adds r3, #0xa5
	strb r1, [r3, #0]
	ldrb r1, [r0, #1]
	adds r3, #1
	strb r1, [r3, #0]
	ldrb r1, [r0, #2]
	adds r3, #1
	strb r1, [r3, #0]
	ldrb r1, [r0, #3]
	adds r0, r2, #0
	adds r0, #0xa8
	strb r1, [r0, #0]
	adds r1, r2, #0
	adds r1, #0xa9
	ldrb r0, [r1, #0]
	adds r0, #0xa
	b _0802023C
_0801FF50: .4byte gUnk_0849E770
_0801FF54: .4byte gUnk_03000060
_0801FF58: .4byte gUnk_0848FEEC
_0801FF5C:
	cmp r0, #1
	bne _0801FF74
	adds r1, r2, #0
	adds r1, #0xa9
	ldrb r0, [r1, #0]
	adds r0, #8
	strb r0, [r1, #0]
	ldr r0, _0801FF70
	b _08020140
	.2byte 0x0000
_0801FF70: .4byte gUnk_0848FEE4
_0801FF74:
	cmp r0, #3
	beq _0801FF7A
	b _0802023E
_0801FF7A:
	ldr r0, _0801FF80
	b _08020140
	.2byte 0x0000
_0801FF80: .4byte gUnk_0848FEE8
_0801FF84:
	ldr r0, _0801FFD4
	mov r1, r8
	adds r1, #0xb2
	ldrh r0, [r0, #6]
	ldrh r1, [r1, #0]
	cmp r0, r1
	bls _0801FF94
	b _08020670
_0801FF94:
	mov r0, r8
	adds r0, #0xb4
	ldrh r0, [r0, #0]
	cmp r0, #1
	beq _0801FFA0
	b _08020670
_0801FFA0:
	ldr r2, _0801FFD8
	adds r0, r2, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #2
	bne _0801FFE0
	ldr r0, _0801FFDC
	ldrb r1, [r0, #0]
	adds r3, r2, #0
	adds r3, #0xa5
	strb r1, [r3, #0]
	ldrb r1, [r0, #1]
	adds r3, #1
	strb r1, [r3, #0]
	ldrb r1, [r0, #2]
	adds r3, #1
	strb r1, [r3, #0]
	ldrb r1, [r0, #3]
	adds r0, r2, #0
	adds r0, #0xa8
	strb r1, [r0, #0]
	adds r1, r2, #0
	adds r1, #0xa9
	ldrb r0, [r1, #0]
	adds r0, #0xa
	b _0802023C
_0801FFD4: .4byte gUnk_0849E770
_0801FFD8: .4byte gUnk_03000060
_0801FFDC: .4byte gUnk_0848FF38
_0801FFE0:
	cmp r0, #4
	beq _0801FFE6
	b _0802023E
_0801FFE6:
	cmp r1, #4
	bhi _08020044
	adds r1, r2, #0
	adds r1, #0xa9
	movs r0, #0
	strb r0, [r1, #0]
	ldr r0, _0802003C
	ldrb r1, [r0, #0]
	adds r3, r2, #0
	adds r3, #0xa5
	strb r1, [r3, #0]
	ldrb r1, [r0, #1]
	adds r3, #1
	strb r1, [r3, #0]
	ldrb r1, [r0, #2]
	adds r3, #1
	strb r1, [r3, #0]
	ldrb r1, [r0, #3]
	adds r0, r2, #0
	adds r0, #0xa8
	strb r1, [r0, #0]
	ldr r2, _08020040
	mov r4, r8
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r0, [r0, #0]
	lsls r0, r0, #8
	ldr r1, [sp, #8]
	adds r0, r0, r1
	str r0, [sp, #8]
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	lsls r0, r0, #3
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0, #0]
	lsls r0, r0, #8
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	b _0802023E
_0802003C: .4byte gUnk_0848FF30
_08020040: .4byte gUnk_0848FEF0
_08020044:
	ldr r0, _08020048
	b _08020140
_08020048: .4byte gUnk_0848FF34
_0802004C:
	ldr r5, _08020084
	adds r0, r5, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #4
	bne _0802008C
	mov r0, r8
	adds r0, #0xb2
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _08020068
	cmp r0, #3
	beq _08020068
	b _08020670
_08020068:
	ldr r0, _08020088
	ldrb r1, [r0, #0]
	adds r2, r5, #0
	adds r2, #0xa5
	strb r1, [r2, #0]
	ldrb r1, [r0, #1]
	adds r2, #1
	strb r1, [r2, #0]
	ldrb r1, [r0, #2]
	adds r2, #1
	strb r1, [r2, #0]
	ldrb r1, [r0, #3]
	adds r0, r5, #0
	b _08020158
_08020084: .4byte gUnk_03000060
_08020088: .4byte gUnk_0848FF3C
_0802008C:
	cmp r0, #5
	beq _08020092
	b _0802023E
_08020092:
	ldr r4, _080200E0
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r4
	mov r1, r8
	adds r1, #0xb2
	ldrh r0, [r0, #0]
	ldrh r1, [r1, #0]
	cmp r0, r1
	bls _080200AC
	b _08020670
_080200AC:
	mov r0, r8
	adds r0, #0xb4
	ldrh r0, [r0, #0]
	cmp r0, #1
	beq _080200B8
	b _08020670
_080200B8:
	adds r1, r5, #0
	adds r1, #0xa9
	ldrb r0, [r1, #0]
	adds r0, #0x10
	strb r0, [r1, #0]
	ldr r0, _080200E4
	ldrb r1, [r0, #0]
	adds r2, r5, #0
	adds r2, #0xa5
	strb r1, [r2, #0]
	ldrb r1, [r0, #1]
	adds r2, #1
	strb r1, [r2, #0]
	ldrb r1, [r0, #2]
	adds r2, #1
	strb r1, [r2, #0]
	ldrb r1, [r0, #3]
	adds r0, r5, #0
	b _08020158
	.2byte 0x0000
_080200E0: .4byte gUnk_0849E770
_080200E4: .4byte gUnk_0848FF40
_080200E8:
	ldr r2, _0802010C
	adds r0, r2, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #6
	bne _08020138
	mov r0, r8
	adds r0, #0xb2
	ldrh r0, [r0, #0]
	cmp r0, #1
	bne _08020110
	mov r0, r8
	adds r0, #0xb4
	ldrh r0, [r0, #0]
	cmp r0, #1
	beq _0802010A
	b _08020670
_0802010A:
	b _0802023E
_0802010C: .4byte gUnk_03000060
_08020110:
	ldr r0, _08020134
	ldrb r1, [r0, #0]
	adds r3, r2, #0
	adds r3, #0xa5
	strb r1, [r3, #0]
	ldrb r1, [r0, #1]
	adds r3, #1
	strb r1, [r3, #0]
	ldrb r1, [r0, #2]
	adds r3, #1
	strb r1, [r3, #0]
	ldrb r1, [r0, #3]
	adds r0, r2, #0
	adds r0, #0xa8
	strb r1, [r0, #0]
	adds r1, r2, #0
	b _08020236
	.2byte 0x0000
_08020134: .4byte gUnk_0848FF44
_08020138:
	cmp r0, #8
	beq _0802013E
	b _0802023E
_0802013E:
	ldr r0, _08020160
_08020140:
	ldrb r1, [r0, #0]
	adds r3, r2, #0
	adds r3, #0xa5
	strb r1, [r3, #0]
	ldrb r1, [r0, #1]
	adds r3, #1
	strb r1, [r3, #0]
	ldrb r1, [r0, #2]
	adds r3, #1
	strb r1, [r3, #0]
	ldrb r1, [r0, #3]
	adds r0, r2, #0
_08020158:
	adds r0, #0xa8
	strb r1, [r0, #0]
	b _0802023E
	.2byte 0x0000
_08020160: .4byte gUnk_0848FF48
_08020164:
	mov r0, r8
	adds r0, #0xb2
	ldrh r0, [r0, #0]
	cmp r0, #5
	beq _0802017E
	cmp r0, #5
	bgt _08020178
	cmp r0, #2
	beq _0802017E
	b _08020670
_08020178:
	cmp r0, #7
	beq _0802017E
	b _08020670
_0802017E:
	mov r0, r8
	adds r0, #0xb4
	ldrh r0, [r0, #0]
	cmp r0, #1
	beq _0802018A
	b _08020670
_0802018A:
	ldr r2, _080201B8
	ldr r0, _080201BC
	ldrb r1, [r0, #0]
	adds r3, r2, #0
	adds r3, #0xa5
	strb r1, [r3, #0]
	ldrb r1, [r0, #1]
	adds r3, #1
	strb r1, [r3, #0]
	ldrb r1, [r0, #2]
	adds r3, #1
	strb r1, [r3, #0]
	ldrb r1, [r0, #3]
	adds r0, r2, #0
	adds r0, #0xa8
	strb r1, [r0, #0]
	subs r0, #0xd
	ldrb r0, [r0, #0]
	cmp r0, #5
	beq _080201B4
	b _08020670
_080201B4:
	b _0802023E
	.2byte 0x0000
_080201B8: .4byte gUnk_03000060
_080201BC: .4byte gUnk_0848FF4C
_080201C0:
	ldr r4, _0802021C
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r4
	mov r1, r8
	adds r1, #0xb2
	ldrh r0, [r0, #0]
	ldrh r1, [r1, #0]
	cmp r0, r1
	bls _080201DA
	b _08020670
_080201DA:
	mov r0, r8
	adds r0, #0xb4
	ldrh r0, [r0, #0]
	cmp r0, #1
	beq _080201E6
	b _08020670
_080201E6:
	ldr r2, _08020220
	adds r0, r2, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #5
	beq _080201F4
	b _08020670
_080201F4:
	ldr r0, _08020224
	ldrb r1, [r0, #0]
	adds r3, r2, #0
	adds r3, #0xa5
	strb r1, [r3, #0]
	ldrb r1, [r0, #1]
	adds r3, #1
	strb r1, [r3, #0]
	ldrb r1, [r0, #2]
	adds r3, #1
	strb r1, [r3, #0]
	ldrb r1, [r0, #3]
	adds r0, r2, #0
	adds r0, #0xa8
	strb r1, [r0, #0]
	adds r1, r2, #0
	adds r1, #0xa9
	ldrb r0, [r1, #0]
	adds r0, #0x10
	b _0802023C
_0802021C: .4byte gUnk_0849E770
_08020220: .4byte gUnk_03000060
_08020224: .4byte gUnk_0848FF50
_08020228:
	mov r0, r8
	adds r0, #0xb2
	ldrh r0, [r0, #0]
	cmp r0, #4
	beq _08020234
	b _08020670
_08020234:
	ldr r1, _08020258
_08020236:
	adds r1, #0xa9
	ldrb r0, [r1, #0]
	adds r0, #8
_0802023C:
	strb r0, [r1, #0]
_0802023E:
	mov r0, r8
	bl sub_0801FD64
	mov r4, r8
	ldrh r4, [r4, #0x1c]
	str r4, [sp, #0x1c]
	movs r0, #0
	mov sl, r0
	mov r1, r8
	adds r1, #0x68
	str r1, [sp, #0x24]
	b _0802039E
	.2byte 0x0000
_08020258: .4byte gUnk_03000060
_0802025C:
	ldr r0, _08020354
	movs r2, #1
	mov r9, r2
	mov r1, r9
	mov r3, sl
	lsls r1, r3
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	bne _08020272
	b _0802039A
_08020272:
	ldr r1, _08020358
	lsls r0, r3, #1
	add r0, sl
	lsls r0, r0, #3
	subs r0, r0, r3
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r5, r1, r0
	ldrh r0, [r5, #0xc]
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08020290
	b _0802039A
_08020290:
	mov r7, r8
	adds r7, #0xdc
	ldr r1, [r7, #0]
	ldr r0, [r5, #0x54]
	eors r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r1, r0, #0x1f
	movs r4, #0xee
	lsls r4, r4, #1
	adds r0, r5, r4
	ldrb r0, [r0, #0]
	ldr r2, [sp, #0x24]
	ldrb r2, [r2, #0]
	cmp r0, r2
	bne _080202B2
	movs r1, #0
_080202B2:
	cmp r0, #0
	bne _080202B8
	movs r1, #0
_080202B8:
	cmp r1, #0
	beq _0802039A
	ldr r6, _0802035C
	ldr r1, [sp, #0x1c]
	adds r3, r5, #0
	adds r3, #0x14
	ldr r4, _08020360
	adds r0, r5, r4
	ldrb r0, [r0, #0]
	str r0, [sp, #0]
	ldr r2, _08020364
	adds r0, r5, r2
	ldrb r0, [r0, #0]
	str r0, [sp, #4]
	adds r0, r6, #0
	add r2, sp, #8
	bl sub_0801F024
	cmp r0, #0
	beq _0802039A
	subs r4, #0x28
	adds r3, r5, r4
	ldr r0, [sp, #0x20]
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	adds r2, #0xa
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r4, #0
	ldrsh r2, [r3, r4]
	adds r1, r1, r2
	adds r1, #0x14
	bl __divsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080008C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0
	cmp r4, r0
	blt _08020326
	movs r1, #1
_08020326:
	cmp r1, #0
	beq _08020368
	mov r0, r8
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_0801F374
	movs r0, #0x1a
	bl sub_0805865C
	mov r1, r8
	ldr r0, [r1, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0802039A
	ldrh r0, [r5, #0]
	adds r0, #4
	bl sub_08022100
	b _0802039A
_08020354: .4byte gUnk_030056FC
_08020358: .4byte gUnk_030056F4
_0802035C: .4byte gUnk_03000060
_08020360: .4byte 0x0000022E
_08020364: .4byte 0x0000022F
_08020368:
	bl sub_0800086C
	mov r1, r9
	ands r1, r0
	cmp r1, #0
	bne _08020388
	mov r0, r8
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_0801F374
	movs r0, #0x1a
	bl sub_0805865C
	b _0802039A
_08020388:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	bl sub_080223F4
	ldr r0, [r7, #0]
	str r0, [r5, #0x54]
	movs r0, #0x55
	bl sub_0805865C
_0802039A:
	movs r2, #1
	add sl, r2
_0802039E:
	mov r3, sl
	cmp r3, #4
	bhi _080203AE
	bl sub_0800CD8C
	cmp r0, #0
	bne _080203AE
	b _0802025C
_080203AE:
	ldr r0, _080203BC
	ldr r0, [r0, #0]
	ldr r4, _080203C0
	adds r7, r0, r4
	movs r1, #0
	mov sl, r1
	b _080204CA
_080203BC: .4byte gUnk_03005CF4
_080203C0: .4byte 0x0000058C
_080203C4:
	ldrh r0, [r7, #0x14]
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _080204C0
	ldr r2, [r7, #0x20]
	ldrb r0, [r2, #6]
	movs r3, #3
	mov r9, r3
	mov r4, r9
	ands r4, r0
	mov r9, r4
	cmp r4, #0
	bne _080204C0
	ldr r0, [sp, #0x1c]
	lsls r1, r0, #0x10
	ldrh r0, [r2, #0xc]
	str r0, [sp, #0]
	ldr r0, [r7, #0x20]
	ldrh r0, [r0, #0xe]
	str r0, [sp, #4]
	ldr r0, _080204A0
	lsrs r1, r1, #0x10
	add r2, sp, #8
	adds r3, r7, #0
	bl sub_0801F024
	cmp r0, #0
	beq _080204C0
	mov r0, r8
	adds r0, #0x58
	ldrh r5, [r0, #0]
	ldr r0, [r7, #0x20]
	ldrh r6, [r0, #2]
	bl sub_080008C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x32
	bl __umodsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	movs r1, #0xc8
	lsls r1, r1, #0xf
	adds r4, r4, r1
	lsrs r4, r4, #0x10
	adds r1, r5, #0
	muls r1, r5, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r5, r5, r6
	adds r1, r5, #0
	bl __divsi3
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r5, #0xa
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08020454
	movs r0, #1
_08020454:
	adds r4, r0, #0
	ldrh r0, [r7, #0x10]
	subs r0, r0, r4
	strh r0, [r7, #0x10]
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r7, #0x12]
	bl sub_0801DE60
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r0, sl
	adds r1, r4, #0
	bl sub_08028368
	ldrh r0, [r7, #0x10]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0802048A
	mov r3, r9
	strh r3, [r7, #0x10]
_0802048A:
	strh r5, [r7, #0x14]
	ldr r0, [r7, #0x20]
	ldrb r0, [r0, #7]
	cmp r0, #1
	beq _080204B2
	cmp r0, #1
	bgt _080204A4
	cmp r0, #0
	beq _080204AA
	b _080204C0
	.2byte 0x0000
_080204A0: .4byte gUnk_03000060
_080204A4:
	cmp r0, #2
	beq _080204BA
	b _080204C0
_080204AA:
	movs r0, #0x29
	bl sub_0805865C
	b _080204C0
_080204B2:
	movs r0, #0x2a
	bl sub_0805865C
	b _080204C0
_080204BA:
	movs r0, #0x2b
	bl sub_0805865C
_080204C0:
	movs r4, #1
	add sl, r4
	adds r7, #0x24
	ldr r0, _080204F0
	ldr r0, [r0, #0]
_080204CA:
	ldr r0, [r0, #0x48]
	cmp sl, r0
	bhs _080204D2
	b _080203C4
_080204D2:
	ldr r1, [sp, #0x24]
	ldrb r0, [r1, #0]
	cmp r0, #2
	bhi _080204DC
	b _08020670
_080204DC:
	ldr r2, _080204F4
	mov r9, r2
	movs r3, #0
	mov sl, r3
	mov r6, r9
	adds r6, #0xf8
	mov r4, r9
	adds r4, #0x68
	str r4, [sp, #0x28]
	b _0802065E
_080204F0: .4byte gUnk_03005CF4
_080204F4: .4byte gUnk_03003CE0
_080204F8:
	cmp r9, r8
	bne _080204FE
	b _0802064C
_080204FE:
	ldr r1, [sp, #0x28]
	ldrb r0, [r1, #0]
	cmp r0, #2
	bhi _08020508
	b _0802064C
_08020508:
	ldr r2, [sp, #0x24]
	ldrb r2, [r2, #0]
	cmp r0, r2
	bne _08020512
	b _0802064C
_08020512:
	cmp r0, #0
	bne _08020518
	b _0802064C
_08020518:
	ldr r2, [r6, #0x50]
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	bne _08020526
	b _0802064C
_08020526:
	subs r0, #0xb
	cmp r0, #1
	bhi _0802052E
	b _0802064C
_0802052E:
	mov r5, r8
	adds r5, #0xdc
	mov r3, r8
	ldrh r0, [r3, #0]
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r1, [r5, #0]
	ldr r0, [r0, #0]
	eors r1, r0
	negs r0, r1
	orrs r0, r1
	cmp r0, #0
	blt _0802054A
	b _0802064C
_0802054A:
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x50]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	add r3, sp, #0x10
	str r0, [r3, #4]
	ldr r7, _080205CC
	ldr r4, [sp, #0x1c]
	lsls r1, r4, #0x10
	movs r0, #0x10
	str r0, [sp, #0]
	movs r0, #0x20
	str r0, [sp, #4]
	adds r0, r7, #0
	lsrs r1, r1, #0x10
	add r2, sp, #8
	bl sub_0801F024
	cmp r0, #0
	beq _0802060E
	ldr r0, [sp, #0x20]
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	adds r2, #0xa
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	mov r3, r9
	movs r4, #0x3a
	ldrsh r2, [r3, r4]
	adds r1, r1, r2
	adds r1, #0x14
	bl __divsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080008C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0
	cmp r4, r0
	blt _080205BE
	movs r1, #1
_080205BE:
	cmp r1, #0
	beq _080205D0
	mov r0, r8
	mov r1, r9
	adds r2, r7, #0
	movs r3, #0
	b _080205E4
_080205CC: .4byte gUnk_03000060
_080205D0:
	bl sub_0800086C
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _080205F0
	mov r0, r8
	mov r1, r9
	adds r2, r7, #0
	movs r3, #1
_080205E4:
	bl sub_0801F79C
	movs r0, #0x1a
	bl sub_0805865C
	b _0802064C
_080205F0:
	ldr r1, [sp, #0x28]
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x28]
	bl sub_080223F4
	mov r2, r8
	ldrh r0, [r2, #0]
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r1, [r5, #0]
	str r1, [r0, #0]
	movs r0, #0x55
	bl sub_0805865C
	b _0802064C
_0802060E:
	ldr r0, [sp, #0x18]
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #3
	beq _0802062E
	cmp r0, #8
	bne _08020640
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	beq _0802064C
	mov r3, r8
	ldrh r0, [r3, #0]
	b _08020644
_0802062E:
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _0802064C
	mov r4, r8
	ldrh r0, [r4, #0]
	b _08020644
_08020640:
	mov r1, r8
	ldrh r0, [r1, #0]
_08020644:
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r1, [r5, #0]
	str r1, [r0, #0]
_0802064C:
	movs r2, #1
	add sl, r2
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r6, r6, r3
	ldr r4, [sp, #0x28]
	adds r4, r4, r3
	str r4, [sp, #0x28]
	add r9, r3
_0802065E:
	bl sub_08002164
	cmp sl, r0
	bhs _08020670
	bl sub_0800CD8C
	cmp r0, #0
	bne _08020670
	b _080204F8
_08020670:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0801FDD0
