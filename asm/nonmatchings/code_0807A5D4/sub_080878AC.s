	thumb_func_start sub_080878AC
sub_080878AC: @ 0x080878AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r4, r0, #0
	str r1, [sp, #0]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsrs r4, r4, #0x10
	lsls r0, r4, #5
	bl sub_08001494
	str r0, [sp, #8]
	ldr r1, [sp, #4]
	lsls r0, r1, #5
	ldr r1, _080879B4
	adds r0, r0, r1
	lsls r2, r4, #3
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r2, r1
	ldr r1, [sp, #8]
	bl CpuSet
	lsls r4, r4, #4
	str r4, [sp, #0xc]
	movs r2, #0x64
	mov sl, r2
	movs r7, #0
	movs r5, #0xa
	movs r0, #0
	mov r8, r0
	movs r1, #0xf4
	lsls r1, r1, #2
	str r1, [sp, #0x10]
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	cmp r0, #0
	bne _08087902
	b _08087A46
_08087902:
	ldr r0, [sp, #4]
	lsls r1, r0, #5
	ldr r0, _080879B4
	adds r3, r1, r0
	ldr r4, [sp, #8]
	movs r6, #0
	lsls r1, r7, #1
	mov r9, r1
	subs r5, #1
	str r5, [sp, #0x14]
	ldr r2, [sp, #0xc]
	cmp r6, r2
	bhs _08087980
	movs r5, #0x1f
	movs r0, #0x7d
	negs r0, r0
	mov ip, r0
_08087924:
	ldr r0, [r4, #0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	mov r1, sl
	muls r1, r0, r1
	asrs r1, r1, #0xa
	ands r1, r5
	ldrb r2, [r3, #0]
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	ldr r0, [r4, #0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	mov r1, sl
	muls r1, r0, r1
	asrs r1, r1, #0xa
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3, #0]
	ldr r0, _080879B8
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0]
	ldr r0, [r4, #0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	mov r1, sl
	muls r1, r0, r1
	asrs r1, r1, #0xa
	ands r1, r5
	lsls r1, r1, #2
	ldrb r0, [r3, #1]
	mov r2, ip
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	adds r6, #1
	adds r3, #2
	adds r4, #2
	ldr r0, [sp, #0xc]
	cmp r6, r0
	blo _08087924
_08087980:
	bl sub_08000B38
	bl sub_080003F0
	ldr r0, _080879BC
	add r0, r9
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	subs r0, r0, r2
	muls r0, r1, r0
	lsrs r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r0, r8
	cmp r0, #1
	beq _080879D0
	cmp r0, #1
	blo _080879C0
	cmp r0, #2
	beq _080879E0
	b _080879EC
_080879B4: .4byte gUnk_03001F40
_080879B8: .4byte 0xFFFFFC1F
_080879BC: .4byte gUnk_080B9704
_080879C0:
	adds r0, r7, #0
	adds r0, #0x30
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r1, #0xf4
	lsls r1, r1, #2
	str r1, [sp, #0x10]
	b _080879EC
_080879D0:
	adds r0, r7, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r2, #0xf2
	lsls r2, r2, #2
	str r2, [sp, #0x10]
	b _080879EC
_080879E0:
	adds r0, r7, #4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #0xe0
	lsls r0, r0, #2
	str r0, [sp, #0x10]
_080879EC:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r7, r0
	bls _080879F6
	movs r7, #0
_080879F6:
	ldr r5, [sp, #0x14]
	movs r0, #1
	negs r0, r0
	cmp r5, r0
	bne _08087A3C
	ldr r0, _08087A1C
	ldr r0, [r0, #0]
	movs r1, #3
	bl __umodsi3
	mov r8, r0
	cmp r0, #1
	beq _08087A28
	cmp r0, #1
	blo _08087A20
	cmp r0, #2
	beq _08087A30
	b _08087A3C
	.2byte 0x0000
_08087A1C: .4byte gUnk_03002344
_08087A20:
	bl sub_080008C8
	movs r1, #0xa
	b _08087A36
_08087A28:
	bl sub_080008C8
	movs r1, #0xa
	b _08087A36
_08087A30:
	bl sub_080008C8
	movs r1, #0x1e
_08087A36:
	bl __umodsi3
	adds r5, r0, #0
_08087A3C:
	ldr r1, [sp, #0]
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _08087A46
	b _08087902
_08087A46:
	ldr r0, [sp, #8]
	bl sub_08001538
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080878AC
