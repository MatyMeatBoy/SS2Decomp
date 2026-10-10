	thumb_func_start sub_08094DEC
sub_08094DEC: @ 0x08094DEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	mov r9, r0
	mov r8, r0
	movs r5, #0
	movs r7, #0
	ldr r6, _08094E7C
	ldr r4, _08094E80
	movs r2, #0
	mov sl, r2
_08094E0A:
	lsls r0, r7, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	asrs r0, r0, #8
	adds r3, r0, #0
	adds r3, #8
	movs r1, #8
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	add r8, r0
	adds r0, r5, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r0, r0, #3
	strh r0, [r4, #0]
	mov r2, r8
	asrs r0, r2, #8
	strh r0, [r4, #2]
	movs r0, #0x80
	add r9, r0
	lsls r0, r5, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r0, r0, #3
	strh r0, [r4, #4]
	mov r2, r9
	asrs r0, r2, #8
	strh r0, [r4, #6]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0]
	mov r0, sl
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0x32
	movs r2, #1
	bl sub_0800903C
	adds r0, r7, #3
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	bl sub_080003F0
	b _08094E0A
_08094E7C: .4byte gUnk_080B9704
_08094E80: .4byte gUnk_03001250
	thumb_func_end sub_08094DEC
