	thumb_func_start sub_08055E74
sub_08055E74: @ 0x08055E74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, _08055EB4
	ldr r0, [r0, #0]
	movs r5, #1
	ldr r1, [r0, #0x38]
	ands r5, r1
	cmp r5, #0
	beq _08055E88
	movs r5, #1
_08055E88:
	movs r4, #2
	ands r4, r1
	cmp r4, #0
	beq _08055E92
	movs r4, #1
_08055E92:
	movs r3, #4
	ands r3, r1
	cmp r3, #0
	beq _08055E9C
	movs r3, #1
_08055E9C:
	movs r2, #8
	ands r2, r1
	cmp r2, #0
	beq _08055EA6
	movs r2, #1
_08055EA6:
	cmp r5, #0
	bne _08055F04
	ldr r7, _08055EB8
	ldr r1, _08055EBC
	adds r4, r0, r1
	movs r6, #0
	b _08055EC4
_08055EB4: .4byte gUnk_03005CF4
_08055EB8: .4byte sub_080560D0
_08055EBC: .4byte 0x00000E34
_08055EC0:
	adds r6, #1
	adds r4, #0x28
_08055EC4:
	cmp r6, #0x1d
	bls _08055ECA
	b _08056080
_08055ECA:
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _08055EC0
	str r7, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _08055F00
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #6
	b _08056010
_08055F00: .4byte sub_0802A104
_08055F04:
	cmp r4, #0
	bne _08055F60
	ldr r7, _08055F14
	ldr r1, _08055F18
	adds r4, r0, r1
	movs r6, #0
	b _08055F20
	.2byte 0x0000
_08055F14: .4byte sub_080560D0
_08055F18: .4byte 0x00000E34
_08055F1C:
	adds r6, #1
	adds r4, #0x28
_08055F20:
	cmp r6, #0x1d
	bls _08055F26
	b _08056080
_08055F26:
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _08055F1C
	str r7, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _08055F5C
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #7
	b _08056010
_08055F5C: .4byte sub_0802A104
_08055F60:
	cmp r3, #0
	bne _08055FBC
	ldr r7, _08055F70
	ldr r1, _08055F74
	adds r4, r0, r1
	movs r6, #0
	b _08055F7C
	.2byte 0x0000
_08055F70: .4byte sub_080560D0
_08055F74: .4byte 0x00000E34
_08055F78:
	adds r6, #1
	adds r4, #0x28
_08055F7C:
	cmp r6, #0x1d
	bls _08055F82
	b _08056080
_08055F82:
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _08055F78
	str r7, [sp, #0xc]
	movs r0, #4
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _08055FB8
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #8
	b _08056010
_08055FB8: .4byte sub_0802A104
_08055FBC:
	cmp r2, #0
	bne _08056024
	ldr r7, _08055FCC
	ldr r1, _08055FD0
	adds r4, r0, r1
	movs r6, #0
	b _08055FD8
	.2byte 0x0000
_08055FCC: .4byte sub_080560D0
_08055FD0: .4byte 0x00000E34
_08055FD4:
	adds r6, #1
	adds r4, #0x28
_08055FD8:
	cmp r6, #0x1d
	bhi _08056080
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _08055FD4
	str r7, [sp, #0xc]
	movs r0, #6
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _08056020
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #9
_08056010:
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
	b _08056080
	.2byte 0x0000
_08056020: .4byte sub_0802A104
_08056024:
	ldr r7, _08056030
	ldr r1, _08056034
	adds r4, r0, r1
	movs r6, #0
	b _0805603C
	.2byte 0x0000
_08056030: .4byte sub_080560D0
_08056034: .4byte 0x00000E34
_08056038:
	adds r6, #1
	adds r4, #0x28
_0805603C:
	cmp r6, #0x1d
	bhi _08056080
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _08056038
	str r7, [sp, #0xc]
	movs r0, #8
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _0805609C
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0xa
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_08056080:
	bl sub_0800CC98
	cmp r0, #0
	bne _080560C8
	bl sub_0801AB24
	cmp r0, #1
	beq _080560AC
	cmp r0, #1
	bgt _080560A0
	cmp r0, #0
	beq _080560A6
	b _080560C0
	.2byte 0x0000
_0805609C: .4byte sub_0802A104
_080560A0:
	cmp r0, #2
	beq _080560B4
	b _080560C0
_080560A6:
	bl sub_080576A8
	b _080560C0
_080560AC:
	movs r0, #6
	bl sub_0801AB50
	b _080560C0
_080560B4:
	movs r0, #6
	bl sub_0801AB90
	b _080560C0
_080560BC:
	bl sub_080003F0
_080560C0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080560BC
_080560C8:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08055E74
