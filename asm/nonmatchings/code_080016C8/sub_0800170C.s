	thumb_func_start sub_0800170C
sub_0800170C: @ 0x0800170C
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	bl sub_08000EF4
	movs r0, #0xc0
	bl sub_08000FD4
	bl sub_08000F2C
	ldr r1, _080017D8
	movs r0, #0
	strh r0, [r1, #0]
	ldr r2, _080017DC
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2, #0]
	ldrh r0, [r2, #0]
	ldr r3, _080017E0
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	movs r0, #0
	str r0, [sp, #0]
	ldr r4, _080017E4
	ldr r2, _080017E8
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _080017EC
	ldr r1, _080017F0
	ldr r2, _080017F4
	bl CpuSet
	ldr r0, _080017F8
	ldr r1, _080017FC
	ldr r2, _08001800
	bl CpuSet
	movs r0, #1
	negs r0, r0
	str r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x60
	str r0, [r4, #0x28]
	adds r0, #0x20
	str r0, [r4, #0x2c]
	movs r3, #0
	adds r5, r4, #0
	adds r5, #0xe0
	movs r2, #0
	movs r7, #0x30
	adds r7, r7, r4
	mov r8, r7
	movs r0, #0xa0
	adds r0, r0, r4
	mov ip, r0
	adds r6, r4, #0
	adds r6, #0xc0
	movs r7, #0x40
	adds r7, r7, r4
	mov r9, r7
_0800178E:
	lsls r1, r3, #2
	mov r7, ip
	adds r0, r2, r7
	mov r7, r8
	adds r7, #4
	mov r8, r7
	subs r7, #4
	stm r7!, {r0}
	adds r0, r2, r6
	mov r7, r9
	adds r7, #4
	mov r9, r7
	subs r7, #4
	stm r7!, {r0}
	adds r0, r4, #0
	adds r0, #0x50
	adds r1, r1, r0
	str r5, [r1, #0]
	adds r5, #0x60
	adds r2, #0x60
	adds r3, #1
	cmp r3, #3
	ble _0800178E
	bl sub_08000EF4
	movs r0, #0x80
	bl sub_08000F64
	bl sub_08000F2C
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080017D8: .4byte 0x04000134
_080017DC: .4byte 0x04000128
_080017E0: .4byte 0x00004003
_080017E4: .4byte gUnk_030024B0
_080017E8: .4byte 0x05000088
_080017EC: .4byte 0x080004B8
_080017F0: .4byte gUnk_030026D0
_080017F4: .4byte 0x04000010
_080017F8: .4byte 0x080004F8
_080017FC: .4byte gUnk_03002390
_08001800: .4byte 0x04000048
	thumb_func_end sub_0800170C
