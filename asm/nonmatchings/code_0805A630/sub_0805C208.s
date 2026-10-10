	thumb_func_start sub_0805C208
sub_0805C208: @ 0x0805C208
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	mov r9, r1
	movs r0, #0
	mov sl, r0
	movs r7, #0
	movs r1, #0
	mov r8, r1
	ldrh r0, [r6, #0]
	cmp r0, #3
	beq _0805C2F4
	cmp r0, #3
	bgt _0805C232
	cmp r0, #2
	beq _0805C23C
	b _0805C32C
_0805C232:
	cmp r0, #4
	beq _0805C310
	cmp r0, #5
	beq _0805C2CE
	b _0805C32C
_0805C23C:
	ldrh r0, [r6, #2]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0]
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	bne _0805C268
	ldr r5, _0805C264
	bl sub_080008C8
	adds r2, r0, #0
	movs r1, #0xf
	ands r1, r2
	cmp r1, #7
	bls _0805C298
	b _0805C27E
_0805C264: .4byte gUnk_08478044
_0805C268:
	ldr r5, _0805C284
	bl sub_080008C8
	adds r2, r0, #0
	movs r4, #0xf
	ands r2, r4
	cmp r2, #2
	bhi _0805C288
	movs r1, #1
	mov r8, r1
	mov sl, r1
_0805C27E:
	movs r7, #1
	b _0805C330
	.2byte 0x0000
_0805C284: .4byte gUnk_08477F3C
_0805C288:
	cmp r2, #7
	bhi _0805C2B2
	bl sub_080008C8
	adds r2, r0, #0
	ands r2, r4
	cmp r2, #4
	bhi _0805C2A0
_0805C298:
	movs r7, #1
	movs r2, #1
	mov r8, r2
	b _0805C330
_0805C2A0:
	cmp r2, #0xa
	bhi _0805C2AC
	movs r1, #1
	mov r8, r1
	mov sl, r1
	b _0805C330
_0805C2AC:
	movs r2, #1
	mov sl, r2
	b _0805C27E
_0805C2B2:
	bl sub_080008C8
	adds r2, r0, #0
	ands r2, r4
	cmp r2, #4
	bhi _0805C2C4
	movs r1, #1
	mov r8, r1
	b _0805C330
_0805C2C4:
	cmp r2, #9
	bls _0805C27E
	movs r2, #1
	mov sl, r2
	b _0805C330
_0805C2CE:
	ldrh r0, [r6, #2]
	movs r1, #0xe0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xa0
	ldrb r1, [r1, #0]
	ldr r5, _0805C2EC
	cmp r1, #0
	beq _0805C320
	ldr r5, _0805C2F0
	b _0805C320
_0805C2EC: .4byte gUnk_08478158
_0805C2F0: .4byte gUnk_08478220
_0805C2F4:
	ldrh r0, [r6, #2]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0xc]
	ldr r5, _0805C30C
	movs r2, #0
	mov r8, r2
	b _0805C330
	.2byte 0x0000
_0805C30C: .4byte gUnk_08478158
_0805C310:
	ldrh r0, [r6, #2]
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #8]
	ldr r5, _0805C328
_0805C320:
	movs r1, #0
	mov r8, r1
	b _0805C330
	.2byte 0x0000
_0805C328: .4byte gUnk_08478158
_0805C32C:
	movs r0, #1
	b _0805C4EC
_0805C330:
	ldrh r1, [r6, #0]
	cmp r1, #5
	bgt _0805C360
	cmp r1, #3
	blt _0805C360
	bl sub_080008C8
	adds r2, r0, #0
	movs r4, #0xf
	ands r2, r4
	cmp r2, #7
	bhi _0805C35A
	bl sub_080008C8
	adds r2, r0, #0
	ands r2, r4
	cmp r2, #7
	bls _0805C364
	movs r2, #1
	mov sl, r2
	b _0805C360
_0805C35A:
	movs r7, #1
	movs r1, #1
	mov sl, r1
_0805C360:
	cmp r7, #0
	beq _0805C39A
_0805C364:
	ldrh r7, [r5, #0]
	bl sub_080008C8
	adds r2, r0, #0
	ldrh r1, [r5, #2]
	bl sub_080B95E4
	adds r2, r0, #0
	adds r5, #4
	movs r4, #0
	cmp r4, r7
	bhs _0805C39A
	ldrh r3, [r5, #2]
	cmp r4, r2
	bls _0805C392
_0805C382:
	adds r4, #1
	adds r1, r3, #0
	adds r5, #4
	cmp r4, r7
	bhs _0805C39A
	ldrh r3, [r5, #2]
	cmp r1, r2
	bhi _0805C382
_0805C392:
	cmp r3, r2
	blo _0805C382
	ldrh r1, [r5, #0]
	strh r1, [r6, #4]
_0805C39A:
	mov r2, r8
	cmp r2, #0
	beq _0805C3DC
	ldr r5, _0805C3F0
	ldrh r0, [r5, #0]
	adds r7, r0, #1
	bl sub_080008C8
	adds r2, r0, #0
	ldrh r1, [r5, #2]
	adds r1, #1
	bl sub_080B95E4
	adds r2, r0, #0
	adds r5, #4
	movs r4, #0
	cmp r4, r7
	bhs _0805C3DC
	ldrh r3, [r5, #2]
	cmp r4, r2
	bls _0805C3D4
_0805C3C4:
	adds r4, #1
	adds r1, r3, #1
	adds r5, #4
	cmp r4, r7
	bhs _0805C3DC
	ldrh r3, [r5, #2]
	cmp r1, r2
	bhi _0805C3C4
_0805C3D4:
	cmp r3, r2
	blo _0805C3C4
	ldrh r1, [r5, #0]
	strb r1, [r6, #7]
_0805C3DC:
	mov r1, sl
	cmp r1, #0
	beq _0805C43E
	movs r0, #1
	mov r2, r9
	ands r0, r2
	cmp r0, #0
	beq _0805C3F8
	ldr r5, _0805C3F4
	b _0805C404
_0805C3F0: .4byte gUnk_084782F4
_0805C3F4: .4byte gUnk_08478378
_0805C3F8:
	bl sub_0800CE30
	ldr r5, _0805C450
	cmp r0, #0
	beq _0805C404
	ldr r5, _0805C454
_0805C404:
	ldrh r0, [r5, #0]
	adds r7, r0, #1
	bl sub_080008C8
	adds r2, r0, #0
	ldrh r1, [r5, #2]
	adds r1, #1
	bl sub_080B95E4
	adds r2, r0, #0
	adds r5, #4
	movs r4, #0
	cmp r4, r7
	bhs _0805C43E
	ldrh r3, [r5, #2]
	cmp r4, r2
	bls _0805C436
_0805C426:
	adds r4, #1
	adds r1, r3, #1
	adds r5, #4
	cmp r4, r7
	bhs _0805C43E
	ldrh r3, [r5, #2]
	cmp r1, r2
	bhi _0805C426
_0805C436:
	cmp r3, r2
	blo _0805C426
	ldrh r1, [r5, #0]
	strb r1, [r6, #6]
_0805C43E:
	ldrh r1, [r6, #0]
	cmp r1, #3
	beq _0805C478
	cmp r1, #3
	bgt _0805C458
	cmp r1, #2
	beq _0805C462
	b _0805C4D8
	.2byte 0x0000
_0805C450: .4byte gUnk_08478310
_0805C454: .4byte gUnk_08478338
_0805C458:
	cmp r1, #4
	beq _0805C48E
	cmp r1, #5
	beq _0805C4C4
	b _0805C4D8
_0805C462:
	movs r4, #0
	ldr r2, [sp, #0]
	adds r2, #0xb0
_0805C468:
	ldrh r1, [r2, #0]
	cmp r1, #0
	bne _0805C4A4
	adds r2, #4
	adds r4, #1
	cmp r4, #2
	bls _0805C468
	b _0805C4D8
_0805C478:
	movs r4, #0
	ldr r2, [sp, #0xc]
	adds r2, #0xa4
_0805C47E:
	ldrh r1, [r2, #0]
	cmp r1, #0
	bne _0805C4B4
	adds r2, #4
	adds r4, #1
	cmp r4, #2
	bls _0805C47E
	b _0805C4D8
_0805C48E:
	movs r4, #0
	ldr r2, [sp, #8]
	adds r2, #0xa4
_0805C494:
	ldrh r1, [r2, #0]
	cmp r1, #0
	bne _0805C4A4
	adds r2, #4
	adds r4, #1
	cmp r4, #2
	bls _0805C494
	b _0805C4D8
_0805C4A4:
	movs r2, #0
	movs r1, #0
	strh r1, [r6, #4]
	strb r2, [r6, #6]
	strb r2, [r6, #7]
	movs r1, #1
	mov r9, r1
	b _0805C4D8
_0805C4B4:
	movs r2, #0
	movs r1, #0
	strh r1, [r6, #4]
	strb r2, [r6, #6]
	strb r2, [r6, #7]
	movs r2, #1
	mov r9, r2
	b _0805C4D8
_0805C4C4:
	movs r4, #0
	ldr r2, [sp, #4]
	adds r2, #0xa4
_0805C4CA:
	ldrh r1, [r2, #0]
	cmp r1, #0
	bne _0805C4B4
	adds r2, #4
	adds r4, #1
	cmp r4, #2
	bls _0805C4CA
_0805C4D8:
	ldr r1, [r6, #4]
	cmp r1, #0
	beq _0805C4EC
	movs r1, #1
	mov r2, r9
	ands r2, r1
	cmp r2, #0
	beq _0805C4EA
	movs r1, #0
_0805C4EA:
	strb r1, [r6, #8]
_0805C4EC:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0805C208
