	thumb_func_start sub_0804B984
sub_0804B984: @ 0x0804B984
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	movs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _0804B9AC
	ldr r0, _0804B9A8
	ldr r1, [r0, #0]
	movs r2, #0xe2
	lsls r2, r2, #1
	adds r1, r1, r2
	b _0804B9B6
	.2byte 0x0000
_0804B9A8: .4byte gUnk_03005CF4
_0804B9AC:
	ldr r0, _0804B9EC
	ldr r1, [r0, #0]
	movs r3, #0xdc
	lsls r3, r3, #1
	adds r1, r1, r3
_0804B9B6:
	ldrb r1, [r1, #0]
	asrs r1, r1, #6
	ands r1, r4
	adds r4, r0, #0
	ldr r0, [r4, #0]
	movs r3, #2
	ldr r2, [r0, #0x38]
	ands r3, r2
	cmp r3, #0
	beq _0804B9CC
	movs r3, #1
_0804B9CC:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0804B9D6
	movs r0, #1
_0804B9D6:
	str r0, [sp, #0x20]
	cmp r1, #0
	beq _0804B9F4
	ldr r2, _0804B9F0
	movs r0, #6
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	b _0804BBE6
	.2byte 0x0000
_0804B9EC: .4byte gUnk_03005CF4
_0804B9F0: .4byte 0x0000270F
_0804B9F4:
	cmp r3, #0
	beq _0804BA90
	movs r0, #0x13
	movs r1, #0xb8
	movs r2, #0xbb
	bl sub_080289C0
	adds r7, r0, #0
	movs r0, #6
	movs r1, #0xb8
	movs r2, #0xca
	movs r3, #0
	bl sub_08028AAC
	ldr r0, _0804BA20
	mov r8, r0
	ldr r0, [r4, #0]
	ldr r1, _0804BA24
	adds r4, r0, r1
	movs r5, #0
	b _0804BA2C
	.2byte 0x0000
_0804BA20: .4byte sub_0804BEF8
_0804BA24: .4byte 0x00000E34
_0804BA28:
	adds r5, #1
	adds r4, #0x28
_0804BA2C:
	cmp r5, #0x1d
	bls _0804BA32
	b _0804BBE6
_0804BA32:
	adds r0, r4, #0
	bl sub_08000470
	adds r6, r0, #0
	cmp r6, #0
	bne _0804BA28
	movs r0, #0xb7
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #0xd2
	lsls r0, r0, #8
	str r0, [sp, #4]
	mov r1, sp
	movs r0, #0x14
	strh r0, [r1, #8]
	movs r0, #5
	strh r0, [r1, #0xa]
	mov r2, r8
	str r2, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _0804BA8C
	str r1, [r4, #0xc]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r4, #0x10]
	str r6, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
	b _0804BBE6
	.2byte 0x0000
_0804BA8C: .4byte sub_0805A874
_0804BA90:
	ldr r0, _0804BB2C
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	mov r8, r2
	adds r0, #0x82
	movs r1, #0
	ldrsh r7, [r0, r1]
	movs r4, #0
	add r6, sp, #0x18
	add r5, sp, #0x1c
	mov sl, r4
	ldr r2, _0804BB30
	mov r9, r2
_0804BAAE:
	adds r0, r6, #0
	mov r1, r8
	mov r3, sl
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r5, #0
	adds r1, r7, #0
	mov r3, r9
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x1c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r4, r0
	cmp r4, r0
	ble _0804BAAE
	movs r0, #0x13
	movs r1, #0xa0
	movs r2, #0x85
	bl sub_080289C0
	adds r7, r0, #0
	movs r0, #6
	movs r1, #0xb8
	movs r2, #0xca
	movs r3, #0
	bl sub_08028AAC
	ldr r1, [sp, #0x20]
	cmp r1, #0
	bne _0804BB8A
	bl sub_0800CE30
	adds r1, r0, #0
	cmp r1, #0
	beq _0804BB4C
	movs r1, #3
	movs r2, #0x23
	mov r0, sp
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r1, #0
	add r2, sp, #4
	movs r3, #0
_0804BB20:
	adds r0, r2, r1
	strb r3, [r0, #0]
	adds r1, #1
	cmp r1, #0xb
	bls _0804BB20
	b _0804BB38
_0804BB2C: .4byte gUnk_03003170
_0804BB30: .4byte 0xFFD80000
_0804BB34:
	bl sub_080003F0
_0804BB38:
	movs r0, #0x84
	lsls r0, r0, #6
	movs r1, #0xde
	lsls r1, r1, #7
	mov r2, sp
	bl sub_08067B9C
	cmp r0, #0
	beq _0804BB34
	b _0804BB7E
_0804BB4C:
	movs r1, #3
	movs r2, #0x91
	mov r0, sp
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r1, #0
	add r2, sp, #4
	movs r3, #0
_0804BB5C:
	adds r0, r2, r1
	strb r3, [r0, #0]
	adds r1, #1
	cmp r1, #0xb
	bls _0804BB5C
	b _0804BB6C
_0804BB68:
	bl sub_080003F0
_0804BB6C:
	movs r0, #0x84
	lsls r0, r0, #6
	movs r1, #0xde
	lsls r1, r1, #7
	mov r2, sp
	bl sub_08067B9C
	cmp r0, #0
	beq _0804BB68
_0804BB7E:
	ldr r0, _0804BB98
	ldr r2, [r0, #0]
	movs r1, #1
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
_0804BB8A:
	ldr r6, _0804BB9C
	ldr r0, _0804BB98
	ldr r0, [r0, #0]
	ldr r2, _0804BBA0
	adds r4, r0, r2
	movs r5, #0
	b _0804BBA8
_0804BB98: .4byte gUnk_03005CF4
_0804BB9C: .4byte sub_0805A088
_0804BBA0: .4byte 0x00000E34
_0804BBA4:
	adds r5, #1
	adds r4, #0x28
_0804BBA8:
	cmp r5, #0x1d
	bhi _0804BBE6
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804BBA4
	b _0804BBBC
_0804BBB8:
	bl sub_080003F0
_0804BBBC:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804BBB8
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r0, r1, r3
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08000274
_0804BBE6:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804BC28
	bl sub_0801AB24
	cmp r0, #1
	beq _0804BC0C
	cmp r0, #1
	bgt _0804BC00
	cmp r0, #0
	beq _0804BC06
	b _0804BC20
_0804BC00:
	cmp r0, #2
	beq _0804BC14
	b _0804BC20
_0804BC06:
	bl sub_080576A8
	b _0804BC20
_0804BC0C:
	movs r0, #6
	bl sub_0801AB50
	b _0804BC20
_0804BC14:
	movs r0, #6
	bl sub_0801AB90
	b _0804BC20
_0804BC1C:
	bl sub_080003F0
_0804BC20:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804BC1C
_0804BC28:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0804B984
