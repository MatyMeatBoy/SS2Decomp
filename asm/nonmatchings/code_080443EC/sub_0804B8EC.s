	thumb_func_start sub_0804B8EC
sub_0804B8EC: @ 0x0804B8EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r4, #0x64
	add r5, sp, #4
	b _0804B90A
_0804B900:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804B916
_0804B90A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804B900
_0804B916:
	movs r0, #2
	mov sl, r0
	ldr r0, _0804B97C
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	mov r8, r2
	adds r0, #0x82
	movs r1, #0
	ldrsh r7, [r0, r1]
	movs r4, #0
	lsls r6, r6, #0x10
	ldr r2, _0804B980
	mov r9, r2
_0804B934:
	mov r0, sp
	mov r1, r8
	asrs r2, r6, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r5, #0
	adds r1, r7, #0
	mov r3, r9
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	add r4, sl
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _0804B934
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0804B97C: .4byte gUnk_03003170
_0804B980: .4byte 0xFED40000
	thumb_func_end sub_0804B8EC
