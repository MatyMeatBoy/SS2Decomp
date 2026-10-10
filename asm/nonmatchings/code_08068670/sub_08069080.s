	thumb_func_start sub_08069080
sub_08069080: @ 0x08069080
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r2, #0
	ldr r0, [sp, #0x28]
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r9, r1
	bl sub_080008C8
	movs r7, #0x64
	movs r1, #0x64
	bl sub_080B95E4
	adds r5, r0, #0
	ldr r1, [sp, #0x2c]
	cmp r1, #1
	beq _080690B4
	cmp r1, #4
	beq _080690C8
	b _080691FA
_080690B4:
	movs r2, #0
	ldrsh r0, [r6, r2]
	subs r0, r7, r0
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #1
	adds r1, #5
	muls r0, r1, r0
	movs r1, #0x19
	b _080690DA
_080690C8:
	movs r1, #6
	ldrsh r0, [r6, r1]
	subs r0, r7, r0
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #1
	adds r1, #5
	muls r0, r1, r0
	movs r1, #0x32
_080690DA:
	bl sub_080B956C
	adds r4, r0, #0
	bl sub_080020F4
	cmp r8, r0
	beq _080690F6
	bl sub_0800CF80
	cmp r0, #0
	beq _08069116
	mov r0, r8
	cmp r0, #3
	bhi _08069116
_080690F6:
	ldr r1, _0806913C
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r1
	adds r0, #0x73
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r0, r4, r0
	movs r1, #0x64
	bl sub_080B9394
	adds r4, r0, #0
_08069116:
	cmp r4, r5
	ble _0806912A
	ldr r1, [sp, #0x2c]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x10
	ldr r2, _08069140
	ldr r1, [sp, #0]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0]
_0806912A:
	ldr r0, [sp, #0]
	lsrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08069144
	cmp r0, #4
	beq _08069156
	b _080691FA
_0806913C: .4byte gUnk_03003CE0
_08069140: .4byte 0xFFFF00FF
_08069144:
	bl sub_080008C8
	movs r1, #0x64
	bl sub_080B95E4
	movs r2, #0xe1
	lsls r2, r2, #1
	adds r5, r0, r2
	b _08069166
_08069156:
	bl sub_080008C8
	movs r1, #0x64
	bl sub_080B95E4
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r5, r0, r1
_08069166:
	mov r0, r9
	muls r0, r5, r0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	mov r2, r8
	cmp r2, #3
	bhi _08069194
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, r8
	muls r1, r0, r1
	ldr r0, _08069190
	adds r1, r1, r0
	mov sl, r1
	ldrb r2, [r1, #0]
	b _080691B6
_08069190: .4byte gUnk_03003CE0
_08069194:
	ldr r1, _0806920C
	mov r2, r8
	lsls r0, r2, #1
	add r0, r8
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r2, _08069210
	adds r0, r0, r2
	ldr r1, [r1, #0]
	adds r1, r1, r0
	ldr r2, _08069214
	adds r0, r1, r2
	ldrb r0, [r0, #0]
	cmp r0, #3
	beq _080691FA
	ldrb r2, [r1, #2]
_080691B6:
	ldr r1, _08069218
	ldr r0, [sp, #0]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0]
	ldr r0, _0806921C
	mov r4, sp
	ldr r1, [sp, #4]
	ands r1, r0
	mov r0, r9
	orrs r1, r0
	str r1, [sp, #4]
	mov r0, sp
	bl sub_08067D28
	bl sub_080020F4
	cmp r8, r0
	bne _080691FA
	bl sub_0800CF80
	cmp r0, #0
	bne _080691FA
	ldrb r0, [r4, #1]
	ldr r1, _08069220
	ldr r2, [r1, #0]
	adds r2, #0x24
	mov r1, r9
	bl sub_08069224
	mov r0, sl
	adds r0, #0xe0
	ldr r1, [sp, #0x2c]
	str r1, [r0, #0]
_080691FA:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0806920C: .4byte gUnk_030056F4
_08069210: .4byte 0xFFFFF480
_08069214: .4byte 0x00000226
_08069218: .4byte 0xFFFFFF00
_0806921C: .4byte 0xFFFF0000
_08069220: .4byte gUnk_030034E0
	thumb_func_end sub_08069080
