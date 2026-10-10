	thumb_func_start sub_08072D5C
sub_08072D5C: @ 0x08072D5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb0
	str r0, [sp, #0x70]
	bl sub_080020F4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x8c]
	ldr r0, [sp, #0x70]
	ldr r0, [r0, #0]
	str r0, [sp, #0x90]
	ldr r1, [sp, #0x70]
	ldr r1, [r1, #4]
	str r1, [sp, #0x94]
	ldr r2, [sp, #0x70]
	ldrh r2, [r2, #0x14]
	mov sl, r2
	mov r3, sl
	str r3, [sp, #0x78]
	cmp r0, #3
	bhi _08072D9E
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r4, [sp, #0x90]
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _08072E70
	adds r1, r1, r0
	str r1, [sp, #0x74]
_08072D9E:
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x90]
	cmp r0, r1
	bne _08072DD8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _08072E70
	adds r4, r4, r0
	ldr r2, [sp, #0x70]
	ldr r0, [r2, #0xc]
	ldr r1, [r2, #0x14]
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
	bge _08072DD8
	movs r0, #0
	strh r0, [r4, #0]
_08072DD8:
	add r2, sp, #0x54
	movs r3, #0
	movs r0, #0
	strh r0, [r2, #0]
	add r1, sp, #0x60
	strh r0, [r1, #0]
	add r0, sp, #0x4c
	strb r3, [r0, #0]
	movs r7, #1
	ldr r3, [sp, #0x74]
	adds r3, #0xb2
	mov r9, r3
	ldr r4, [sp, #0x90]
	lsls r4, r4, #2
	str r4, [sp, #0xa0]
	movs r0, #0
	mov r8, r0
	add r6, sp, #0x4c
_08072DFC:
	lsls r1, r7, #1
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x54
	mov r2, r8
	strh r2, [r0, #0]
	add r1, sp
	adds r1, #0x60
	strh r2, [r1, #0]
	bl sub_080008C8
	adds r5, r6, r7
	subs r4, r7, #1
	adds r4, r6, r4
	movs r1, #0x14
	bl sub_080B95E4
	adds r0, #0xa
	ldrb r4, [r4, #0]
	adds r0, r0, r4
	strb r0, [r5, #0]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #4
	bls _08072DFC
	ldr r3, [sp, #0x78]
	cmp r3, #0
	beq _08072E3C
	movs r0, #2
	mov r4, r9
	strh r0, [r4, #0]
_08072E3C:
	mov r1, r9
	ldrh r0, [r1, #0]
	cmp r0, #1
	bhi _08072E88
	ldr r0, _08072E74
	ldr r2, [sp, #0xa0]
	adds r4, r2, r0
	movs r0, #1
	ldr r3, [sp, #0x94]
	lsls r0, r3
	mvns r5, r0
_08072E52:
	ldr r1, [sp, #0x74]
	ldrh r0, [r1, #0x20]
	cmp r0, #0xa
	beq _08072E68
	ldr r0, _08072E78
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08072E7C
_08072E68:
	ldr r0, [r4, #0]
	ands r0, r5
	str r0, [r4, #0]
	b _08073558
_08072E70: .4byte gUnk_03003CE0
_08072E74: .4byte gUnk_030063E0
_08072E78: .4byte gUnk_03005CF4
_08072E7C:
	bl sub_080003F0
	mov r2, r9
	ldrh r0, [r2, #0]
	cmp r0, #1
	bls _08072E52
_08072E88:
	ldr r3, [sp, #0x74]
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0x7c]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	str r0, [sp, #0x80]
	movs r5, #0
	movs r0, #0
	str r0, [sp, #0x88]
	bl sub_0800CDF8
	ldr r1, [sp, #0x74]
	adds r1, #0xb6
	str r1, [sp, #0xac]
	cmp r0, #0
	beq _08072EB8
	b _08073090
_08072EB8:
	ldr r2, [sp, #0x70]
	ldr r0, [r2, #8]
	cmp r0, #3
	bhi _08072FB4
	bl sub_08002164
	mov r8, r0
	movs r7, #0
	b _08072F9A
_08072ECA:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _08072FA8
	adds r6, r1, r0
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r6, r3
	ldr r3, [r0, #0]
	ldrb r0, [r3, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	beq _08072F94
	adds r0, r6, #0
	adds r0, #0x68
	ldr r1, [sp, #0x74]
	adds r1, #0x68
	ldrb r2, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r2, r1
	beq _08072F94
	ldrh r0, [r6, #0x20]
	cmp r0, #0xb
	beq _08072F94
	cmp r2, #0
	beq _08072F94
	ldrh r1, [r3, #0]
	lsrs r1, r1, #4
	ldr r4, [sp, #0x7c]
	asrs r0, r4, #8
	subs r1, r1, r0
	add r2, sp, #0x6c
	strh r1, [r2, #0]
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	ldr r3, [sp, #0x80]
	asrs r1, r3, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r0, sp
	adds r0, #0x6e
	strh r3, [r0, #0]
	movs r4, #0
	ldrsh r2, [r2, r4]
	cmp r2, #0
	bge _08072F30
	negs r2, r2
_08072F30:
	ldr r0, _08072FAC
	ldr r4, [sp, #0x78]
	lsls r1, r4, #2
	adds r1, r1, r0
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r2, r0
	bge _08072F94
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _08072F4A
	negs r2, r2
_08072F4A:
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r2, r0
	bge _08072F94
	mov r4, sl
	lsls r0, r4, #5
	subs r0, r0, r4
	lsls r0, r0, #2
	add r0, sl
	lsls r0, r0, #4
	ldr r1, _08072FB0
	adds r0, r0, r1
	movs r3, #0x3c
	ldrsh r2, [r6, r3]
	ldr r1, [r6, #0x48]
	adds r1, r1, r2
	bl sub_080B9394
	adds r4, r0, #0
	bl sub_080008C8
	movs r1, #0x64
	bl sub_080B95E4
	cmp r4, r0
	bls _08072F94
	add r1, sp, #0x44
	ldr r2, [sp, #0x88]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x88]
	adds r1, r1, r2
	strb r7, [r1, #0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08072F94:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08072F9A:
	cmp r7, r8
	bhs _08073090
	bl sub_0800CD8C
	cmp r0, #0
	beq _08072ECA
	b _08073090
_08072FA8: .4byte gUnk_03003CE0
_08072FAC: .4byte gUnk_084EC12C
_08072FB0: .4byte 0xFFFFFC18
_08072FB4:
	movs r7, #0
	b _08073084
_08072FB8:
	ldr r0, _080731D0
	movs r1, #1
	lsls r1, r7
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _0807307E
	ldr r1, _080731D4
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #3
	subs r0, r0, r7
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r6, r1, r0
	ldrh r0, [r6, #0xc]
	cmp r0, #0xb
	beq _0807307E
	movs r4, #0xee
	lsls r4, r4, #1
	adds r0, r6, r4
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0807307E
	ldr r0, [r6, #0x14]
	ldr r1, [sp, #0x7c]
	subs r0, r0, r1
	lsrs r0, r0, #8
	add r1, sp, #0x6c
	strh r0, [r1, #0]
	ldr r0, [r6, #0x18]
	ldr r2, [sp, #0x80]
	subs r0, r0, r2
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	mov r0, sp
	adds r0, #0x6e
	strh r3, [r0, #0]
	movs r4, #0
	ldrsh r2, [r1, r4]
	cmp r2, #0
	bge _0807300E
	negs r2, r2
_0807300E:
	ldr r0, _080731D8
	ldr r4, [sp, #0x78]
	lsls r1, r4, #2
	adds r1, r1, r0
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r2, r0
	bge _0807307E
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _08073028
	negs r2, r2
_08073028:
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r2, r0
	bge _0807307E
	mov r4, sl
	lsls r0, r4, #5
	subs r0, r0, r4
	lsls r0, r0, #2
	add r0, sl
	lsls r0, r0, #4
	ldr r1, _080731DC
	adds r0, r0, r1
	movs r2, #0x85
	lsls r2, r2, #2
	adds r3, r6, r2
	movs r4, #0x82
	lsls r4, r4, #2
	adds r1, r6, r4
	movs r4, #0
	ldrsh r2, [r1, r4]
	ldr r1, [r3, #0]
	adds r1, r1, r2
	bl sub_080B9394
	adds r4, r0, #0
	bl sub_080008C8
	movs r1, #0x64
	bl sub_080B95E4
	cmp r4, r0
	bls _0807307E
	add r1, sp, #0x44
	ldr r2, [sp, #0x88]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x88]
	adds r1, r1, r2
	strb r7, [r1, #0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0807307E:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08073084:
	cmp r7, #4
	bhi _08073090
	bl sub_0800CD8C
	cmp r0, #0
	beq _08072FB8
_08073090:
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x90]
	cmp r0, r1
	beq _0807309C
	cmp r1, #3
	bls _080730B2
_0807309C:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080730B2
	bl sub_0800CD34
	cmp r0, #0
	bne _080730B2
	ldr r0, _080731E0
	bl sub_0805865C
_080730B2:
	ldr r1, _080731E4
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	add r1, sp, #0x10
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	cmp r5, #0
	beq _080730D4
	b _080731F4
_080730D4:
	ldr r1, _080731E8
	ldr r2, [sp, #0x74]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	ldr r3, _080731EC
	lsls r1, r1, #0x14
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #1
	ldr r2, [sp, #0x7c]
	adds r2, r2, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r4, [sp, #0x80]
	adds r4, r4, r0
	movs r0, #0
	str r0, [sp, #0x84]
	asrs r2, r2, #8
	mov r8, r2
	asrs r7, r4, #8
	add r6, sp, #0x6c
	mov r5, sp
	adds r5, #0x6e
	lsls r2, r2, #0x10
	str r2, [sp, #0x98]
	mov sl, r0
	add r4, sp, #0x54
_08073130:
	lsls r1, r7, #0x10
	movs r0, #0x30
	str r0, [sp, #0]
	mov r2, sl
	str r2, [sp, #4]
	ldr r3, [sp, #0x98]
	asrs r0, r3, #0x10
	asrs r1, r1, #0x10
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_0800BC08
	mov r0, r8
	adds r1, r7, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	mov r0, sl
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0xa
	adds r2, r4, #0
	add r3, sp, #0x60
	bl sub_08065370
	cmp r0, #0
	beq _08073176
	ldr r0, [sp, #0x84]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x84]
_08073176:
	bl sub_0800CC98
	cmp r0, #0
	bne _080731C4
	bl sub_0800CD8C
	cmp r0, #0
	bne _080731C4
	bl sub_0800CCCC
	cmp r0, #0
	bne _080731C4
	ldr r0, _080731F0
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080731A4
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_080731A4:
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldrh r3, [r4, #0]
	mov r2, r9
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xa
	bl sub_08007870
_080731C4:
	bl sub_080003F0
	ldr r3, [sp, #0x84]
	cmp r3, #0
	beq _08073130
	b _08073532
_080731D0: .4byte gUnk_030056FC
_080731D4: .4byte gUnk_030056F4
_080731D8: .4byte gUnk_084EC12C
_080731DC: .4byte 0xFFFFFC18
_080731E0: .4byte 0x0000016B
_080731E4: .4byte 0x0005008D
_080731E8: .4byte gUnk_0849E730
_080731EC: .4byte gUnk_080B9704
_080731F0: .4byte gUnk_03002344
_080731F4:
	movs r4, #0
	str r4, [sp, #0x84]
	mov r1, sl
	adds r1, #5
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	str r0, [sp, #0x9c]
	b _08073506
_08073206:
	ldr r1, [sp, #0x70]
	ldr r0, [r1, #8]
	cmp r0, #3
	bls _08073210
	b _0807338C
_08073210:
	movs r7, #0
	ldr r2, [sp, #0x88]
	cmp r7, r2
	blo _0807321A
	b _08073502
_0807321A:
	mov r3, sp
	adds r3, #0x6c
	str r3, [sp, #0xa4]
	mov r4, sp
	adds r4, #0x6e
	str r4, [sp, #0xa8]
_08073226:
	add r0, sp, #0x44
	adds r0, r0, r7
	mov r8, r0
	ldrb r1, [r0, #0]
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _080732F0
	adds r6, r1, r0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	add r2, sp, #0x6c
	mov r3, sp
	adds r3, #0x6e
	bl sub_0800BC08
	ldr r2, [sp, #0x7c]
	asrs r0, r2, #8
	ldr r3, [sp, #0x80]
	asrs r1, r3, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	mov r5, sp
	adds r5, r5, r7
	adds r5, #0x4c
	ldrb r0, [r5, #0]
	adds r1, r0, #0
	cmp r1, #0
	bne _08073374
	lsls r4, r7, #1
	mov r2, sp
	adds r2, r2, r4
	adds r2, #0x54
	mov r3, sp
	adds r3, r3, r4
	adds r3, #0x60
	str r1, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0xa
	bl sub_08065370
	cmp r0, #0
	beq _08073316
	ldr r0, [sp, #0x84]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x84]
	movs r0, #0xf0
	strb r0, [r5, #0]
	ldr r1, [sp, #0x8c]
	mov r0, r8
	ldrb r0, [r0, #0]
	cmp r1, r0
	bne _08073316
	adds r0, r6, #0
	movs r1, #4
	ldr r2, [sp, #0x8c]
	bl sub_0801E1D8
	adds r1, r0, #0
	cmp r1, #0
	beq _080732F4
	ldrh r0, [r1, #6]
	cmp r0, sl
	bhs _08073316
	mov r2, sl
	strh r2, [r1, #6]
	add r3, sp, #0x9c
	ldrh r3, [r3, #0]
	strh r3, [r1, #0]
	add r0, sp, #0x8c
	ldrh r0, [r0, #0]
	strh r0, [r1, #2]
	bl sub_0800CCCC
	cmp r0, #0
	bne _08073316
	bl sub_0800CD34
	cmp r0, #0
	bne _08073316
	movs r0, #0x1a
	bl sub_0805865C
	b _08073316
_080732F0: .4byte gUnk_03003CE0
_080732F4:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0801E164
	adds r1, r0, #0
	cmp r1, #0
	beq _08073316
	mov r2, sl
	strh r2, [r1, #6]
	add r3, sp, #0x9c
	ldrh r3, [r3, #0]
	strh r3, [r1, #0]
	add r0, sp, #0x8c
	ldrh r0, [r0, #0]
	strh r0, [r1, #2]
	movs r0, #4
	strh r0, [r1, #4]
_08073316:
	bl sub_0800CC98
	cmp r0, #0
	bne _0807337C
	bl sub_0800CD8C
	cmp r0, #0
	bne _0807337C
	bl sub_0800CCCC
	cmp r0, #0
	bne _0807337C
	ldr r0, _08073370
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08073344
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_08073344:
	ldr r1, [sp, #0xa4]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xa8]
	movs r2, #0
	ldrsh r1, [r3, r2]
	mov r2, sp
	adds r2, r2, r4
	adds r2, #0x54
	ldrh r3, [r2, #0]
	mov r4, r9
	str r4, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xa
	bl sub_08007870
	b _0807337C
_08073370: .4byte gUnk_03002344
_08073374:
	cmp r1, #0xf0
	beq _0807337C
	subs r0, #1
	strb r0, [r5, #0]
_0807337C:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, [sp, #0x88]
	cmp r7, r0
	bhs _0807338A
	b _08073226
_0807338A:
	b _08073502
_0807338C:
	movs r7, #0
	ldr r1, [sp, #0x88]
	cmp r7, r1
	blo _08073396
	b _08073502
_08073396:
	mov r2, sp
	adds r2, #0x6c
	str r2, [sp, #0xa4]
	mov r3, sp
	adds r3, #0x6e
	str r3, [sp, #0xa8]
_080733A2:
	ldr r2, _08073468
	add r0, sp, #0x44
	adds r0, r0, r7
	ldrb r1, [r0, #0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #5
	ldr r1, [r2, #0]
	adds r6, r1, r0
	ldr r0, [r6, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	add r2, sp, #0x6c
	mov r3, sp
	adds r3, #0x6e
	bl sub_0800BC08
	ldr r4, [sp, #0x7c]
	asrs r0, r4, #8
	ldr r2, [sp, #0x80]
	asrs r1, r2, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	mov r5, sp
	adds r5, r5, r7
	adds r5, #0x4c
	ldrb r0, [r5, #0]
	adds r1, r0, #0
	cmp r1, #0
	bne _080734EC
	lsls r4, r7, #1
	mov r2, sp
	adds r2, r2, r4
	adds r2, #0x54
	mov r3, sp
	adds r3, r3, r4
	adds r3, #0x60
	str r1, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0xa
	bl sub_08065370
	cmp r0, #0
	beq _0807348E
	ldr r0, [sp, #0x84]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x84]
	movs r0, #0xf0
	strb r0, [r5, #0]
	ldr r3, [sp, #0x8c]
	ldr r0, [sp, #0x90]
	cmp r3, r0
	bne _0807348E
	adds r0, r6, #0
	movs r1, #4
	ldr r2, [sp, #0x90]
	bl sub_0801E20C
	adds r1, r0, #0
	cmp r1, #0
	beq _0807346C
	ldrh r0, [r1, #6]
	cmp r0, sl
	bhs _0807348E
	mov r2, sl
	strh r2, [r1, #6]
	add r3, sp, #0x9c
	ldrh r3, [r3, #0]
	strh r3, [r1, #0]
	add r0, sp, #0x90
	ldrh r0, [r0, #0]
	strh r0, [r1, #2]
	bl sub_0800CCCC
	cmp r0, #0
	bne _0807348E
	bl sub_0800CD34
	cmp r0, #0
	bne _0807348E
	movs r0, #0x1a
	bl sub_0805865C
	b _0807348E
_08073468: .4byte gUnk_030056F4
_0807346C:
	adds r0, r6, #0
	movs r1, #4
	bl sub_0801E104
	adds r1, r0, #0
	cmp r1, #0
	beq _0807348E
	mov r2, sl
	strh r2, [r1, #6]
	add r3, sp, #0x9c
	ldrh r3, [r3, #0]
	strh r3, [r1, #0]
	add r0, sp, #0x90
	ldrh r0, [r0, #0]
	strh r0, [r1, #2]
	movs r0, #4
	strh r0, [r1, #4]
_0807348E:
	bl sub_0800CC98
	cmp r0, #0
	bne _080734F4
	bl sub_0800CD8C
	cmp r0, #0
	bne _080734F4
	bl sub_0800CCCC
	cmp r0, #0
	bne _080734F4
	ldr r0, _080734E8
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080734BC
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_080734BC:
	ldr r1, [sp, #0xa4]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xa8]
	movs r2, #0
	ldrsh r1, [r3, r2]
	mov r2, sp
	adds r2, r2, r4
	adds r2, #0x54
	ldrh r3, [r2, #0]
	mov r4, r9
	str r4, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xa
	bl sub_08007870
	b _080734F4
_080734E8: .4byte gUnk_03002344
_080734EC:
	cmp r1, #0xf0
	beq _080734F4
	subs r0, #1
	strb r0, [r5, #0]
_080734F4:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, [sp, #0x88]
	cmp r7, r0
	bhs _08073502
	b _080733A2
_08073502:
	bl sub_080003F0
_08073506:
	ldr r1, [sp, #0x84]
	ldr r2, [sp, #0x88]
	cmp r1, r2
	bhs _08073532
	bl sub_080020F4
	ldr r3, [sp, #0x90]
	cmp r3, r0
	beq _0807351A
	b _08073206
_0807351A:
	ldr r4, [sp, #0x74]
	ldrh r0, [r4, #0x20]
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08073532
	bl sub_0800D11C
	cmp r0, #0
	bne _08073532
	b _08073206
_08073532:
	ldr r1, [sp, #0xac]
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _08073546
_0807353A:
	bl sub_080003F0
	ldr r2, [sp, #0xac]
	ldrh r0, [r2, #0]
	cmp r0, #0
	beq _0807353A
_08073546:
	ldr r2, _08073568
	ldr r3, [sp, #0xa0]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x94]
	lsls r1, r4
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
_08073558:
	add sp, #0xb0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08073568: .4byte gUnk_030063E0
	thumb_func_end sub_08072D5C
