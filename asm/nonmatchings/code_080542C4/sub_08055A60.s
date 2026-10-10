	thumb_func_start sub_08055A60
sub_08055A60: @ 0x08055A60
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	ldr r6, _08055A78
	ldr r0, _08055A7C
	ldr r0, [r0, #0]
	ldr r1, _08055A80
	adds r4, r0, r1
	movs r5, #0
	b _08055A88
	.2byte 0x0000
_08055A78: .4byte sub_08055BA4
_08055A7C: .4byte gUnk_03005CF4
_08055A80: .4byte 0x00000E34
_08055A84:
	adds r5, #1
	adds r4, #0x28
_08055A88:
	cmp r5, #0x1d
	bhi _08055AC8
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08055A84
	b _08055A9C
_08055A98:
	bl sub_080003F0
_08055A9C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08055A98
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
	movs r1, #0
	bl sub_08000274
	mov r8, r4
_08055AC8:
	ldr r7, _08055AD8
	ldr r0, _08055ADC
	ldr r0, [r0, #0]
	ldr r1, _08055AE0
	adds r4, r0, r1
	movs r6, #0
	b _08055AE8
	.2byte 0x0000
_08055AD8: .4byte sub_0805A384
_08055ADC: .4byte gUnk_03005CF4
_08055AE0: .4byte 0x00000E34
_08055AE4:
	adds r6, #1
	adds r4, #0x28
_08055AE8:
	cmp r6, #0x1d
	bhi _08055B2C
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _08055AE4
	str r7, [sp, #0xc]
	mov r2, r8
	str r2, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _08055B3C
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #6
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_08055B2C:
	ldr r7, _08055B40
	ldr r0, _08055B44
	ldr r0, [r0, #0]
	ldr r2, _08055B48
	adds r4, r0, r2
	movs r6, #0
	b _08055B50
	.2byte 0x0000
_08055B3C: .4byte sub_0802A104
_08055B40: .4byte sub_0805A350
_08055B44: .4byte gUnk_03005CF4
_08055B48: .4byte 0x00000E34
_08055B4C:
	adds r6, #1
	adds r4, #0x28
_08055B50:
	cmp r6, #0x1d
	bhi _08055B94
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _08055B4C
	str r7, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _08055BA0
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #8
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_08055B94:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08055BA0: .4byte sub_0802A104
	thumb_func_end sub_08055A60
