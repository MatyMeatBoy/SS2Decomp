	thumb_func_start sub_08013E90
sub_08013E90: @ 0x08013E90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp, #0]
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #4]
	bl sub_08056E50
	cmp r0, #0
	bne _08013EBA
	movs r0, #2
	ldr r1, [sp, #4]
	orrs r1, r0
	str r1, [sp, #4]
_08013EBA:
	mov r2, sl
	ldr r2, [r2, #0]
	mov r9, r2
	mov r4, sl
	ldr r4, [r4, #4]
	mov r8, r4
	cmp r7, #0
	beq _08013ECE
	cmp r7, #4
	bne _08013EFC
_08013ECE:
	ldr r4, _08013EF4
	ldr r5, _08013EF8
	lsls r6, r7, #1
	adds r0, r6, r5
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, [sp, #0]
	muls r0, r2, r0
	movs r1, #0x98
	lsls r1, r1, #1
	bl __divsi3
	add r8, r0
	adds r4, r5, #0
	adds r3, r6, #0
	b _08013F1E
_08013EF4: .4byte gUnk_080B9704
_08013EF8: .4byte gUnk_0847AD0A
_08013EFC:
	ldr r1, _08013FA0
	ldr r2, _08013FA4
	lsls r3, r7, #1
	adds r0, r3, r2
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldr r4, [sp, #0]
	muls r0, r4, r0
	adds r4, r2, #0
	cmp r0, #0
	bge _08013F1A
	adds r0, #0xff
_08013F1A:
	asrs r0, r0, #8
	add r8, r0
_08013F1E:
	adds r6, r4, #0
	adds r0, r3, r6
	ldrh r0, [r0, #0]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _08013FA0
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r1, [sp, #0]
	muls r0, r1, r0
	cmp r0, #0
	bge _08013F3A
	adds r0, #0xff
_08013F3A:
	asrs r0, r0, #8
	add r9, r0
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, [sp, #0x28]
	cmp r2, #0
	bne _08013F60
	adds r0, r7, #0
	mov r1, r9
	mov r2, r8
	ldr r3, [sp, #4]
	bl sub_0800B118
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _08013F60
	b _08014090
_08013F60:
	cmp r5, #0
	beq _08013F6A
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08013F6A:
	mov r0, sl
	ldr r0, [r0, #0]
	mov r9, r0
	mov r1, sl
	ldr r1, [r1, #4]
	mov r8, r1
	cmp r7, #0
	beq _08013F7E
	cmp r7, #4
	bne _08013FA8
_08013F7E:
	lsls r4, r7, #1
	adds r0, r4, r6
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	ldr r2, _08013FA0
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, [sp, #0]
	muls r0, r2, r0
	movs r1, #0x98
	lsls r1, r1, #1
	bl __divsi3
	add r8, r0
	adds r3, r4, #0
	b _08013FC8
_08013FA0: .4byte gUnk_080B9704
_08013FA4: .4byte gUnk_0847AD0A
_08013FA8:
	lsls r1, r7, #1
	adds r0, r1, r4
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	ldr r4, _0801403C
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r4, [sp, #0]
	muls r0, r4, r0
	adds r3, r1, #0
	cmp r0, #0
	bge _08013FC4
	adds r0, #0xff
_08013FC4:
	asrs r0, r0, #8
	add r8, r0
_08013FC8:
	ldr r6, _08014040
	adds r0, r3, r6
	ldrh r0, [r0, #0]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0801403C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r4, [sp, #0]
	muls r0, r4, r0
	cmp r0, #0
	bge _08013FE4
	adds r0, #0xff
_08013FE4:
	asrs r0, r0, #8
	add r9, r0
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _08014002
	adds r0, r7, #0
	mov r1, r9
	mov r2, r8
	ldr r3, [sp, #4]
	bl sub_0800B118
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08014090
_08014002:
	cmp r5, #0
	beq _0801400C
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0801400C:
	cmp r7, #0
	beq _08014014
	cmp r7, #4
	bne _08014044
_08014014:
	lsls r4, r7, #1
	adds r0, r4, r6
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	ldr r1, _0801403C
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r1, [sp, #0]
	muls r0, r1, r0
	movs r1, #0x98
	lsls r1, r1, #1
	bl __divsi3
	mov r2, sl
	ldr r1, [r2, #4]
	adds r1, r1, r0
	str r1, [r2, #4]
	adds r3, r4, #0
	b _0801406A
_0801403C: .4byte gUnk_080B9704
_08014040: .4byte gUnk_0847AD0A
_08014044:
	lsls r1, r7, #1
	adds r0, r1, r6
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	ldr r4, _080140A4
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r4, [sp, #0]
	muls r0, r4, r0
	adds r3, r1, #0
	cmp r0, #0
	bge _08014060
	adds r0, #0xff
_08014060:
	asrs r1, r0, #8
	mov r2, sl
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
_0801406A:
	ldr r1, _080140A4
	ldr r0, _080140A8
	adds r0, r3, r0
	ldrh r0, [r0, #0]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldr r1, [sp, #0]
	muls r0, r1, r0
	cmp r0, #0
	bge _08014086
	adds r0, #0xff
_08014086:
	asrs r1, r0, #8
	mov r2, sl
	ldr r0, [r2, #0]
	adds r0, r0, r1
	str r0, [r2, #0]
_08014090:
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_080140A4: .4byte gUnk_080B9704
_080140A8: .4byte gUnk_0847AD0A
	thumb_func_end sub_08013E90
