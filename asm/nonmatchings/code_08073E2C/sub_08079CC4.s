	thumb_func_start sub_08079CC4
sub_08079CC4: @ 0x08079CC4
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	mov r9, r3
	movs r4, #0
	ldr r1, _08079D74
	lsls r0, r6, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _08079CFA
	movs r3, #1
_08079CE8:
	adds r4, #1
	cmp r4, #0xf
	bhi _08079D66
	adds r1, r3, #0
	lsls r1, r4
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne _08079CE8
_08079CFA:
	cmp r4, #0xf
	bhi _08079D66
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r3, r0, #0
	ldr r0, _08079D78
	lsls r5, r6, #2
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r2, r0, r1
	str r3, [r2, #0x20]
	cmp r3, #0
	beq _08079D66
	ldr r0, _08079D7C
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
	ldr r0, [sp, #0x1c]
	str r0, [r1, #0x10]
	mov r6, r9
	str r6, [r1, #0xc]
	movs r0, #0x34
	str r0, [r2, #8]
	ldr r0, _08079D80
	str r0, [r2, #0xc]
	movs r6, #0xff
	lsls r6, r6, #2
	adds r0, r3, r6
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r2, #0x24]
	adds r0, r2, #0
	bl sub_08000274
	ldr r2, _08079D74
	adds r2, r5, r2
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
_08079D66:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08079D74: .4byte gUnk_030063E0
_08079D78: .4byte gUnk_030063B0
_08079D7C: .4byte gUnk_03006380
_08079D80: .4byte sub_08079948
	thumb_func_end sub_08079CC4
