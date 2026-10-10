	thumb_func_start sub_0802230C
sub_0802230C: @ 0x0802230C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	mov ip, r1
	adds r7, r2, #0
	movs r5, #0
	ldr r2, _08022398
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _08022336
	movs r3, #1
_08022324:
	adds r5, #1
	cmp r5, #0x1f
	bhi _08022390
	adds r1, r3, #0
	lsls r1, r5
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne _08022324
_08022336:
	cmp r5, #0x1f
	bhi _08022390
	lsrs r6, r4, #8
	mov r1, ip
	lsrs r0, r1, #8
	lsls r0, r0, #0x10
	orrs r6, r0
	cmp r7, #0
	beq _0802234A
	movs r7, #1
_0802234A:
	ldr r1, _0802239C
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r4, r1, r0
	ldr r0, _080223A0
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _08022390
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x46
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x24]
	lsls r2, r7, #0x10
	orrs r2, r5
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08000274
	ldr r2, _08022398
	movs r1, #1
	lsls r1, r5
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
_08022390:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08022398: .4byte gUnk_03005CE4
_0802239C: .4byte gUnk_03005CE0
_080223A0: .4byte sub_08021AD8
	thumb_func_end sub_0802230C
