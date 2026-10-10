	thumb_func_start sub_0805C4FC
sub_0805C4FC: @ 0x0805C4FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	movs r0, #0
	str r0, [sp, #0]
	ldr r2, _0805C524
	mov r0, sp
	adds r1, r6, #0
	bl sub_080B8578
	cmp r4, #0
	bne _0805C528
	strh r4, [r6, #0]
	strh r4, [r6, #2]
	movs r0, #0
	b _0805C610
_0805C524: .4byte 0x05000004
_0805C528:
	subs r4, #1
	bl sub_080008C8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r5, #0
	movs r1, #0x64
	bl sub_080B95E4
	adds r5, r0, #0
	ldr r2, _0805C5C4
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r1, r0, #2
	adds r0, r1, r2
	ldrh r0, [r0, #0]
	movs r3, #0
	mov r8, r3
	cmp r0, r5
	blo _0805C554
	movs r0, #1
	mov r8, r0
_0805C554:
	cmp r7, #8
	bne _0805C55A
	movs r7, #6
_0805C55A:
	lsls r0, r7, #2
	adds r0, r0, r1
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r4, [r0, #0]
	ldrh r7, [r4, #0]
	bl sub_080008C8
	adds r5, r0, #0
	ldrh r1, [r4, #2]
	adds r1, #1
	bl sub_080B95E4
	adds r5, r0, #0
	adds r4, #8
	movs r2, #0
	movs r1, #0
	cmp r1, r7
	bhs _0805C5D2
_0805C580:
	ldrh r0, [r4, #4]
	cmp r2, r5
	bhi _0805C5C8
	cmp r0, r5
	blo _0805C5C8
	ldrh r1, [r4, #0]
	strh r1, [r6, #0]
	ldrh r0, [r4, #2]
	strh r0, [r6, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xa
	bne _0805C5D2
	str r5, [r6, #4]
	bl sub_080008C8
	adds r5, r0, #0
	ldrh r4, [r4, #2]
	lsls r0, r4, #4
	subs r0, r0, r4
	movs r1, #0xa
	bl sub_080B956C
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_080B95E4
	adds r5, r0, #0
	lsrs r0, r4, #1
	cmp r5, r0
	bhs _0805C5C0
	adds r5, r0, #0
_0805C5C0:
	str r5, [r6, #4]
	b _0805C5D2
_0805C5C4: .4byte gUnk_084E6DD8
_0805C5C8:
	adds r1, #1
	adds r2, r0, #1
	adds r4, #8
	cmp r1, r7
	blo _0805C580
_0805C5D2:
	mov r3, r8
	cmp r3, #0
	beq _0805C5E0
	adds r0, r6, #0
	movs r1, #0
	bl sub_0805C208
_0805C5E0:
	ldrh r0, [r6, #0]
	cmp r0, #9
	bne _0805C60E
	bl sub_080008C8
	movs r1, #0xa
	bl sub_080B95E4
	ldr r1, _0805C61C
	adds r1, #0x8c
	ldrh r2, [r1, #0]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r0, [r6, #4]
	bl sub_0800CE30
	cmp r0, #0
	beq _0805C60E
	ldrh r0, [r6, #4]
	adds r0, #0x64
	strh r0, [r6, #4]
_0805C60E:
	movs r0, #1
_0805C610:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0805C61C: .4byte gUnk_03003170
	thumb_func_end sub_0805C4FC
