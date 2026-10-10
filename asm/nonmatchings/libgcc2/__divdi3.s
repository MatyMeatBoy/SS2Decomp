	thumb_func_start __divdi3
__divdi3: @ 0x080B8F60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	movs r4, #0
	str r4, [sp, #0]
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, #0
	bge _080B8F90
	ldr r0, [sp, #0]
	mvns r0, r0
	str r0, [sp, #0]
	negs r0, r4
	adds r6, r0, #0
	negs r1, r5
	cmp r0, #0
	beq _080B8F8A
	subs r1, #1
_080B8F8A:
	adds r7, r1, #0
	adds r5, r7, #0
	adds r4, r6, #0
_080B8F90:
	cmp r3, #0
	bge _080B8FAC
	ldr r1, [sp, #0]
	mvns r1, r1
	str r1, [sp, #0]
	negs r0, r2
	str r0, [sp, #4]
	negs r2, r3
	cmp r0, #0
	beq _080B8FA6
	subs r2, #1
_080B8FA6:
	str r2, [sp, #8]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
_080B8FAC:
	adds r7, r2, #0
	adds r6, r3, #0
	mov sl, r4
	mov r8, r5
	cmp r6, #0
	beq _080B8FBA
	b _080B9208
_080B8FBA:
	cmp r7, r8
	bls _080B9094
	ldr r0, _080B8FD0
	cmp r7, r0
	bhi _080B8FD4
	movs r1, #0
	cmp r7, #0xff
	bls _080B8FDE
	movs r1, #8
	b _080B8FDE
	.2byte 0x0000
_080B8FD0: .4byte 0x0000FFFF
_080B8FD4:
	ldr r0, _080B9088
	movs r1, #0x18
	cmp r7, r0
	bhi _080B8FDE
	movs r1, #0x10
_080B8FDE:
	ldr r0, _080B908C
	lsrs r2, r1
	adds r0, r2, r0
	ldrb r0, [r0, #0]
	adds r0, r0, r1
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	beq _080B9006
	lsls r7, r2
	mov r3, r8
	lsls r3, r2
	subs r1, r1, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
_080B9006:
	lsrs r0, r7, #0x10
	mov r9, r0
	ldr r1, _080B9090
	ands r1, r7
	str r1, [sp, #0xc]
	mov r0, r8
	mov r1, r9
	bl __umodsi3
	adds r4, r0, #0
	mov r0, r8
	mov r1, r9
	bl __udivsi3
	adds r6, r0, #0
	ldr r3, [sp, #0xc]
	adds r2, r6, #0
	muls r2, r3, r2
	lsls r4, r4, #0x10
	mov r1, sl
	lsrs r0, r1, #0x10
	orrs r4, r0
	cmp r4, r2
	bhs _080B9046
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _080B9046
	cmp r4, r2
	bhs _080B9046
	subs r6, #1
	adds r4, r4, r7
_080B9046:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, r9
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, r9
	bl __udivsi3
	adds r1, r0, #0
	ldr r3, [sp, #0xc]
	adds r2, r1, #0
	muls r2, r3, r2
	lsls r5, r5, #0x10
	ldr r0, _080B9090
	mov r4, sl
	ands r4, r0
	orrs r5, r4
	cmp r5, r2
	bhs _080B907E
	subs r1, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _080B907E
	cmp r5, r2
	bhs _080B907E
	subs r1, #1
_080B907E:
	lsls r6, r6, #0x10
	orrs r6, r1
	movs r0, #0
	str r0, [sp, #0x10]
	b _080B935E
_080B9088: .4byte 0x00FFFFFF
_080B908C: .4byte gUnk_08366BC0
_080B9090: .4byte 0x0000FFFF
_080B9094:
	cmp r2, #0
	bne _080B90A2
	movs r0, #1
	movs r1, #0
	bl __udivsi3
	adds r7, r0, #0
_080B90A2:
	adds r1, r7, #0
	ldr r0, _080B90B4
	cmp r7, r0
	bhi _080B90B8
	movs r2, #0
	cmp r7, #0xff
	bls _080B90C2
	movs r2, #8
	b _080B90C2
_080B90B4: .4byte 0x0000FFFF
_080B90B8:
	ldr r0, _080B90E0
	movs r2, #0x18
	cmp r7, r0
	bhi _080B90C2
	movs r2, #0x10
_080B90C2:
	ldr r0, _080B90E4
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0, #0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	bne _080B90E8
	mov r1, r8
	subs r1, r1, r7
	mov r8, r1
	movs r2, #1
	str r2, [sp, #0x10]
	b _080B9186
_080B90E0: .4byte 0x00FFFFFF
_080B90E4: .4byte gUnk_08366BC0
_080B90E8:
	subs r1, r1, r2
	lsls r7, r2
	mov r5, r8
	lsrs r5, r1
	mov r3, r8
	lsls r3, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
	lsrs r0, r7, #0x10
	mov r9, r0
	ldr r1, _080B9204
	ands r1, r7
	str r1, [sp, #0x14]
	adds r0, r5, #0
	mov r1, r9
	bl __umodsi3
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, r9
	bl __udivsi3
	adds r6, r0, #0
	ldr r2, [sp, #0x14]
	adds r1, r6, #0
	muls r1, r2, r1
	lsls r4, r4, #0x10
	mov r3, r8
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _080B9142
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _080B9142
	cmp r4, r1
	bhs _080B9142
	subs r6, #1
	adds r4, r4, r7
_080B9142:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, r9
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, r9
	bl __udivsi3
	adds r2, r0, #0
	ldr r4, [sp, #0x14]
	adds r1, r2, #0
	muls r1, r4, r1
	lsls r5, r5, #0x10
	ldr r0, _080B9204
	mov r3, r8
	ands r3, r0
	orrs r5, r3
	cmp r5, r1
	bhs _080B917C
	subs r2, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _080B917C
	cmp r5, r1
	bhs _080B917C
	subs r2, #1
	adds r5, r5, r7
_080B917C:
	lsls r6, r6, #0x10
	orrs r6, r2
	str r6, [sp, #0x10]
	subs r1, r5, r1
	mov r8, r1
_080B9186:
	lsrs r4, r7, #0x10
	mov r9, r4
	ldr r0, _080B9204
	ands r0, r7
	str r0, [sp, #0x18]
	mov r0, r8
	mov r1, r9
	bl __umodsi3
	adds r4, r0, #0
	mov r0, r8
	mov r1, r9
	bl __udivsi3
	adds r6, r0, #0
	ldr r1, [sp, #0x18]
	adds r2, r6, #0
	muls r2, r1, r2
	lsls r4, r4, #0x10
	mov r3, sl
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r2
	bhs _080B91C6
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _080B91C6
	cmp r4, r2
	bhs _080B91C6
	subs r6, #1
	adds r4, r4, r7
_080B91C6:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, r9
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, r9
	bl __udivsi3
	adds r1, r0, #0
	ldr r4, [sp, #0x18]
	adds r2, r1, #0
	muls r2, r4, r2
	lsls r5, r5, #0x10
	ldr r0, _080B9204
	mov r3, sl
	ands r3, r0
	orrs r5, r3
	cmp r5, r2
	bhs _080B91FE
	subs r1, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _080B91FE
	cmp r5, r2
	bhs _080B91FE
	subs r1, #1
_080B91FE:
	lsls r6, r6, #0x10
	orrs r6, r1
	b _080B935E
_080B9204: .4byte 0x0000FFFF
_080B9208:
	cmp r6, r8
	bls _080B9214
	movs r6, #0
	movs r4, #0
	str r4, [sp, #0x10]
	b _080B935E
_080B9214:
	adds r1, r6, #0
	ldr r0, _080B9228
	cmp r6, r0
	bhi _080B922C
	movs r2, #0
	cmp r6, #0xff
	bls _080B9236
	movs r2, #8
	b _080B9236
	.2byte 0x0000
_080B9228: .4byte 0x0000FFFF
_080B922C:
	ldr r0, _080B9258
	movs r2, #0x18
	cmp r6, r0
	bhi _080B9236
	movs r2, #0x10
_080B9236:
	ldr r0, _080B925C
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0, #0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	bne _080B9264
	cmp r8, r6
	bhi _080B9250
	cmp sl, r7
	blo _080B9260
_080B9250:
	movs r6, #1
	mov r1, sl
	b _080B9358
	.2byte 0x0000
_080B9258: .4byte 0x00FFFFFF
_080B925C: .4byte gUnk_08366BC0
_080B9260:
	movs r6, #0
	b _080B935A
_080B9264:
	subs r1, r1, r2
	lsls r6, r2
	adds r0, r7, #0
	lsrs r0, r1
	orrs r6, r0
	lsls r7, r2
	mov r5, r8
	lsrs r5, r1
	mov r3, r8
	lsls r3, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
	lsrs r0, r6, #0x10
	mov r9, r0
	ldr r1, _080B9390
	ands r1, r6
	str r1, [sp, #0x1c]
	adds r0, r5, #0
	mov r1, r9
	bl __umodsi3
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, r9
	bl __udivsi3
	adds r3, r0, #0
	ldr r2, [sp, #0x1c]
	adds r1, r3, #0
	muls r1, r2, r1
	lsls r4, r4, #0x10
	mov r2, r8
	lsrs r0, r2, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _080B92C6
	subs r3, #1
	adds r4, r4, r6
	cmp r4, r6
	blo _080B92C6
	cmp r4, r1
	bhs _080B92C6
	subs r3, #1
	adds r4, r4, r6
_080B92C6:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, r9
	str r3, [sp, #0x30]
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, r9
	bl __udivsi3
	adds r2, r0, #0
	ldr r4, [sp, #0x1c]
	adds r1, r2, #0
	muls r1, r4, r1
	lsls r5, r5, #0x10
	ldr r0, _080B9390
	mov r4, r8
	ands r4, r0
	orrs r5, r4
	ldr r3, [sp, #0x30]
	cmp r5, r1
	bhs _080B9304
	subs r2, #1
	adds r5, r5, r6
	cmp r5, r6
	blo _080B9304
	cmp r5, r1
	bhs _080B9304
	subs r2, #1
	adds r5, r5, r6
_080B9304:
	lsls r6, r3, #0x10
	orrs r6, r2
	subs r1, r5, r1
	mov r8, r1
	ldr r0, _080B9390
	mov r9, r0
	adds r1, r6, #0
	ands r1, r0
	lsrs r3, r6, #0x10
	adds r0, r7, #0
	mov r2, r9
	ands r0, r2
	lsrs r2, r7, #0x10
	adds r5, r1, #0
	muls r5, r0, r5
	adds r4, r1, #0
	muls r4, r2, r4
	adds r1, r3, #0
	muls r1, r0, r1
	muls r3, r2, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r1
	cmp r4, r1
	bhs _080B933C
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_080B933C:
	lsrs r0, r4, #0x10
	adds r3, r3, r0
	mov r1, r9
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r1, r0, r5
	cmp r3, r8
	bhi _080B9356
	cmp r3, r8
	bne _080B935A
	cmp r1, sl
	bls _080B935A
_080B9356:
	subs r6, #1
_080B9358:
	subs r0, r1, r7
_080B935A:
	movs r2, #0
	str r2, [sp, #0x10]
_080B935E:
	str r6, [sp, #0x20]
	ldr r3, [sp, #0x10]
	str r3, [sp, #0x24]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	ldr r4, [sp, #0]
	cmp r4, #0
	beq _080B9380
	negs r0, r1
	str r0, [sp, #0x28]
	negs r1, r2
	cmp r0, #0
	beq _080B937A
	subs r1, #1
_080B937A:
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
_080B9380:
	adds r0, r1, #0
	adds r1, r2, #0
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
_080B9390: .4byte 0x0000FFFF
	thumb_func_end __divdi3
