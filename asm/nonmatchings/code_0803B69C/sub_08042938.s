	thumb_func_start sub_08042938
sub_08042938: @ 0x08042938
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08042978
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_080020F4
	adds r1, r0, #0
	cmp r0, #1
	beq _0804298C
	cmp r0, #1
	bgt _0804297C
	cmp r0, #0
	beq _08042986
	b _080429B4
	.2byte 0x0000
_08042978: .4byte gUnk_03003CE0
_0804297C:
	cmp r1, #2
	beq _08042992
	cmp r1, #3
	beq _080429A8
	b _080429B4
_08042986:
	movs r0, #0
	movs r1, #0x6c
	b _08042996
_0804298C:
	movs r0, #0
	movs r1, #0x84
	b _08042996
_08042992:
	movs r0, #0
	movs r1, #0x54
_08042996:
	movs r2, #0x80
	movs r3, #0
	bl sub_08028AAC
	b _080429B4
_080429A0:
	adds r2, r1, #0
	b _08042A10
_080429A4:
	adds r0, r1, #0
	b _08042A44
_080429A8:
	movs r0, #0
	movs r1, #0x9c
	movs r2, #0x80
	movs r3, #0
	bl sub_08028AAC
_080429B4:
	movs r0, #0
	movs r1, #4
	bl sub_080290E4
	ldr r0, _08042A60
	ldr r0, [r0, #0]
	ldr r2, _08042A64
	adds r1, r0, r2
	movs r2, #0
	add r3, sp, #0xc
	mov sl, r3
_080429CA:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _080429DE
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080429CA
	bl sub_080003F0
	movs r1, #0
_080429DE:
	cmp r1, #0
	beq _080429E6
	movs r0, #4
	strh r0, [r1, #0x36]
_080429E6:
	movs r0, #0x3a
	movs r1, #0x78
	movs r2, #0x52
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _08042A60
	ldr r0, [r0, #0]
	ldr r2, _08042A64
	adds r1, r0, r2
	movs r2, #0
_080429FC:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _080429A0
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080429FC
	bl sub_080003F0
	movs r2, #0
_08042A10:
	cmp r2, #0
	beq _08042A24
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0x10
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_08042A24:
	ldr r5, _08042A68
	ldr r0, _08042A60
	ldr r0, [r0, #0]
	ldr r3, _08042A64
	adds r1, r0, r3
	movs r2, #0
_08042A30:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _080429A4
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08042A30
	bl sub_080003F0
	movs r0, #0
_08042A44:
	cmp r0, #0
	beq _08042A4A
	str r5, [r0, #0x44]
_08042A4A:
	movs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _08042A6C
	ldr r0, _08042A60
	ldr r0, [r0, #0]
	movs r1, #0xdf
	lsls r1, r1, #1
	adds r0, r0, r1
	b _08042A76
_08042A60: .4byte gUnk_03005CF4
_08042A64: .4byte 0x000007A4
_08042A68: .4byte sub_080308B4
_08042A6C:
	ldr r0, _08042A9C
	ldr r0, [r0, #0]
	movs r2, #0xd9
	lsls r2, r2, #1
	adds r0, r0, r2
_08042A76:
	strb r4, [r0, #0]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08042AA0
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #3
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_08067D74
	movs r4, #2
	b _08042AAE
	.2byte 0x0000
_08042A9C: .4byte gUnk_03005CF4
_08042AA0: .4byte gUnk_03003CE0
_08042AA4:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08042ABA
_08042AAE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08042AA4
_08042ABA:
	bl sub_0800CC98
	cmp r0, #0
	bne _08042AFC
	bl sub_0801AB24
	cmp r0, #1
	beq _08042AE0
	cmp r0, #1
	bgt _08042AD4
	cmp r0, #0
	beq _08042ADA
	b _08042AF4
_08042AD4:
	cmp r0, #2
	beq _08042AE8
	b _08042AF4
_08042ADA:
	bl sub_080576A8
	b _08042AF4
_08042AE0:
	movs r0, #6
	bl sub_0801AB50
	b _08042AF4
_08042AE8:
	movs r0, #6
	bl sub_0801AB90
	b _08042AF4
_08042AF0:
	bl sub_080003F0
_08042AF4:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08042AF0
_08042AFC:
	movs r3, #0xa
	mov r9, r3
	ldr r0, _08042B50
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r4, #0
	mov r8, r4
	ldr r7, _08042B54
_08042B16:
	add r0, sp, #8
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	mov r0, sl
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
	bl sub_0800BB80
	bl sub_080003F0
	add r4, r9
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _08042B16
	b _08042B5C
_08042B50: .4byte gUnk_03003170
_08042B54: .4byte 0xFFE80000
_08042B58:
	bl sub_080003F0
_08042B5C:
	bl sub_0805F184
	cmp r0, #0
	bne _08042B58
	b _08042B6A
_08042B66:
	bl sub_080003F0
_08042B6A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08042B66
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08042B8C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08042B94
	.2byte 0x0000
_08042B8C: .4byte 0x00140106
_08042B90:
	bl sub_080003F0
_08042B94:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08042B90
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08042938
