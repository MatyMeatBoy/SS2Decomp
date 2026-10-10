	thumb_func_start sub_08097EF0
sub_08097EF0: @ 0x08097EF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	mov r8, r1
	movs r7, #0
	ldr r5, _08097F60
	ldrh r1, [r5, #0]
	movs r2, #0
	ldrsh r0, [r5, r2]
	ldr r2, _08097F64
	cmp r0, r2
	ble _08097F0C
	movs r7, #2
_08097F0C:
	adds r4, r2, #0
	ands r4, r1
	strh r4, [r5, #0]
	ldr r6, _08097F68
	ldrh r0, [r6, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	lsls r0, r0, #0xc
	movs r3, #0
	ldrsh r1, [r5, r3]
	muls r0, r1, r0
	asrs r3, r0, #0xc
	ands r3, r2
	asrs r0, r0, #0x18
	lsls r2, r0, #1
	mov r0, ip
	cmp r0, #1
	bne _08097F38
	movs r0, #0
	ldrsh r1, [r6, r0]
	adds r0, r2, #1
	subs r2, r1, r0
_08097F38:
	ldr r0, _08097F6C
	ldrh r0, [r0, #0]
	adds r0, r4, r0
	strh r0, [r5, #0]
	adds r0, r2, #0
	adds r1, r3, #0
	mov r2, ip
	mov r3, r8
	bl sub_08096BA8
	cmp r0, #1
	bne _08097F52
	movs r7, #1
_08097F52:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_08097F60: .4byte gUnk_030002BA
_08097F64: .4byte 0x00000FFF
_08097F68: .4byte gUnk_030002B4
_08097F6C: .4byte gUnk_030002B8
	thumb_func_end sub_08097EF0
