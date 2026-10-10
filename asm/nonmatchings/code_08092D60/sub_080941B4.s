	thumb_func_start sub_080941B4
sub_080941B4: @ 0x080941B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	movs r5, #0
	movs r6, #0
	movs r0, #0
	str r0, [sp, #0x14]
	mov sl, r0
	movs r1, #0
	str r1, [sp, #0xc]
	movs r2, #0
	str r2, [sp, #8]
	movs r3, #6
	mov r9, r3
	movs r0, #0xa
	str r0, [sp, #0x10]
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x14
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080941F2
	negs r0, r0
_080941F2:
	adds r0, #0xa
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r1, _08094210
	mov r8, r1
	ldr r7, _08094214
_080941FE:
	adds r1, r6, #0
	cmp r1, #1
	beq _08094280
	cmp r1, #1
	bgt _08094218
	cmp r1, #0
	beq _08094224
	b _0809437C
	.2byte 0x0000
_08094210: .4byte gUnk_0300026C
_08094214: .4byte gUnk_03001250
_08094218:
	cmp r1, #2
	beq _080942C8
	cmp r1, #3
	bne _08094222
	b _08094338
_08094222:
	b _0809437C
_08094224:
	movs r2, #6
	mov r9, r2
	movs r3, #0xa
	str r3, [sp, #0x10]
	mov r0, r8
	strb r1, [r0, #0]
	ldr r0, _0809427C
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0809423A
	b _0809437C
_0809423A:
	adds r0, r5, #0
	lsls r1, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	lsrs r5, r1, #0x10
	lsls r1, r4, #0x10
	lsls r0, r0, #0x10
	cmp r1, r0
	blt _08094250
	b _0809437C
_08094250:
	movs r5, #0
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _08094262
	adds r0, r1, #3
_08094262:
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08094272
	negs r0, r0
_08094272:
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #1
	b _0809437C
_0809427C: .4byte gUnk_03000274
_08094280:
	movs r3, #0x16
	mov r9, r3
	movs r0, #0xa
	str r0, [sp, #0x10]
	mov r2, r8
	strb r1, [r2, #0]
	adds r0, r5, #0
	lsls r1, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r1, r3
	lsrs r5, r1, #0x10
	lsls r1, r4, #0x10
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _0809437C
	movs r5, #0
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	lsls r0, r0, #1
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _080942BE
	negs r0, r0
_080942BE:
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #2
	b _0809437C
_080942C8:
	movs r0, #0x16
	mov r9, r0
	movs r2, #0x1a
	str r2, [sp, #0x10]
	movs r0, #1
	mov r3, r8
	strb r0, [r3, #0]
	ldr r2, _080942F4
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq _080942F8
	lsls r0, r5, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd
	bne _0809437C
	strb r1, [r2, #0]
	b _0809437C
	.2byte 0x0000
_080942F4: .4byte gUnk_03000275
_080942F8:
	adds r0, r5, #0
	lsls r1, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	lsrs r5, r1, #0x10
	lsls r1, r4, #0x10
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _0809437C
	movs r5, #0
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0809431E
	adds r0, r1, #3
_0809431E:
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0809432E
	negs r0, r0
_0809432E:
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #3
	b _0809437C
_08094338:
	movs r3, #6
	mov r9, r3
	movs r0, #0x1a
	str r0, [sp, #0x10]
	movs r0, #1
	mov r1, r8
	strb r0, [r1, #0]
	adds r1, r5, #0
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r5, r0, #0x10
	lsls r0, r4, #0x10
	lsls r1, r1, #0x10
	cmp r0, r1
	bne _0809437C
	movs r5, #0
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x14
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08094374
	negs r0, r0
_08094374:
	adds r0, #0xa
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
_0809437C:
	mov r3, r9
	ldr r0, [sp, #0x10]
	str r0, [sp, #0]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0x32
	movs r2, #1
	bl sub_0800903C
	ldr r1, [sp, #8]
	movs r2, #0x80
	lsls r2, r2, #2
	subs r1, r1, r2
	str r1, [sp, #8]
	asrs r0, r1, #8
	strh r0, [r7, #0]
	mov r3, sl
	lsls r0, r3, #1
	ldr r1, _080943F4
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	asrs r0, r0, #6
	adds r0, #0xc
	strh r0, [r7, #2]
	mov r0, sl
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r3, [sp, #0xc]
	movs r0, #0x44
	subs r3, r3, r0
	str r3, [sp, #0xc]
	asrs r0, r3, #8
	strh r0, [r7, #4]
	ldr r1, [sp, #0x14]
	lsls r0, r1, #1
	ldr r2, _080943F4
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	asrs r1, r1, #7
	movs r0, #0xc
	subs r0, r0, r1
	strh r0, [r7, #6]
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	bl sub_080003F0
	b _080941FE
	.2byte 0x0000
_080943F4: .4byte gUnk_080B9704
	thumb_func_end sub_080941B4
