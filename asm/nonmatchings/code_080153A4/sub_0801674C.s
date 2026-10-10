	thumb_func_start sub_0801674C
sub_0801674C: @ 0x0801674C
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov r9, r1
	movs r4, #0
	ldr r3, _080167F8
	movs r2, #1
	ldr r1, [r3, #0]
_08016760:
	adds r0, r2, #0
	lsls r0, r4
	ands r0, r1
	cmp r0, #0
	beq _08016808
	adds r4, #1
	cmp r4, #4
	ble _08016760
	movs r2, #1
	negs r2, r2
_08016774:
	cmp r2, #0
	blt _0801680C
	movs r1, #1
	lsls r1, r2
	ldr r0, [r3, #0]
	orrs r0, r1
	str r0, [r3, #0]
	ldr r1, _080167FC
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r5, [r1, #0]
	adds r5, r5, r0
	movs r0, #0
	mov r8, r0
	strh r2, [r5, #0]
	adds r0, r2, #4
	lsls r0, r0, #0x18
	str r0, [r5, #0x50]
	ldr r7, _08016800
	lsls r4, r2, #2
	adds r4, r4, r2
	lsls r4, r4, #3
	adds r0, r7, #0
	adds r0, #0xc
	adds r0, r4, r0
	str r6, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_08001494
	adds r1, r7, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r0, [r1, #0]
	adds r1, r7, #0
	adds r1, #0x10
	adds r1, r4, r1
	ldr r2, _08016804
	adds r0, r0, r2
	str r0, [r1, #0]
	adds r0, r7, #0
	adds r0, #8
	adds r0, r4, r0
	movs r1, #0x3c
	str r1, [r0, #0]
	adds r0, r7, #0
	adds r0, #0x18
	adds r0, r4, r0
	mov r1, r8
	str r1, [r0, #0]
	adds r0, r4, r7
	str r1, [r0, #0]
	adds r1, r7, #0
	adds r1, #0x24
	adds r4, r4, r1
	mov r2, r9
	str r2, [r4, #0]
	adds r1, r5, #0
	bl sub_08000274
	movs r0, #1
	b _0801680E
	.2byte 0x0000
_080167F8: .4byte gUnk_030056FC
_080167FC: .4byte gUnk_030056F4
_08016800: .4byte gUnk_03004220
_08016804: .4byte 0x000007FC
_08016808:
	adds r2, r4, #0
	b _08016774
_0801680C:
	movs r0, #0
_0801680E:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0801674C
