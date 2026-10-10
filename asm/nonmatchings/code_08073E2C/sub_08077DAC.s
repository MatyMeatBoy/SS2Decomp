	thumb_func_start sub_08077DAC
sub_08077DAC: @ 0x08077DAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x90
	str r0, [sp, #0x5c]
	adds r6, r1, #0
	bl sub_080020F4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x80]
	ldr r1, [sp, #0x5c]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #5
	ldr r2, _08077E5C
	ldr r1, [r2, #0]
	adds r1, r1, r0
	mov r8, r1
	ldr r4, _08077E60
	movs r5, #0xb6
	lsls r5, r5, #2
	add r5, r8
	ldrh r0, [r5, #0]
	adds r0, #0xa
	movs r3, #0x58
	mov sl, r3
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r4, #0x2c
	adds r0, r0, r4
	ldr r1, [r0, #0]
	subs r3, #0x59
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	ldrh r0, [r5, #0]
	ldr r1, _08077E64
	add r1, r8
	ldrh r1, [r1, #0]
	bl sub_08019D7C
	add r1, sp, #0x10
	strb r0, [r1, #0x1c]
	ldrh r0, [r5, #0]
	adds r0, #0xa
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r4
	ldr r1, [r0, #0]
	ldr r0, _08077E68
	movs r3, #8
	str r3, [sp, #0x68]
	cmp r1, r0
	bne _08077E30
	movs r4, #0x10
	str r4, [sp, #0x68]
_08077E30:
	movs r5, #3
	str r5, [sp, #0x70]
	movs r0, #0xf
	adds r1, r6, #0
	ands r1, r0
	str r1, [sp, #0x64]
	lsrs r6, r6, #0x10
	cmp r6, #3
	bls _08077E70
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #3
	subs r0, r0, r6
	lsls r0, r0, #5
	ldr r2, _08077E6C
	adds r0, r0, r2
	ldr r3, _08077E5C
	ldr r1, [r3, #0]
	adds r7, r1, r0
	str r6, [sp, #0x60]
	b _08077E84
	.2byte 0x0000
_08077E5C: .4byte gUnk_030056F4
_08077E60: .4byte gUnk_08479140
_08077E64: .4byte 0x000002DA
_08077E68: .4byte 0x000500C0
_08077E6C: .4byte 0xFFFFF480
_08077E70:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _08077EB8
	adds r1, r1, r0
	mov r9, r1
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
_08077E84:
	mov r4, r8
	ldr r4, [r4, #0x14]
	str r4, [sp, #0x6c]
	mov r5, r8
	ldr r5, [r5, #0x18]
	mov sl, r5
	ldr r6, [sp, #0x60]
	cmp r6, #3
	bhi _08077EBC
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, r9
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	subs r0, r0, r4
	lsrs r0, r0, #8
	add r2, sp, #0x44
	strh r0, [r2, #0]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	subs r0, r0, r5
	b _08077ECE
	.2byte 0x0000
_08077EB8: .4byte gUnk_03003CE0
_08077EBC:
	ldr r0, [r7, #0x14]
	ldr r1, [sp, #0x6c]
	subs r0, r0, r1
	lsrs r0, r0, #8
	add r2, sp, #0x44
	strh r0, [r2, #0]
	ldr r0, [r7, #0x18]
	mov r3, sl
	subs r0, r0, r3
_08077ECE:
	lsrs r0, r0, #8
	mov r1, sp
	adds r1, #0x46
	strh r0, [r1, #0]
	add r5, sp, #0x44
	movs r4, #0
	ldrsh r0, [r5, r4]
	movs r2, #0x46
	add r2, sp
	movs r6, #0
	ldrsh r1, [r2, r6]
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r1, #0x80
	ble _08077EFC
	ldr r3, _08077FD8
	adds r0, r3, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08077EFC:
	str r0, [sp, #0x74]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08077F12
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x74]
_08077F12:
	ldr r5, [sp, #0x74]
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _08077F2A
	ldr r6, _08077FD8
	adds r0, r1, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x74]
_08077F2A:
	ldr r0, [sp, #0x74]
	lsls r1, r0, #0x10
	asrs r1, r1, #0x14
	ldr r2, _08077FDC
	mov r3, r8
	movs r4, #8
	ldrsh r0, [r3, r4]
	lsls r0, r0, #1
	adds r2, r0, r2
	ldrh r0, [r2, #0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #8
	ble _08077F52
	adds r0, r1, #0
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08077F52:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08077F5C
	negs r0, r0
_08077F5C:
	cmp r0, #3
	ble _08077F64
	ldrh r2, [r2, #0]
	str r2, [sp, #0x74]
_08077F64:
	movs r0, #0x8b
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x84]
	mov r5, r8
	ldrh r5, [r5, #8]
	str r5, [sp, #0x7c]
	mov r0, r8
	adds r0, #0x6a
	ldr r2, _08077FE0
	add r2, r8
	ldrh r1, [r0, #0]
	adds r7, r0, #0
	ldr r6, [sp, #0x5c]
	adds r6, #4
	str r6, [sp, #0x8c]
	ldrb r2, [r2, #0]
	cmp r1, r2
	bhs _08077FF8
	movs r5, #1
	ldr r1, _08077FE4
	lsls r0, r6, #2
	adds r4, r0, r1
	adds r0, r5, #0
	ldr r1, [sp, #0x64]
	lsls r0, r1
	mvns r6, r0
_08077FA6:
	mov r0, r8
	adds r0, #0x7a
	ldrh r1, [r0, #0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08077FBC
	bl sub_08056E90
	cmp r0, #0
	bne _08077FD0
_08077FBC:
	bl sub_0800BA6C
	cmp r0, #0
	beq _08077FD0
	mov r2, r8
	ldrh r0, [r2, #0xc]
	cmp r0, #0xa
	beq _08077FD0
	cmp r0, #0xb
	bne _08077FE8
_08077FD0:
	ldr r0, [r4, #0]
	ands r0, r6
	str r0, [r4, #0]
	b _0807852C
_08077FD8: .4byte 0xFFFFFF00
_08077FDC: .4byte gUnk_0847AD0A
_08077FE0: .4byte 0x0000022B
_08077FE4: .4byte gUnk_030063E0
_08077FE8:
	bl sub_080003F0
	ldr r1, _08078170
	add r1, r8
	ldrh r0, [r7, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	blo _08077FA6
_08077FF8:
	ldr r3, [sp, #0x70]
	lsls r0, r3, #3
	adds r0, #0xa
	str r0, [sp, #0x70]
	bl sub_0800CD34
	cmp r0, #0
	bne _0807801E
	bl sub_0800CCCC
	cmp r0, #0
	bne _0807801E
	bl sub_0800CD8C
	cmp r0, #0
	bne _0807801E
	movs r0, #0x17
	bl sub_0805865C
_0807801E:
	ldr r0, [sp, #0x70]
	adds r4, r0, #0
	subs r4, #1
	str r4, [sp, #0x70]
	cmp r0, #0
	bne _0807802C
	b _08078518
_0807802C:
	mov r5, sp
	adds r5, #0x44
	str r5, [sp, #0x88]
_08078032:
	movs r6, #0
	str r6, [sp, #0x78]
	ldr r0, [sp, #0x60]
	cmp r0, #3
	bls _0807803E
	b _08078216
_0807803E:
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r2, [sp, #0x80]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _08078174
	adds r1, r1, r0
	mov r9, r1
	mov r6, r9
	adds r6, #0x8c
	ldr r0, [r6, #0]
	ldr r3, [sp, #0x6c]
	subs r0, r0, r3
	lsrs r0, r0, #8
	ldr r4, [sp, #0x88]
	strh r0, [r4, #0]
	mov r5, r9
	adds r5, #0x90
	ldr r0, [r5, #0]
	mov r1, sl
	subs r0, r0, r1
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	movs r2, #0x46
	add r2, sp
	strh r0, [r2, #0]
	movs r3, #0
	ldrsh r1, [r4, r3]
	cmp r1, #0
	bge _0807807C
	negs r1, r1
_0807807C:
	cmp r1, #7
	ble _08078082
	b _080783C0
_08078082:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0807808C
	negs r0, r0
_0807808C:
	cmp r0, #7
	ble _08078092
	b _080783C0
_08078092:
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, r9
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	bne _080780A6
	b _0807850A
_080780A6:
	mov r0, r9
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _080780B2
	b _0807850A
_080780B2:
	mov r4, r9
	ldr r0, [r4, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080780C0
	b _080783C0
_080780C0:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080780CA
	b _080783C0
_080780CA:
	ldrh r2, [r4, #0x20]
	cmp r2, #0xa
	bne _080780D2
	b _080783C0
_080780D2:
	cmp r2, #0xb
	bne _080780D8
	b _080783C0
_080780D8:
	mov r1, r8
	ldrh r0, [r1, #0]
	lsls r0, r0, #2
	adds r4, #0xe4
	adds r0, r4, r0
	ldr r1, [r1, #0x50]
	ldr r0, [r0, #0]
	adds r7, r4, #0
	cmp r1, r0
	bne _080780EE
	b _080783C0
_080780EE:
	cmp r2, #0xc
	bne _080780F4
	b _080783C0
_080780F4:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080780FE
	b _080783C0
_080780FE:
	bl sub_0800D11C
	cmp r0, #0
	beq _08078108
	b _080783C0
_08078108:
	ldr r0, _08078178
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r3, r9
	movs r2, #0x3a
	ldrsh r1, [r3, r2]
	bl sub_080223A4
	cmp r0, #0
	beq _080781E4
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	adds r2, r0, #0
	mov r1, r9
	adds r1, #0x6e
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _0807813A
	ldrb r1, [r1, #0]
	cmp r2, r1
	blo _08078180
_0807813A:
	mov r0, r8
	mov r1, r9
	bl sub_0801ED8C
	ldr r3, _0807817C
	adds r1, r3, #0
	mov r2, r9
	adds r2, #0x88
	ands r0, r1
	ldrh r5, [r2, #0]
	adds r0, r0, r5
	strh r0, [r2, #0]
	mov r6, r8
	ldrh r0, [r6, #0]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r1, [r6, #0x50]
	str r1, [r0, #0]
	movs r0, #0xa
	mov r1, r9
	strh r0, [r1, #0x20]
	movs r0, #0x88
	lsls r0, r0, #1
	add r0, r9
	ldr r2, [sp, #0x78]
	str r2, [r0, #0]
	b _080781DE
_08078170: .4byte 0x0000022B
_08078174: .4byte gUnk_03003CE0
_08078178: .4byte 0x00000206
_0807817C: .4byte 0x00007FFF
_08078180:
	ldr r0, [r6, #0]
	ldr r1, [r5, #0]
	bl sub_08022504
	mov r0, r8
	mov r1, r9
	bl sub_0801ED8C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080781A8
	ldr r4, _080781B8
	adds r0, r4, #0
	ands r2, r0
_080781A8:
	mov r0, r9
	adds r0, #0x8a
	ldrh r3, [r0, #0]
	lsrs r1, r2, #2
	cmp r1, #0
	beq _080781BC
	adds r1, r3, r1
	b _080781BE
_080781B8: .4byte 0x00007FFF
_080781BC:
	adds r1, r3, #1
_080781BE:
	movs r2, #0
	strh r1, [r0, #0]
	mov r5, r8
	ldrh r0, [r5, #0]
	lsls r0, r0, #2
	adds r0, r7, r0
	ldr r1, [r5, #0x50]
	str r1, [r0, #0]
	movs r0, #0x88
	lsls r0, r0, #1
	add r0, r9
	str r2, [r0, #0]
	movs r0, #0xb2
	lsls r0, r0, #1
	bl sub_0805865C
_080781DE:
	movs r6, #1
	str r6, [sp, #0x78]
	b _080783C0
_080781E4:
	mov r1, r8
	ldrh r0, [r1, #0]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r1, [r1, #0x50]
	str r1, [r0, #0]
	bl sub_0800CD34
	cmp r0, #0
	beq _080781FA
	b _080783C0
_080781FA:
	bl sub_0800CCCC
	cmp r0, #0
	beq _08078204
	b _080783C0
_08078204:
	bl sub_0800CD8C
	cmp r0, #0
	beq _0807820E
	b _080783C0
_0807820E:
	movs r0, #0x55
	bl sub_0805865C
	b _080783C0
_08078216:
	movs r5, #0
	add r4, sp, #0x48
	movs r6, #1
	ldr r2, [sp, #0x80]
	lsls r6, r2
_08078220:
	ldr r0, _08078364
	movs r1, #1
	lsls r1, r5
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	bne _08078230
	b _080783B4
_08078230:
	ldr r1, _08078368
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r7, r1, r0
	movs r3, #0xee
	lsls r3, r3, #1
	adds r0, r7, r3
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0807824E
	b _080783B4
_0807824E:
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	ldr r1, [sp, #0x6c]
	subs r0, r0, r1
	ldr r2, [sp, #0x88]
	strh r0, [r2, #0]
	ldr r0, [r7, #0x18]
	asrs r0, r0, #8
	mov r3, sl
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x46
	add r1, sp
	strh r0, [r1, #0]
	movs r3, #0
	ldrsh r1, [r2, r3]
	cmp r1, #0
	bge _08078276
	negs r1, r1
_08078276:
	cmp r1, #7
	ble _0807827C
	b _080783B4
_0807827C:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08078286
	negs r0, r0
_08078286:
	cmp r0, #7
	ble _0807828C
	b _080783B4
_0807828C:
	ldrh r0, [r7, #0xc]
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0807829A
	b _080783B4
_0807829A:
	mov r0, r8
	ldr r1, [r0, #0x50]
	ldr r0, [r7, #0x54]
	cmp r1, r0
	bne _080782A6
	b _080783B4
_080782A6:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080782B0
	b _080783B4
_080782B0:
	bl sub_0800D11C
	cmp r0, #0
	bne _080783B4
	ldr r1, _0807836C
	mov r2, r8
	adds r0, r2, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r7, r1
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_080223A4
	cmp r0, #0
	beq _08078380
	movs r0, #0xa
	strh r0, [r7, #0xc]
	mov r0, r8
	adds r1, r7, #0
	bl sub_0801EF14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08078370
	ldr r1, [r4, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r4, #4]
	ldr r0, [sp, #0x84]
	adds r0, #0xbc
	ldrb r1, [r0, #0]
	lsls r1, r1, #8
	adds r2, #0xff
	ldr r0, [sp, #0x48]
	ands r0, r2
	orrs r0, r1
	ldr r1, _08078374
	ands r0, r1
	ldr r1, _08078378
	ands r0, r1
	str r0, [sp, #0x48]
	mov r3, r8
	ldr r0, [r3, #0x50]
	str r0, [r7, #0x54]
	ldrb r2, [r7, #2]
	ldr r1, _0807837C
	ldr r0, [sp, #0x48]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x48]
	adds r1, r7, #0
	adds r1, #0x4a
	ldrh r0, [r4, #4]
	ldrh r2, [r1, #0]
	adds r0, r0, r2
	strh r0, [r1, #0]
	ldrh r0, [r4, #4]
	str r0, [r7, #0x4c]
	ldr r0, [sp, #0x48]
	lsrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, #0x18
	strh r0, [r1, #0]
	ldr r0, [sp, #0x48]
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, #0x1a
	strh r0, [r1, #0]
	ldr r0, [sp, #0x48]
	asrs r0, r0, #0x18
	adds r1, #2
	strh r0, [r1, #0]
	ldrh r1, [r3, #0]
	adds r0, r7, #0
	adds r0, #0x58
	strh r1, [r0, #0]
	adds r1, r7, #0
	adds r1, #0x5a
	ldrh r2, [r1, #0]
	adds r0, r6, #0
	orrs r0, r2
	strh r0, [r1, #0]
	adds r0, r4, #0
	bl sub_080660EC
	b _080783B0
	.2byte 0x0000
_08078364: .4byte gUnk_030056FC
_08078368: .4byte gUnk_030056F4
_0807836C: .4byte 0x00000206
_08078370: .4byte 0xFFFF0000
_08078374: .4byte 0xFF00FFFF
_08078378: .4byte 0x00FFFFFF
_0807837C: .4byte 0xFFFFFF00
_08078380:
	mov r1, r8
	ldrh r0, [r1, #0]
	lsls r0, r0, #2
	mov r1, r9
	adds r1, #0xe4
	adds r1, r1, r0
	mov r2, r8
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
	bl sub_0800CD34
	cmp r0, #0
	bne _080783B0
	bl sub_0800CCCC
	cmp r0, #0
	bne _080783B0
	bl sub_0800CD8C
	cmp r0, #0
	bne _080783B0
	movs r0, #0x55
	bl sub_0805865C
_080783B0:
	movs r3, #1
	str r3, [sp, #0x78]
_080783B4:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bhi _080783C0
	b _08078220
_080783C0:
	ldr r4, [sp, #0x78]
	cmp r4, #0
	beq _080783C8
	b _08078518
_080783C8:
	ldr r5, [sp, #0x6c]
	str r5, [sp, #0x50]
	add r0, sp, #0x50
	mov r6, sl
	str r6, [r0, #4]
	ldr r1, _0807853C
	str r1, [sp, #0x58]
	add r1, sp, #0x58
	movs r2, #0
	bl sub_0801FB14
	cmp r0, #0
	beq _080783E4
	b _08078518
_080783E4:
	ldr r0, [sp, #0x6c]
	mov r1, sl
	movs r2, #0
	bl sub_0800AE50
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08078404
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08078404
	b _08078518
_08078404:
	ldr r5, _08078540
	ldr r0, [sp, #0x74]
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0x14
	muls r0, r2, r0
	movs r1, #0xa
	bl __divsi3
	ldr r3, [sp, #0x6c]
	adds r3, r3, r0
	str r3, [sp, #0x6c]
	lsls r4, r4, #1
	adds r4, r4, r5
	movs r5, #0
	ldrsh r0, [r4, r5]
	movs r6, #0x14
	muls r0, r6, r0
	movs r1, #0xa
	bl __divsi3
	add sl, r0
	bl sub_0800CC98
	cmp r0, #0
	bne _080784CC
	bl sub_0800CD8C
	cmp r0, #0
	bne _080784CC
	bl sub_0800CCCC
	adds r3, r0, #0
	cmp r3, #0
	bne _080784CC
	ldr r0, [sp, #0x6c]
	asrs r5, r0, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, sl
	asrs r4, r1, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	str r3, [sp, #4]
	ldr r2, [sp, #0x88]
	mov r3, sp
	adds r3, #0x46
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	ldr r2, [sp, #0x88]
	movs r3, #0
	ldrsh r4, [r2, r3]
	ldr r3, _08078544
	ldr r5, [sp, #0x7c]
	lsls r2, r5, #0x10
	asrs r2, r2, #0xe
	adds r1, r2, r3
	movs r6, #0
	ldrsh r1, [r1, r6]
	adds r4, r4, r1
	movs r6, #0x46
	add r6, sp
	movs r5, #0
	ldrsh r1, [r6, r5]
	adds r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldr r5, [sp, #0x68]
	ldr r6, [sp, #0x7c]
	adds r2, r5, r6
	lsls r2, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	lsrs r2, r2, #0x10
	movs r3, #0
	bl sub_08007870
_080784CC:
	bl sub_080003F0
	bl sub_0800CB78
	cmp r0, #0
	bne _08078518
	bl sub_0800CD00
	cmp r0, #0
	bne _08078518
	mov r0, r8
	adds r0, #0x7a
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080784F6
	bl sub_08056E90
	cmp r0, #0
	bne _08078518
_080784F6:
	bl sub_0800BA6C
	cmp r0, #0
	beq _08078518
	mov r1, r8
	ldrh r0, [r1, #0xc]
	cmp r0, #0xa
	beq _08078518
	cmp r0, #0xb
	beq _08078518
_0807850A:
	ldr r0, [sp, #0x70]
	adds r2, r0, #0
	subs r2, #1
	str r2, [sp, #0x70]
	cmp r0, #0
	beq _08078518
	b _08078032
_08078518:
	ldr r0, _08078548
	ldr r3, [sp, #0x8c]
	lsls r2, r3, #2
	adds r2, r2, r0
	movs r1, #1
	ldr r4, [sp, #0x64]
	lsls r1, r4
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
_0807852C:
	add sp, #0x90
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0807853C: .4byte 0x00080008
_08078540: .4byte gUnk_080B9704
_08078544: .4byte gUnk_084EBEBC
_08078548: .4byte gUnk_030063E0
	thumb_func_end sub_08077DAC
