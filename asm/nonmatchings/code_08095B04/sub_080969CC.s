	thumb_func_start sub_080969CC
sub_080969CC: @ 0x080969CC
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r6, _08096AE8
	ldr r5, _08096AEC
	ldrb r0, [r5, #0xd]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldrh r0, [r5, #0]
	bl sub_08090494
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08090434
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	ldrb r0, [r5, #0xd]
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldrh r0, [r5, #0]
	bl sub_08090494
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08090434
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrb r0, [r5, #0xd]
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r1, #0
	ldrsh r4, [r0, r1]
	negs r4, r4
	ldrh r0, [r5, #2]
	bl sub_08090494
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08090434
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrb r0, [r5, #0xd]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldrh r0, [r5, #2]
	bl sub_08090494
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08090434
	lsls r0, r0, #0x10
	ldrh r3, [r5, #8]
	ldrh r1, [r5, #4]
	adds r3, r3, r1
	ldrh r4, [r5, #0xa]
	ldrh r5, [r5, #6]
	adds r4, r4, r5
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	movs r5, #0x78
	subs r3, r5, r3
	lsls r3, r3, #8
	mov r1, r9
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #3
	subs r3, r3, r1
	mov r1, r8
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	subs r6, r3, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r5, r5, r4
	lsls r5, r5, #8
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #3
	subs r5, r5, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	subs r5, r5, r1
	bl sub_0800CCCC
	cmp r0, #0
	bne _08096ADC
	bl sub_0800CC98
	cmp r0, #0
	bne _08096ADC
	bl sub_0800CD8C
	cmp r0, #0
	bne _08096ADC
	bl sub_0800CD34
	cmp r0, #0
	bne _08096ADC
	ldr r0, _08096AF0
	mov r1, r9
	strh r1, [r0, #0x10]
	mov r1, r8
	strh r1, [r0, #0x12]
	strh r7, [r0, #0x14]
	strh r4, [r0, #0x16]
	strh r6, [r0, #0x18]
	strh r5, [r0, #0x1c]
	asrs r1, r6, #0x10
	strh r1, [r0, #0x1a]
	asrs r1, r5, #0x10
	strh r1, [r0, #0x1e]
_08096ADC:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08096AE8: .4byte gUnk_080B9704
_08096AEC: .4byte gUnk_030002A0
_08096AF0: .4byte gUnk_03001250
	thumb_func_end sub_080969CC
