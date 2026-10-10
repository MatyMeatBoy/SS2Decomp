	thumb_func_start sub_080760E8
sub_080760E8: @ 0x080760E8
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	mov r9, r3
	movs r4, #0
	ldr r1, _08076194
	lsls r0, r6, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _0807611E
	movs r3, #1
_0807610C:
	adds r4, #1
	cmp r4, #0xf
	bhi _08076186
	adds r1, r3, #0
	lsls r1, r4
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne _0807610C
_0807611E:
	cmp r4, #0xf
	bhi _08076186
	movs r0, #0xf0
	lsls r0, r0, #2
	bl sub_08001494
	adds r3, r0, #0
	ldr r0, _08076198
	lsls r5, r6, #2
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r2, r0, r1
	str r3, [r2, #0x20]
	cmp r3, #0
	beq _08076186
	ldr r0, _0807619C
	adds r0, r5, r0
	ldr r0, [r0, #0]
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #3
	adds r1, r1, r0
	str r6, [r1, #0]
	str r4, [r1, #4]
	str r7, [r1, #8]
	mov r0, r8
	str r0, [r1, #0x14]
	mov r6, r9
	str r6, [r1, #0x10]
	movs r0, #0x34
	str r0, [r2, #8]
	ldr r0, _080761A0
	str r0, [r2, #0xc]
	movs r6, #0xef
	lsls r6, r6, #2
	adds r0, r3, r6
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r2, #0x24]
	adds r0, r2, #0
	bl sub_08000274
	ldr r2, _08076194
	adds r2, r5, r2
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
_08076186:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08076194: .4byte gUnk_030063E0
_08076198: .4byte gUnk_030063B0
_0807619C: .4byte gUnk_03006380
_080761A0: .4byte sub_08075778
	thumb_func_end sub_080760E8
