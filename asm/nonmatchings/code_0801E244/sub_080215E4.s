	thumb_func_start sub_080215E4
sub_080215E4: @ 0x080215E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	str r1, [sp, #0x48]
	mov r2, sp
	adds r2, #0x31
	movs r1, #8
	strb r1, [r2, #0]
	ldr r1, _0802161C
	mov r9, r1
	movs r2, #0x1e
	mov sl, r2
	ands r1, r0
	mov r9, r1
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	str r1, [sp, #0x4c]
	mov r2, r8
	lsls r2, r2, #0x10
	str r2, [sp, #0x50]
	add r7, sp, #0x44
	mov r6, sp
	adds r6, #0x46
	b _08021684
_0802161C: .4byte 0x0000FFFF
_08021620:
	bl sub_0800CC98
	cmp r0, #0
	bne _08021680
	bl sub_0800CD8C
	cmp r0, #0
	bne _08021680
	bl sub_0800CCCC
	adds r5, r0, #0
	cmp r5, #0
	bne _08021680
	mov r0, r9
	mov r1, r8
	movs r2, #0
	bl sub_0800BC44
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0x10
	str r0, [sp, #0]
	str r5, [sp, #4]
	ldr r1, [sp, #0x4c]
	asrs r0, r1, #0x10
	ldr r2, [sp, #0x50]
	asrs r1, r2, #0x10
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r1, #1
	str r4, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #1
	movs r3, #0
	bl sub_08007870
_08021680:
	bl sub_080003F0
_08021684:
	bl sub_0800CB78
	cmp r0, #0
	bne _0802169A
	mov r1, sl
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r1, #0
	bne _08021620
_0802169A:
	ldr r2, _080216B8
	movs r1, #1
	ldr r0, [sp, #0x48]
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080216B8: .4byte gUnk_03005CE4
	thumb_func_end sub_080215E4
