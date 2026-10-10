	thumb_func_start sub_0800A998
sub_0800A998: @ 0x0800A998
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r4, _0800AA20
	adds r1, r4, #0
	adds r1, #0x9c
	movs r0, #1
	str r0, [r1, #0]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0800AA24
	adds r1, r1, r0
	mov r9, r1
	mov r0, r9
	adds r0, #0x8c
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	subs r0, #0xf
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, r9
	adds r0, #0x90
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	bl sub_080003F0
	bl sub_080003F0
	adds r0, r4, #0
	adds r0, #0x8c
	ldrh r1, [r0, #0]
	cmp r1, #5
	bne _0800A9F4
	adds r0, #4
	ldrh r0, [r0, #0]
	cmp r0, #0xd
	beq _0800AA68
_0800A9F4:
	cmp r1, #0xa
	bne _0800AA42
	adds r0, r4, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #3
	beq _0800AA06
	cmp r0, #0xd
	bne _0800AA28
_0800AA06:
	ldr r1, [r4, #0x60]
	movs r0, #1
	adds r2, r5, #0
	movs r3, #0
	bl sub_080092C8
	ldr r1, [r4, #0x60]
	movs r0, #2
	adds r2, r5, #0
	movs r3, #0
	bl sub_080092C8
	b _0800AA5A
_0800AA20: .4byte gUnk_03003170
_0800AA24: .4byte gUnk_03003CE0
_0800AA28:
	ldr r1, [r4, #0x60]
	movs r0, #1
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_080092C8
	ldr r1, [r4, #0x60]
	movs r0, #2
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_080092C8
	b _0800AA5A
_0800AA42:
	ldr r1, [r4, #0x60]
	movs r0, #1
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_080092C8
	ldr r1, [r4, #0x60]
	movs r0, #2
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_080092C8
_0800AA5A:
	ldr r0, _0800AA88
	ldr r1, [r0, #0x60]
	movs r0, #3
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_080092C8
_0800AA68:
	ldr r4, _0800AA88
	adds r5, r4, #0
	adds r5, #0x8c
	ldrh r0, [r5, #0]
	movs r1, #0
	movs r2, #0
	bl sub_0800A34C
	ldr r0, _0800AA88
	adds r0, #0x9c
	mov r8, r0
	mov r1, sp
	adds r1, #4
	str r1, [sp, #0xc]
	b _0800ACCC
	.2byte 0x0000
_0800AA88: .4byte gUnk_03003170
_0800AA8C:
	bl sub_080003F0
_0800AA90:
	bl sub_0800CD34
	cmp r0, #0
	bne _0800AA8C
	ldr r4, _0800AB7C
	mov r2, r8
	ldr r0, [r2, #0]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0800AAA8
	b _0800AC96
_0800AAA8:
	bl sub_0800CD8C
	cmp r0, #0
	bne _0800AAB8
	movs r0, #0
	bl sub_080586B4
	str r0, [sp, #8]
_0800AAB8:
	ldr r0, _0800AB80
	bl sub_080003F4
	bl sub_080021A8
	adds r2, r0, #0
	cmp r2, #0
	beq _0800AACA
	b _0800ACE2
_0800AACA:
	mov r0, r9
	adds r0, #0x8c
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	subs r0, #0xf
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, r9
	adds r0, #0x90
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0800AAF4
	movs r5, #0
_0800AAF4:
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0800AAFE
	movs r7, #0
_0800AAFE:
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r0, [r0, #0]
	subs r0, #0x1e
	cmp r5, r0
	ble _0800AB0E
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0800AB0E:
	adds r1, r4, #0
	adds r1, #0x7e
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0800AB1C
	strh r2, [r1, #0]
_0800AB1C:
	adds r0, r4, #0
	adds r0, #0x72
	ldrh r0, [r0, #0]
	subs r0, #0x14
	cmp r7, r0
	ble _0800AB2C
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0800AB2C:
	adds r6, r4, #0
	adds r6, #0x8c
	ldrh r0, [r6, #0]
	cmp r0, #5
	bne _0800AB40
	adds r0, r4, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0xd
	beq _0800ABCC
_0800AB40:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0, #0]
	ldrh r1, [r6, #0]
	bl sub_08009138
	ldrh r0, [r6, #0]
	cmp r0, #0xa
	bne _0800AB9E
	adds r0, r4, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #3
	beq _0800AB60
	cmp r0, #0xd
	bne _0800AB84
_0800AB60:
	ldr r1, [r4, #0x60]
	movs r0, #1
	adds r2, r5, #0
	movs r3, #0
	bl sub_080092C8
	ldr r1, [r4, #0x60]
	movs r0, #2
	adds r2, r5, #0
	movs r3, #0
	bl sub_080092C8
	b _0800ABB6
	.2byte 0x0000
_0800AB7C: .4byte gUnk_03003170
_0800AB80: .4byte 0x000514C8
_0800AB84:
	ldr r1, [r4, #0x60]
	movs r0, #1
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_080092C8
	ldr r1, [r4, #0x60]
	movs r0, #2
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_080092C8
	b _0800ABB6
_0800AB9E:
	ldr r1, [r4, #0x60]
	movs r0, #1
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_080092C8
	ldr r1, [r4, #0x60]
	movs r0, #2
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_080092C8
_0800ABB6:
	ldr r0, _0800ABC8
	ldr r1, [r0, #0x60]
	movs r0, #3
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_080092C8
	b _0800AC3E
	.2byte 0x0000
_0800ABC8: .4byte gUnk_03003170
_0800ABCC:
	movs r0, #1
	movs r1, #1
	bl sub_08000990
	movs r0, #0x80
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	movs r0, #0xb8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	ldr r1, _0800AC6C
	ldr r0, [sp, #4]
	ands r0, r1
	ldr r1, _0800AC70
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl sub_08000AA8
	ldr r0, _0800AC74
	ldr r1, [sp, #0xc]
	strh r0, [r1, #0]
	movs r0, #1
	add r1, sp, #4
	bl sub_08000AA8
	ldr r0, _0800AC78
	ldr r2, [sp, #0xc]
	strh r0, [r2, #0]
	movs r0, #2
	add r1, sp, #4
	bl sub_08000AA8
	movs r0, #0xf
	str r0, [sp, #0]
	movs r0, #0x2d
	movs r1, #0x1d
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r3, #0
	bl sub_0800B650
	movs r0, #0x2c
	movs r1, #0x1e
	bl sub_0800B9F0
	bl sub_080003F0
	bl sub_080003F0
_0800AC3E:
	movs r3, #1
	mov sl, r3
	mov r1, r8
	ldr r0, [r1, #0]
	movs r1, #0xd
	negs r1, r1
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0]
	ldr r3, _0800AC7C
	ldrh r0, [r3, #0]
	ldr r1, [sp, #8]
	movs r2, #1
	bl sub_0800A34C
	bl sub_0801AB24
	cmp r0, #0
	bne _0800AC80
	movs r0, #0x14
	bl sub_0801AA34
	b _0800AC96
_0800AC6C: .4byte 0xFFFF0000
_0800AC70: .4byte 0x00001C08
_0800AC74: .4byte 0x00001D83
_0800AC78: .4byte 0x0000BE81
_0800AC7C: .4byte gUnk_030031FC
_0800AC80:
	bl sub_0801AB24
	cmp r0, #2
	bne _0800AC90
	movs r0, #6
	bl sub_0801AB90
	b _0800AC96
_0800AC90:
	movs r0, #6
	bl sub_0801AB50
_0800AC96:
	movs r4, #1
	ldr r6, _0800ACFC
	subs r5, r6, #2
_0800AC9C:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r3, #0
	ldrsh r2, [r6, r3]
	mov r3, sl
	bl sub_08009594
	adds r4, #1
	cmp r4, #3
	bls _0800AC9C
	movs r0, #0
	mov sl, r0
	bl sub_08009B84
	bl sub_080003F0
	mov r1, r8
	ldr r0, [r1, #0]
	movs r1, #0x40
	orrs r0, r1
	mov r2, r8
	str r0, [r2, #0]
_0800ACCC:
	mov r3, r8
	ldr r0, [r3, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0800ACE2
	bl sub_0800CB78
	cmp r0, #0
	bne _0800ACE2
	b _0800AA90
_0800ACE2:
	ldr r0, _0800AD00
	adds r0, #0x9c
	movs r1, #0x80
	lsls r1, r1, #0x18
	str r1, [r0, #0]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0800ACFC: .4byte gUnk_030031EE
_0800AD00: .4byte gUnk_03003170
	thumb_func_end sub_0800A998
