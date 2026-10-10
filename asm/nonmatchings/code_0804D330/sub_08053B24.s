	thumb_func_start sub_08053B24
sub_08053B24: @ 0x08053B24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0x80
	lsls r0, r0, #3
	mov sl, r0
	ldr r0, _08053B90
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	add r5, sp, #4
	mov r9, r4
	ldr r0, _08053B94
	mov r8, r0
_08053B50:
	mov r0, sp
	adds r1, r7, #0
	mov r3, r9
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r5, #0
	adds r1, r6, #0
	mov r3, r8
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
	ble _08053B50
	movs r4, #1
	b _08053BA2
	.2byte 0x0000
_08053B90: .4byte gUnk_03003170
_08053B94: .4byte 0xFFEC0000
_08053B98:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08053BAE
_08053BA2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08053B98
_08053BAE:
	ldr r6, _08053BBC
	ldr r0, _08053BC0
	ldr r0, [r0, #0]
	ldr r1, _08053BC4
	adds r4, r0, r1
	movs r5, #0
	b _08053BCC
_08053BBC: .4byte sub_08053C5C
_08053BC0: .4byte gUnk_03005CF4
_08053BC4: .4byte 0x00000E34
_08053BC8:
	adds r5, #1
	adds r4, #0x28
_08053BCC:
	cmp r5, #0x1d
	bhi _08053C0A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08053BC8
	b _08053BE0
_08053BDC:
	bl sub_080003F0
_08053BE0:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08053BDC
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000274
_08053C0A:
	bl sub_0800CC98
	cmp r0, #0
	bne _08053C4C
	bl sub_0801AB24
	cmp r0, #1
	beq _08053C30
	cmp r0, #1
	bgt _08053C24
	cmp r0, #0
	beq _08053C2A
	b _08053C44
_08053C24:
	cmp r0, #2
	beq _08053C38
	b _08053C44
_08053C2A:
	bl sub_080576A8
	b _08053C44
_08053C30:
	movs r0, #6
	bl sub_0801AB50
	b _08053C44
_08053C38:
	movs r0, #6
	bl sub_0801AB90
	b _08053C44
_08053C40:
	bl sub_080003F0
_08053C44:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08053C40
_08053C4C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08053B24
