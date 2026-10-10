	thumb_func_start sub_080217D8
sub_080217D8: @ 0x080217D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	adds r4, r0, #0
	str r1, [sp, #0x4c]
	ldr r1, _0802183C
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #1
	bl sub_08065158
	add r1, sp, #0x10
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
	ldr r2, _08021840
	ands r2, r4
	lsrs r4, r4, #0x10
	str r4, [sp, #0x54]
	cmp r2, #3
	bhi _08021848
	ldr r1, _08021844
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r2, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r0, r0, r1
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	mov sl, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	b _08021866
	.2byte 0x0000
_0802183C: .4byte 0x0005008C
_08021840: .4byte 0x0000FFFF
_08021844: .4byte gUnk_03003CE0
_08021848:
	ldr r0, _0802187C
	ldr r1, [r0, #0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	adds r0, r0, r1
	ldr r1, _08021880
	adds r0, r0, r1
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	mov sl, r1
	ldr r0, [r0, #0x18]
	asrs r0, r0, #8
_08021866:
	mov r9, r0
	add r0, sp, #0x44
	movs r2, #0
	strh r2, [r0, #0]
	mov r1, sp
	adds r1, #0x46
	strh r2, [r1, #0]
	movs r2, #0x14
	str r2, [sp, #0x50]
	b _0802191A
	.2byte 0x0000
_0802187C: .4byte gUnk_030056F4
_08021880: .4byte 0xFFFFF480
_08021884:
	ldr r0, _08021954
	ldr r0, [r0, #0]
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	bne _08021896
	movs r0, #1
	negs r0, r0
	add r9, r0
_08021896:
	bl sub_0800CC98
	cmp r0, #0
	bne _08021916
	bl sub_0800CD8C
	adds r7, r0, #0
	cmp r7, #0
	bne _08021916
	bl sub_0800CCCC
	adds r2, r0, #0
	mov r0, sl
	mov r1, r9
	bl sub_0800BC44
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, [sp, #0x54]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	str r5, [sp, #0]
	add r0, sp, #0x10
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r2, r9
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	add r5, sp, #0x48
	mov r6, sp
	adds r6, #0x4a
	movs r2, #0x10
	str r2, [sp, #0]
	str r7, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r1, #1
	add r2, sp, #0x44
	ldrh r3, [r2, #0]
	str r4, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r2, r8
	bl sub_08007870
_08021916:
	bl sub_080003F0
_0802191A:
	bl sub_0800CB78
	cmp r0, #0
	bne _08021934
	ldr r0, [sp, #0x50]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
	ldr r0, _08021958
	ldr r1, [sp, #0x50]
	cmp r1, r0
	bne _08021884
_08021934:
	ldr r2, _0802195C
	movs r1, #1
	ldr r0, [sp, #0x4c]
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08021954: .4byte gUnk_03002344
_08021958: .4byte 0x0000FFFF
_0802195C: .4byte gUnk_03005CE4
	thumb_func_end sub_080217D8
