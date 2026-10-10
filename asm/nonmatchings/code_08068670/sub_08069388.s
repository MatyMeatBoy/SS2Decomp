	thumb_func_start sub_08069388
sub_08069388: @ 0x08069388
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r5, r1, #0
	ldr r0, [sp, #0x1c]
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	mov r9, r0
	mov r0, r8
	subs r0, #2
	cmp r0, #5
	bhi _0806942E
	lsls r0, r0, #2
	ldr r1, _080693C4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080693C4: .4byte _080693C8
_080693C8:
	.4byte _080693E0
_080693CC: .4byte _080693F6
_080693D0: .4byte _0806942E
_080693D4: .4byte _080693FC
_080693D8: .4byte _08069412
_080693DC: .4byte _08069412
_080693E0:
	movs r1, #2
	ldrsh r0, [r5, r1]
	movs r1, #0x64
	subs r1, r1, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, #5
	muls r0, r1, r0
	movs r1, #0x64
	b _08069426
_080693F6:
	movs r1, #4
	ldrsh r0, [r5, r1]
	b _08069416
_080693FC:
	movs r1, #8
	ldrsh r0, [r5, r1]
	movs r1, #0x64
	subs r1, r1, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, #5
	muls r0, r1, r0
	movs r1, #0x19
	b _08069426
_08069412:
	movs r1, #0xa
	ldrsh r0, [r5, r1]
_08069416:
	movs r1, #0x64
	subs r1, r1, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, #5
	muls r0, r1, r0
	movs r1, #0x32
_08069426:
	bl __divsi3
	adds r4, r0, #0
	b _08069432
_0806942E:
	movs r4, #0
	strb r4, [r7, #1]
_08069432:
	bl sub_080020F4
	cmp r6, r0
	beq _08069446
	bl sub_0800CF80
	cmp r0, #0
	beq _08069462
	cmp r6, #3
	bhi _08069462
_08069446:
	ldr r1, _0806946C
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r6, r0
	adds r0, r0, r1
	adds r0, #0x73
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r0, r4, r0
	movs r1, #0x64
	bl __udivsi3
	adds r4, r0, #0
_08069462:
	cmp r4, r9
	bls _08069470
	mov r0, r8
	b _08069472
	.2byte 0x0000
_0806946C: .4byte gUnk_03003CE0
_08069470:
	movs r0, #0
_08069472:
	strb r0, [r7, #1]
	cmp r6, #3
	bls _08069496
	ldr r0, _080694A4
	ldr r1, [r0, #0]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #3
	subs r0, r0, r6
	lsls r0, r0, #5
	adds r0, r0, r1
	ldr r1, _080694A8
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	cmp r0, #3
	bne _08069496
	movs r0, #0
	strb r0, [r7, #1]
_08069496:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080694A4: .4byte gUnk_030056F4
_080694A8: .4byte 0xFFFFF6A6
	thumb_func_end sub_08069388
