	thumb_func_start sub_0804F390
sub_0804F390: @ 0x0804F390
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa0
	movs r0, #0x80
	lsls r0, r0, #2
	mov sl, r0
	ldr r0, _0804F460
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r0, #0
	add r5, sp, #4
	mov r1, sp
	adds r1, #8
	str r1, [sp, #0x54]
	mov r2, sp
	adds r2, #0xc
	str r2, [sp, #0x58]
	mov r3, sp
	adds r3, #0x10
	str r3, [sp, #0x5c]
	adds r1, #0xc
	str r1, [sp, #0x60]
	adds r2, #0xc
	str r2, [sp, #0x68]
	adds r3, #0xc
	str r3, [sp, #0x6c]
	adds r1, #0xc
	str r1, [sp, #0x70]
	adds r2, #0xc
	str r2, [sp, #0x74]
	adds r3, #0xc
	str r3, [sp, #0x78]
	adds r1, #0xc
	str r1, [sp, #0x7c]
	adds r2, #0xc
	str r2, [sp, #0x80]
	adds r3, #0xc
	str r3, [sp, #0x84]
	adds r1, #0xc
	str r1, [sp, #0x88]
	adds r2, #0xc
	str r2, [sp, #0x8c]
	adds r3, #0xc
	str r3, [sp, #0x90]
	adds r1, #0xc
	str r1, [sp, #0x94]
	adds r2, #0xc
	str r2, [sp, #0x98]
	adds r3, #0xc
	str r3, [sp, #0x9c]
	movs r1, #0x80
	lsls r1, r1, #3
	mov r9, r1
	mov r8, r0
_0804F40C:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	mov r0, sp
	adds r1, r7, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	movs r0, #1
	negs r0, r0
	lsls r2, r0, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	asrs r2, r2, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB94
	ldr r0, [sp, #0]
	negs r0, r0
	ldr r1, [sp, #4]
	negs r1, r1
	bl sub_08097D18
	bl sub_080003F0
	add r4, sl
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r9
	ble _0804F40C
	movs r4, #2
	b _0804F46E
_0804F460: .4byte gUnk_03003170
_0804F464:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804F47A
_0804F46E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804F464
_0804F47A:
	ldr r0, _0804F4EC
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #2
	mov sl, r1
	movs r2, #0x80
	lsls r2, r2, #3
	mov r9, r2
	mov r8, r0
	movs r7, #0
_0804F49C:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #0x54]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x58]
	adds r1, r5, #0
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0xc]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB94
	ldr r0, [sp, #8]
	negs r0, r0
	ldr r1, [sp, #0xc]
	negs r1, r1
	bl sub_08097D18
	bl sub_080003F0
	add r4, sl
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r9
	ble _0804F49C
	movs r4, #2
	b _0804F4FA
	.2byte 0x0000
_0804F4EC: .4byte gUnk_03003170
_0804F4F0:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804F506
_0804F4FA:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804F4F0
_0804F506:
	ldr r0, _0804F578
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #2
	mov sl, r1
	movs r2, #0x80
	lsls r2, r2, #3
	mov r9, r2
	mov r8, r0
	ldr r7, _0804F57C
_0804F528:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #0x5c]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x60]
	adds r1, r5, #0
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB94
	ldr r0, [sp, #0x10]
	negs r0, r0
	ldr r1, [sp, #0x14]
	negs r1, r1
	bl sub_08097D18
	bl sub_080003F0
	add r4, sl
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r9
	ble _0804F528
	movs r4, #2
	b _0804F58A
	.2byte 0x0000
_0804F578: .4byte gUnk_03003170
_0804F57C: .4byte 0xFFFE0000
_0804F580:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804F596
_0804F58A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804F580
_0804F596:
	ldr r0, _0804F608
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #2
	mov sl, r1
	movs r2, #0x80
	lsls r2, r2, #3
	mov r9, r2
	mov r8, r0
	movs r7, #0
_0804F5B8:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #0x68]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x6c]
	adds r1, r5, #0
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x1c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB94
	ldr r0, [sp, #0x18]
	negs r0, r0
	ldr r1, [sp, #0x1c]
	negs r1, r1
	bl sub_08097D18
	bl sub_080003F0
	add r4, sl
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r9
	ble _0804F5B8
	movs r4, #2
	b _0804F616
	.2byte 0x0000
_0804F608: .4byte gUnk_03003170
_0804F60C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804F622
_0804F616:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804F60C
_0804F622:
	movs r1, #1
	ldr r0, _0804F69C
	str r0, [sp, #0x50]
_0804F628:
	ldr r0, [sp, #0x50]
	adds r0, #0x80
	movs r3, #0
	ldrsh r2, [r0, r3]
	mov r8, r2
	ldr r0, _0804F6A0
	movs r2, #0
	ldrsh r7, [r0, r2]
	movs r0, #0
	adds r1, #1
	str r1, [sp, #0x64]
	movs r3, #0x80
	lsls r3, r3, #3
	mov r9, r3
	lsls r6, r0, #0x10
	movs r1, #3
	negs r1, r1
	lsls r5, r1, #0x10
_0804F64C:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #0x70]
	mov r1, r8
	asrs r2, r6, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x74]
	adds r1, r7, #0
	asrs r2, r5, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x20]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x24]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB94
	ldr r0, [sp, #0x20]
	negs r0, r0
	ldr r1, [sp, #0x24]
	negs r1, r1
	bl sub_08097D18
	bl sub_080003F0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r4, r4, r2
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r9
	ble _0804F64C
	movs r4, #2
	b _0804F6AE
_0804F69C: .4byte gUnk_03003170
_0804F6A0: .4byte gUnk_030031F2
_0804F6A4:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804F6BA
_0804F6AE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804F6A4
_0804F6BA:
	ldr r0, [sp, #0x50]
	adds r0, #0x80
	movs r3, #0
	ldrsh r6, [r0, r3]
	ldr r0, _0804F728
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
	mov sl, r2
	movs r3, #0x80
	lsls r3, r3, #3
	mov r9, r3
	mov r8, r0
	movs r7, #0
_0804F6DA:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #0x78]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x7c]
	adds r1, r5, #0
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x28]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x2c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB94
	ldr r0, [sp, #0x28]
	negs r0, r0
	ldr r1, [sp, #0x2c]
	negs r1, r1
	bl sub_08097D18
	bl sub_080003F0
	add r4, sl
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r9
	ble _0804F6DA
	movs r4, #2
	b _0804F736
_0804F728: .4byte gUnk_030031F2
_0804F72C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804F742
_0804F736:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804F72C
_0804F742:
	ldr r1, [sp, #0x64]
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x3b
	bhi _0804F74E
	b _0804F628
_0804F74E:
	ldr r0, _0804F7C0
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #2
	mov sl, r1
	movs r2, #0x80
	lsls r2, r2, #3
	mov r9, r2
	mov r8, r0
	ldr r7, _0804F7C4
_0804F770:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #0x80]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x84]
	adds r1, r5, #0
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x30]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB94
	ldr r0, [sp, #0x30]
	negs r0, r0
	ldr r1, [sp, #0x34]
	negs r1, r1
	bl sub_08097D18
	bl sub_080003F0
	add r4, sl
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r9
	ble _0804F770
	movs r4, #2
	b _0804F7D2
	.2byte 0x0000
_0804F7C0: .4byte gUnk_03003170
_0804F7C4: .4byte 0xFFFE0000
_0804F7C8:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804F7DE
_0804F7D2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804F7C8
_0804F7DE:
	ldr r0, _0804F850
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #2
	mov sl, r1
	movs r2, #0x80
	lsls r2, r2, #3
	mov r9, r2
	mov r8, r0
	movs r7, #0
_0804F800:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #0x88]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x8c]
	adds r1, r5, #0
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x38]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x3c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB94
	ldr r0, [sp, #0x38]
	negs r0, r0
	ldr r1, [sp, #0x3c]
	negs r1, r1
	bl sub_08097D18
	bl sub_080003F0
	add r4, sl
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r9
	ble _0804F800
	movs r4, #2
	b _0804F85E
	.2byte 0x0000
_0804F850: .4byte gUnk_03003170
_0804F854:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804F86A
_0804F85E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804F854
_0804F86A:
	ldr r0, _0804F8DC
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #2
	mov sl, r1
	movs r2, #0x80
	lsls r2, r2, #3
	mov r9, r2
	mov r8, r0
	ldr r7, _0804F8E0
_0804F88C:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #0x90]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x94]
	adds r1, r5, #0
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x40]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x44]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB94
	ldr r0, [sp, #0x40]
	negs r0, r0
	ldr r1, [sp, #0x44]
	negs r1, r1
	bl sub_08097D18
	bl sub_080003F0
	add r4, sl
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r9
	ble _0804F88C
	movs r4, #2
	b _0804F8EE
	.2byte 0x0000
_0804F8DC: .4byte gUnk_03003170
_0804F8E0: .4byte 0xFFFF0000
_0804F8E4:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804F8FA
_0804F8EE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804F8E4
_0804F8FA:
	ldr r0, _0804F96C
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #2
	mov sl, r1
	movs r2, #0x80
	lsls r2, r2, #3
	mov r9, r2
	mov r8, r0
	movs r7, #0
_0804F91C:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #0x98]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x9c]
	adds r1, r5, #0
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x48]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x4c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB94
	ldr r0, [sp, #0x48]
	negs r0, r0
	ldr r1, [sp, #0x4c]
	negs r1, r1
	bl sub_08097D18
	bl sub_080003F0
	add r4, sl
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r9
	ble _0804F91C
	movs r4, #2
	b _0804F97A
	.2byte 0x0000
_0804F96C: .4byte gUnk_03003170
_0804F970:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804F986
_0804F97A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804F970
_0804F986:
	add sp, #0xa0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0804F390
