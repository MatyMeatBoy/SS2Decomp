	thumb_func_start sub_0806BE24
sub_0806BE24: @ 0x0806BE24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x88
	str r0, [sp, #0x4c]
	bl sub_080020F4
	adds r6, r0, #0
	ldr r0, [sp, #0x4c]
	ldrh r0, [r0, #8]
	str r0, [sp, #0x60]
	ldr r1, [sp, #0x4c]
	ldr r1, [r1, #0]
	str r1, [sp, #0x78]
	ldr r2, [sp, #0x4c]
	ldr r2, [r2, #4]
	str r2, [sp, #0x7c]
	ldr r3, [sp, #0x4c]
	ldrh r3, [r3, #0x14]
	str r3, [sp, #0x68]
	str r3, [sp, #0x6c]
	str r3, [sp, #0x64]
	cmp r1, #3
	bhi _0806BE74
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r1, #0
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _0806BE70
	adds r1, r1, r0
	str r1, [sp, #0x58]
	lsls r5, r4, #2
	str r5, [sp, #0x80]
	b _0806BEF6
	.2byte 0x0000
_0806BE70: .4byte gUnk_03003CE0
_0806BE74:
	ldr r1, _0806BED0
	ldr r7, [sp, #0x78]
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #3
	subs r0, r0, r7
	lsls r0, r0, #5
	ldr r2, _0806BED4
	adds r0, r0, r2
	ldr r1, [r1, #0]
	adds r1, r1, r0
	str r1, [sp, #0x54]
	adds r0, r1, #0
	adds r0, #0x6a
	ldr r3, _0806BED8
	adds r1, r1, r3
	ldrh r0, [r0, #0]
	lsls r4, r7, #2
	str r4, [sp, #0x80]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bhi _0806BEF6
	ldr r0, _0806BEDC
	adds r4, r4, r0
	movs r0, #1
	ldr r5, [sp, #0x7c]
	lsls r0, r5
	mvns r5, r0
_0806BEAC:
	bl sub_08056E90
	cmp r0, #0
	bne _0806BEC8
	bl sub_0800BA6C
	cmp r0, #0
	beq _0806BEC8
	ldr r7, [sp, #0x54]
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0806BEC8
	cmp r0, #0xb
	bne _0806BEE0
_0806BEC8:
	ldr r0, [r4, #0]
	ands r0, r5
	str r0, [r4, #0]
	b _0806C542
_0806BED0: .4byte gUnk_030056F4
_0806BED4: .4byte 0xFFFFF480
_0806BED8: .4byte 0x0000022B
_0806BEDC: .4byte gUnk_030063E0
_0806BEE0:
	bl sub_080003F0
	ldr r0, [sp, #0x54]
	adds r0, #0x6a
	ldr r2, [sp, #0x54]
	ldr r3, _0806BF14
	adds r1, r2, r3
	ldrh r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bls _0806BEAC
_0806BEF6:
	add r0, sp, #0x48
	movs r1, #0
	strh r1, [r0, #0]
	mov r2, sp
	adds r2, #0x4a
	strh r1, [r2, #0]
	ldr r4, [sp, #0x68]
	cmp r4, #7
	bhi _0806BF5E
	lsls r0, r4, #2
	ldr r1, _0806BF18
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0806BF14: .4byte 0x0000022B
_0806BF18: .4byte _0806BF1C
_0806BF1C:
	.4byte _0806BF3C
_0806BF20: .4byte _0806BF42
_0806BF24: .4byte _0806BF48
_0806BF28: .4byte _0806BF4E
_0806BF2C: .4byte _0806BF54
_0806BF30: .4byte _0806BF5A
_0806BF34: .4byte _0806BF5A
_0806BF38: .4byte _0806BF5A
_0806BF3C:
	movs r5, #1
	str r5, [sp, #0x70]
	b _0806BF5E
_0806BF42:
	movs r7, #2
	str r7, [sp, #0x70]
	b _0806BF5E
_0806BF48:
	movs r0, #3
	str r0, [sp, #0x70]
	b _0806BF5E
_0806BF4E:
	movs r1, #4
	str r1, [sp, #0x70]
	b _0806BF5E
_0806BF54:
	movs r2, #5
	str r2, [sp, #0x70]
	b _0806BF5E
_0806BF5A:
	movs r3, #6
	str r3, [sp, #0x70]
_0806BF5E:
	ldr r4, [sp, #0x78]
	cmp r6, r4
	beq _0806BFB4
	cmp r4, #3
	bls _0806BFE6
	ldr r3, _0806BFAC
	ldr r5, [sp, #0x68]
	lsls r2, r5, #1
	ldr r7, [sp, #0x4c]
	ldr r1, [r7, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r3, #6
	adds r2, r2, r3
	ldr r3, [sp, #0x54]
	adds r3, #0x5e
	ldrh r0, [r3, #0]
	movs r4, #0
	ldrsh r1, [r2, r4]
	subs r0, r0, r1
	strh r0, [r3, #0]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0806BFE6
	ldr r2, _0806BFB0
	ldr r5, [sp, #0x80]
	adds r2, r5, r2
	movs r1, #1
	ldr r7, [sp, #0x7c]
	lsls r1, r7
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	movs r0, #0
	strh r0, [r3, #0]
	b _0806C542
	.2byte 0x0000
_0806BFAC: .4byte gUnk_084EBF1C
_0806BFB0: .4byte gUnk_030063E0
_0806BFB4:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _0806C040
	adds r4, r4, r0
	ldr r1, [sp, #0x4c]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x14]
	bl sub_0806898C
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, #0xc2
	ldrh r1, [r4, #0]
	subs r1, r1, r0
	strh r1, [r4, #0]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0806BFE6
	movs r0, #0
	strh r0, [r4, #0]
_0806BFE6:
	ldr r2, [sp, #0x60]
	cmp r2, #3
	bhi _0806C050
	bl sub_08002164
	adds r1, r0, #0
	movs r4, #0
	ldr r5, [sp, #0x68]
	subs r5, #1
	cmp r4, r1
	bhs _0806C032
	ldr r3, _0806C040
	str r3, [sp, #0x5c]
	ldrh r0, [r3, #0]
	ldr r6, _0806C044
	ldr r7, _0806C048
	mov r9, r7
	ldr r2, [sp, #0x60]
	cmp r0, r2
	beq _0806C02E
	movs r3, #0xa6
	lsls r3, r3, #1
	ldr r2, [sp, #0x5c]
_0806C014:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r1
	bhs _0806C032
	adds r0, r4, #0
	muls r0, r3, r0
	adds r0, r0, r2
	str r0, [sp, #0x5c]
	ldrh r0, [r0, #0]
	ldr r7, [sp, #0x60]
	cmp r0, r7
	bne _0806C014
_0806C02E:
	cmp r4, r1
	blo _0806C0B4
_0806C032:
	ldr r0, _0806C04C
	str r0, [sp, #0x60]
	ldr r6, _0806C044
	ldr r1, _0806C048
	mov r9, r1
	b _0806C0B4
	.2byte 0x0000
_0806C040: .4byte gUnk_03003CE0
_0806C044: .4byte gUnk_0847AD0A
_0806C048: .4byte gUnk_080B9704
_0806C04C: .4byte 0x0000FFFF
_0806C050:
	movs r4, #0
	ldr r3, _0806C06C
	ldr r2, [r3, #0]
	str r2, [sp, #0x50]
	ldr r2, _0806C070
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	ldr r6, _0806C074
	ldr r5, [sp, #0x68]
	subs r5, #1
	ldr r7, _0806C078
	mov r9, r7
	b _0806C09E
_0806C06C: .4byte gUnk_030056F4
_0806C070: .4byte gUnk_030056FC
_0806C074: .4byte gUnk_0847AD0A
_0806C078: .4byte gUnk_080B9704
_0806C07C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bhi _0806C0B0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	subs r0, r0, r4
	lsls r0, r0, #5
	ldr r1, [r3, #0]
	adds r1, r1, r0
	str r1, [sp, #0x50]
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0]
	ands r0, r1
_0806C09E:
	cmp r0, #0
	beq _0806C07C
	ldr r1, [sp, #0x50]
	ldrh r0, [r1, #2]
	ldr r7, [sp, #0x60]
	cmp r0, r7
	bne _0806C07C
	cmp r4, #4
	bls _0806C0B4
_0806C0B0:
	ldr r0, _0806C0D8
	str r0, [sp, #0x60]
_0806C0B4:
	ldr r1, [sp, #0x78]
	cmp r1, #3
	bhi _0806C0DC
	ldr r2, [sp, #0x58]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	mov r8, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r7, r0, #0xc
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	b _0806C0EA
_0806C0D8: .4byte 0x0000FFFF
_0806C0DC:
	ldr r4, [sp, #0x54]
	ldr r4, [r4, #0x14]
	mov r8, r4
	ldr r0, [sp, #0x54]
	ldr r7, [r0, #0x18]
	movs r1, #8
	ldrsh r0, [r0, r1]
_0806C0EA:
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r6, [r0, #0]
	ldr r2, [sp, #0x68]
	cmp r2, #7
	bhi _0806C174
	lsls r0, r2, #2
	ldr r1, _0806C100
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0806C100: .4byte _0806C104
_0806C104:
	.4byte _0806C124
_0806C108: .4byte _0806C12A
_0806C10C: .4byte _0806C12A
_0806C110: .4byte _0806C130
_0806C114: .4byte _0806C130
_0806C118: .4byte _0806C16E
_0806C11C: .4byte _0806C16E
_0806C120: .4byte _0806C16E
_0806C124:
	movs r3, #0x1e
	str r3, [sp, #0x64]
	b _0806C174
_0806C12A:
	movs r4, #0xb4
	str r4, [sp, #0x64]
	b _0806C174
_0806C130:
	movs r0, #0xf0
	str r0, [sp, #0x64]
	b _0806C174
_0806C136:
	ldr r2, _0806C144
	ldr r1, [sp, #0x80]
	adds r2, r1, r2
	movs r1, #1
	ldr r3, [sp, #0x7c]
	lsls r1, r3
	b _0806C53C
_0806C144: .4byte gUnk_030063E0
_0806C148:
	ldr r2, _0806C158
	ldr r4, [sp, #0x80]
	adds r2, r4, r2
	movs r1, #1
	ldr r5, [sp, #0x7c]
	lsls r1, r5
	b _0806C53C
	.2byte 0x0000
_0806C158: .4byte gUnk_030063E0
_0806C15C:
	ldr r0, [sp, #0x6c]
	str r0, [sp, #0]
	mov r0, r8
	adds r1, r7, #0
	ldr r2, [sp, #0x78]
	movs r3, #4
	bl sub_08069A30
	b _0806C530
_0806C16E:
	movs r1, #0x96
	lsls r1, r1, #1
	str r1, [sp, #0x64]
_0806C174:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	movs r0, #0x80
	lsls r0, r0, #8
	ldr r2, [sp, #0x68]
	ands r0, r2
	cmp r0, #0
	beq _0806C18A
	movs r3, #0
	str r3, [sp, #0x68]
_0806C18A:
	lsls r3, r6, #0x10
	asrs r2, r3, #0x10
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r9
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	add r8, r0
	lsls r2, r2, #1
	add r2, r9
	movs r5, #0
	ldrsh r1, [r2, r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r7, r7, r0
	str r3, [sp, #0x84]
	ldr r0, [sp, #0x78]
	cmp r0, #3
	bhi _0806C232
	ldr r5, [sp, #0x58]
	adds r5, #0xb2
	ldr r1, [sp, #0x6c]
	cmp r1, #0
	beq _0806C1C4
	movs r0, #1
	strh r0, [r5, #0]
_0806C1C4:
	ldrh r0, [r5, #0]
	cmp r0, #1
	beq _0806C20E
	ldr r0, _0806C1FC
	ldr r2, [sp, #0x80]
	adds r4, r2, r0
	movs r0, #1
	ldr r3, [sp, #0x7c]
	lsls r0, r3
	mvns r0, r0
	mov r9, r0
_0806C1DA:
	ldr r1, [sp, #0x58]
	ldrh r0, [r1, #0x20]
	cmp r0, #0xa
	beq _0806C1F0
	ldr r0, _0806C200
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0806C204
_0806C1F0:
	ldr r0, [r4, #0]
	mov r2, r9
	ands r0, r2
	str r0, [r4, #0]
	b _0806C542
	.2byte 0x0000
_0806C1FC: .4byte gUnk_030063E0
_0806C200: .4byte gUnk_03005CF4
_0806C204:
	bl sub_080003F0
	ldrh r0, [r5, #0]
	cmp r0, #1
	bne _0806C1DA
_0806C20E:
	bl sub_080020F4
	ldr r3, [sp, #0x78]
	cmp r0, r3
	bne _0806C232
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806C232
	bl sub_0800CD34
	cmp r0, #0
	bne _0806C232
	ldr r4, [sp, #0x68]
	ldr r5, _0806C254
	adds r0, r4, r5
	bl sub_0805865C
_0806C232:
	movs r0, #0
	str r0, [sp, #0x74]
	ldr r1, _0806C258
	movs r3, #1
	negs r3, r3
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	add r1, sp, #0x10
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	b _0806C4F6
	.2byte 0x0000
_0806C254: .4byte 0x00000123
_0806C258: .4byte 0x00050097
_0806C25C:
	ldr r1, [sp, #0x74]
	cmp r1, #0
	bne _0806C2E4
	mov r0, r8
	adds r1, r7, #0
	ldr r2, [sp, #0x4c]
	bl sub_08068A00
	cmp r0, #0
	beq _0806C2E4
	ldr r2, [sp, #0x60]
	cmp r2, #3
	bhi _0806C2AE
	ldr r3, [sp, #0x5c]
	ldrh r0, [r3, #0x20]
	cmp r0, #0xa
	beq _0806C2E4
	ldr r0, [sp, #0x70]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
	cmp r0, #0
	bne _0806C28E
	b _0806C136
_0806C28E:
	ldr r4, [sp, #0x78]
	cmp r4, #3
	bhi _0806C2A0
	ldr r1, [sp, #0x58]
	adds r1, #0xdc
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	b _0806C2A8
_0806C2A0:
	ldr r5, [sp, #0x54]
	ldr r0, [r5, #0x50]
	adds r0, #1
	str r0, [r5, #0x50]
_0806C2A8:
	movs r0, #0xa
	str r0, [sp, #0x74]
	b _0806C2E4
_0806C2AE:
	ldr r1, [sp, #0x50]
	ldrh r0, [r1, #0xc]
	cmp r0, #0xa
	beq _0806C2E4
	ldr r0, [sp, #0x70]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
	cmp r0, #0
	bne _0806C2C6
	b _0806C148
_0806C2C6:
	ldr r2, [sp, #0x78]
	cmp r2, #3
	bhi _0806C2D8
	ldr r1, [sp, #0x58]
	adds r1, #0xdc
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	b _0806C2E0
_0806C2D8:
	ldr r3, [sp, #0x54]
	ldr r0, [r3, #0x50]
	adds r0, #1
	str r0, [r3, #0x50]
_0806C2E0:
	movs r4, #0xa
	str r4, [sp, #0x74]
_0806C2E4:
	ldr r0, [sp, #0x74]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x74]
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0806C2FE
	movs r0, #0
	str r0, [sp, #0x74]
_0806C2FE:
	ldr r4, _0806C340
	ldr r1, [sp, #0x60]
	cmp r1, r4
	beq _0806C3F0
	ldr r2, [sp, #0x74]
	cmp r2, #0
	bne _0806C3F0
	cmp r1, #3
	bhi _0806C344
	ldr r3, [sp, #0x5c]
	movs r5, #0xa4
	lsls r5, r5, #1
	adds r0, r3, r5
	ldr r2, [r0, #0]
	ldrh r1, [r2, #0]
	lsrs r1, r1, #4
	mov r3, r8
	asrs r0, r3, #8
	subs r1, r1, r0
	add r3, sp, #0x44
	strh r1, [r3, #0]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	asrs r1, r7, #8
	subs r0, r0, r1
	mov r1, sp
	adds r1, #0x46
	strh r0, [r1, #0]
	ldr r5, [sp, #0x5c]
	ldrh r0, [r5, #0x20]
	mov r9, r3
	b _0806C364
_0806C340: .4byte 0x0000FFFF
_0806C344:
	ldr r1, [sp, #0x50]
	ldr r0, [r1, #0x14]
	mov r2, r8
	subs r0, r0, r2
	lsrs r0, r0, #8
	add r2, sp, #0x44
	strh r0, [r2, #0]
	ldr r0, [r1, #0x18]
	subs r0, r0, r7
	lsrs r0, r0, #8
	mov r1, sp
	adds r1, #0x46
	strh r0, [r1, #0]
	ldr r3, [sp, #0x50]
	ldrh r0, [r3, #0xc]
	mov r9, r2
_0806C364:
	mov sl, r1
	cmp r0, #0xb
	bne _0806C36C
	str r4, [sp, #0x60]
_0806C36C:
	mov r4, r9
	movs r5, #0
	ldrsh r0, [r4, r5]
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x18
	adds r1, r2, #0
	ldr r4, [sp, #0x84]
	asrs r0, r4, #0x10
	subs r3, r1, r0
	cmp r3, #0x80
	ble _0806C39C
	ldr r5, _0806C398
	adds r0, r5, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _0806C3AE
_0806C398: .4byte 0xFFFFFF00
_0806C39C:
	movs r0, #0x80
	negs r0, r0
	cmp r3, r0
	bge _0806C3AE
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	adds r2, r0, #0
	orrs r2, r1
_0806C3AE:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r4, r6, #0x10
	asrs r4, r4, #0x10
	subs r0, r0, r4
	movs r1, #7
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	asrs r0, r4, #0x10
	cmp r0, #0
	bge _0806C3D8
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0806C3D8:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #1
	cmp r0, r4
	ble _0806C3EC
	ldr r5, _0806C554
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0806C3EC:
	movs r0, #0xff
	ands r6, r0
_0806C3F0:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #0
	bl sub_0800AE50
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r4, #0xf
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _0806C412
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0806C412
	b _0806C15C
_0806C412:
	ldr r2, _0806C558
	lsls r3, r6, #0x10
	asrs r1, r3, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r0, [r0, r5]
	add r8, r0
	lsls r0, r1, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r7, r7, r0
	ands r1, r4
	str r3, [sp, #0x84]
	mov r3, r8
	asrs r5, r3, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	asrs r4, r7, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x10
	ldr r1, [sp, #0x68]
	add r2, sp, #0x48
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	bl sub_0800CC98
	add r1, sp, #0x44
	mov r9, r1
	movs r2, #0x46
	add r2, sp
	mov sl, r2
	cmp r0, #0
	bne _0806C4F2
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806C4F2
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806C4F2
	ldr r0, _0806C55C
	ldr r0, [r0, #0]
	ands r0, r4
	cmp r0, #0
	bne _0806C4AA
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_0806C4AA:
	ldr r0, _0806C560
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _0806C4BE
	bl sub_0800CDC0
	cmp r0, #0
	beq _0806C4BE
	movs r5, #0
_0806C4BE:
	ldr r0, _0806C55C
	ldr r1, [r0, #0]
	movs r2, #1
	ands r1, r2
	ldr r0, [sp, #0x78]
	ands r0, r2
	cmp r1, r0
	bne _0806C4F2
	mov r3, r9
	movs r4, #0
	ldrsh r0, [r3, r4]
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r4, sp, #0x48
	ldrh r3, [r4, #0]
	str r5, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x68]
	bl sub_08007870
_0806C4F2:
	bl sub_080003F0
_0806C4F6:
	ldr r1, [sp, #0x64]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	cmp r1, #0
	beq _0806C530
	bl sub_0800BA6C
	cmp r0, #0
	beq _0806C530
	bl sub_080020F4
	ldr r5, [sp, #0x78]
	cmp r5, r0
	beq _0806C518
	b _0806C25C
_0806C518:
	ldr r1, [sp, #0x58]
	ldrh r0, [r1, #0x20]
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0806C530
	bl sub_0800D11C
	cmp r0, #0
	bne _0806C530
	b _0806C25C
_0806C530:
	ldr r2, _0806C564
	ldr r3, [sp, #0x80]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x7c]
	lsls r1, r4
_0806C53C:
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
_0806C542:
	add sp, #0x88
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0806C554: .4byte 0xFFFFFF00
_0806C558: .4byte gUnk_080B9704
_0806C55C: .4byte gUnk_03002344
_0806C560: .4byte gUnk_03003170
_0806C564: .4byte gUnk_030063E0
	thumb_func_end sub_0806BE24
