	thumb_func_start sub_08025890
sub_08025890: @ 0x08025890
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x128
	str r0, [sp, #0xbc]
	ldrh r0, [r0, #0]
	lsls r0, r0, #3
	str r0, [sp, #0xc8]
	ldr r1, [sp, #0xbc]
	ldrh r0, [r1, #2]
	lsls r0, r0, #3
	str r0, [sp, #0xcc]
	movs r0, #0
	add r5, sp, #0xb4
	strh r0, [r5, #0]
	mov r4, sp
	adds r4, #0xb6
	strh r0, [r4, #0]
	movs r2, #0
	str r2, [sp, #0xdc]
	movs r3, #0
	str r3, [sp, #0xe0]
	ldr r0, _08025910
	bl sub_08007290
	str r0, [sp, #0xc4]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08025914
	adds r1, r1, r0
	str r1, [sp, #0xc0]
	ldr r1, _08025918
	movs r3, #1
	negs r3, r3
	ldr r7, [sp, #0xe0]
	str r7, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0xe
	bl sub_08065158
	ldr r0, _0802591C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	cmp r0, #0x15
	bne _0802592E
	ldr r1, [sp, #0x1c]
	adds r1, #0xc0
	movs r0, #0x14
	movs r2, #2
	bl sub_08000AF0
	mov r2, sp
	adds r2, #0x32
	movs r0, #4
	strb r0, [r2, #0]
	mov r1, sp
	adds r1, #0x33
	movs r0, #5
	b _0802594E
_08025910: .4byte 0x001403D2
_08025914: .4byte gUnk_03003CE0
_08025918: .4byte 0x000500D1
_0802591C: .4byte gUnk_03005CF4
_08025920:
	movs r1, #0
	movs r0, #0xc
	ldr r2, [sp, #0xc0]
	strh r0, [r2, #0x20]
	strh r1, [r2, #0x22]
	bl _0802631C
_0802592E:
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x14
	movs r2, #3
	bl sub_08000AF0
	mov r1, sp
	adds r1, #0x31
	movs r0, #4
	strb r0, [r1, #0]
	mov r2, sp
	adds r2, #0x32
	movs r0, #5
	strb r0, [r2, #0]
	adds r1, #2
	movs r0, #6
_0802594E:
	strb r0, [r1, #0]
	ldr r0, [sp, #0xc8]
	ldr r1, [sp, #0xcc]
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xd0]
	movs r3, #0
	mov r8, r3
	mov r4, sp
	adds r4, #0x5c
	str r4, [sp, #0x104]
	mov r7, sp
	adds r7, #0x44
	str r7, [sp, #0xfc]
	mov r0, sp
	adds r0, #0x74
	str r0, [sp, #0x10c]
	mov r1, sp
	adds r1, #0x68
	str r1, [sp, #0x108]
	mov r2, sp
	adds r2, #0x50
	str r2, [sp, #0x100]
	mov r3, sp
	adds r3, #0x80
	str r3, [sp, #0x110]
	mov sl, r4
	mov r9, r3
	adds r7, r2, #0
	adds r6, r1, #0
	adds r5, r0, #0
	ldr r4, [sp, #0xfc]
_08025994:
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _080259A4
	adds r0, #0x1f
_080259A4:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x82
	mov r1, sl
	str r0, [r1, #0]
	bl sub_080008C8
	movs r1, #0xc8
	bl __umodsi3
	subs r0, #0x64
	str r0, [r4, #0]
	bl sub_080008C8
	movs r1, #3
	bl __umodsi3
	adds r0, #1
	str r0, [r5, #0]
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _080259E0
	adds r0, #0x1f
_080259E0:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x82
	str r0, [r6, #0]
	bl sub_080008C8
	movs r1, #0xc8
	bl __umodsi3
	subs r0, #0x64
	str r0, [r7, #0]
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08025A14
	negs r0, r0
_08025A14:
	adds r0, #1
	mov r2, r9
	str r0, [r2, #0]
	mov r3, sl
	ldm r3!, {r0}
	lsls r0, r0, #8
	mov sl, r3
	subs r3, #4
	stm r3!, {r0}
	ldr r0, [r6, #0]
	lsls r0, r0, #8
	stm r6!, {r0}
	ldr r0, [r5, #0]
	lsls r0, r0, #7
	stm r5!, {r0}
	ldm r2!, {r0}
	lsls r0, r0, #7
	mov r9, r2
	subs r2, #4
	stm r2!, {r0}
	adds r7, #4
	adds r4, #4
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #2
	bls _08025994
	b _08025ACA
_08025A4C:
	bl sub_080003F0
_08025A50:
	bl sub_0800CDF8
	cmp r0, #0
	bne _08025A4C
	bl sub_080021A8
	cmp r0, #0
	beq _08025A64
	bl _0802631C
_08025A64:
	bl sub_0800CB9C
	cmp r0, #0
	bne _08025A80
	ldr r2, [sp, #0xc0]
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08025A7E
	bl _0802631C
_08025A7E:
	b _08025AC6
_08025A80:
	movs r3, #0
	str r3, [sp, #0xd4]
	mov r8, r3
	ldr r4, _08025A8C
	b _08025AB2
	.2byte 0x0000
_08025A8C: .4byte gUnk_03003D10
_08025A90:
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r7, r8
	muls r7, r0, r7
	adds r0, r7, #0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08025AAE
	ldr r0, [sp, #0xd4]
	adds r0, #1
	str r0, [sp, #0xd4]
_08025AAE:
	movs r1, #1
	add r8, r1
_08025AB2:
	bl sub_08002164
	cmp r8, r0
	blo _08025A90
	bl sub_08002164
	ldr r2, [sp, #0xd4]
	cmp r2, r0
	bne _08025AC6
	b _08025920
_08025AC6:
	bl sub_080003F0
_08025ACA:
	ldr r0, _08025B08
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08025A50
	ldr r0, _08025B0C
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #0xe
	bls _08025AF4
	movs r0, #0xa
	bl sub_08057624
	bl sub_080169C8
	movs r0, #0xd
	bl sub_08058688
_08025AF4:
	ldr r4, _08025B08
	ldr r0, [r4, #0]
	ldr r3, _08025B10
	adds r0, r0, r3
	ldr r0, [r0, #0]
	bl sub_0805A4BC
	ldr r0, [r4, #0]
	b _0802600C
	.2byte 0x0000
_08025B08: .4byte gUnk_03005CF4
_08025B0C: .4byte gUnk_03003170
_08025B10: .4byte 0x0000071C
_08025B14:
	bl sub_080003F0
_08025B18:
	bl sub_0800CDF8
	cmp r0, #0
	bne _08025B14
	bl sub_080021A8
	cmp r0, #0
	beq _08025B2C
	bl _0802631C
_08025B2C:
	bl sub_0800CC98
	cmp r0, #0
	bne _08025B94
	bl sub_0800CD8C
	cmp r0, #0
	bne _08025B94
	bl sub_0800CCCC
	cmp r0, #0
	bne _08025B94
	ldr r0, _08025B6C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	cmp r0, #0x15
	bne _08025B70
	ldr r1, [sp, #0x1c]
	adds r1, #0xc0
	movs r0, #0x14
	movs r2, #2
	bl sub_08000AF0
	movs r0, #4
	movs r4, #0x32
	add r4, sp
	strb r0, [r4, #0]
	movs r0, #5
	movs r7, #0x33
	add r7, sp
	strb r0, [r7, #0]
	b _08025B94
_08025B6C: .4byte gUnk_03005CF4
_08025B70:
	ldr r1, [sp, #0x1c]
	adds r1, #0xa0
	movs r0, #0x14
	movs r2, #3
	bl sub_08000AF0
	mov r1, sp
	adds r1, #0x31
	movs r0, #4
	strb r0, [r1, #0]
	movs r0, #5
	movs r1, #0x32
	add r1, sp
	strb r0, [r1, #0]
	movs r0, #6
	movs r2, #0x33
	add r2, sp
	strb r0, [r2, #0]
_08025B94:
	ldr r7, [sp, #0xc0]
	adds r7, #0x8c
	ldr r0, [r7, #0]
	asrs r4, r0, #8
	ldr r5, [sp, #0xc0]
	adds r5, #0x90
	ldr r0, [r5, #0]
	asrs r6, r0, #8
	bl sub_08058DB0
	cmp r0, #0
	beq _08025BAE
	b _08025D00
_08025BAE:
	bl sub_0806569C
	cmp r0, #0
	beq _08025BB8
	b _08025D00
_08025BB8:
	ldr r3, [sp, #0xc0]
	ldrh r0, [r3, #0x20]
	cmp r0, #0xe
	bne _08025BC2
	b _08025D00
_08025BC2:
	ldr r1, [sp, #0xc8]
	subs r0, r4, r1
	cmp r0, #0
	bge _08025BCC
	negs r0, r0
_08025BCC:
	cmp r0, #0x17
	ble _08025BD2
	b _08025D00
_08025BD2:
	ldr r2, [sp, #0xcc]
	subs r0, r6, r2
	cmp r0, #0
	bge _08025BDC
	negs r0, r0
_08025BDC:
	cmp r0, #0xf
	ble _08025BE2
	b _08025D00
_08025BE2:
	ldr r0, [r7, #0]
	ldr r1, [r5, #0]
	ldr r3, [sp, #0xc0]
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r2, r3, r4
	ldr r2, [r2, #0]
	ldrb r2, [r2, #4]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1a
	bl sub_0805D37C
	cmp r0, #0
	beq _08025C00
	b _08025D1E
_08025C00:
	ldr r7, [sp, #0xc0]
	ldrh r0, [r7, #0x20]
	subs r0, #2
	cmp r0, #0xc
	bhi _08025C4C
	lsls r0, r0, #2
	ldr r1, _08025C14
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08025C14: .4byte _08025C18
_08025C18:
	.4byte _08025D1E
_08025C1C: .4byte _08025C4C
_08025C20: .4byte _08025D1E
_08025C24: .4byte _08025D1E
_08025C28: .4byte _08025C4C
_08025C2C: .4byte _08025D1E
_08025C30: .4byte _08025D1E
_08025C34: .4byte _08025D1E
_08025C38: .4byte _08025D1E
_08025C3C: .4byte _08025D1E
_08025C40: .4byte _08025D1E
_08025C44: .4byte _08025C4C
_08025C48: .4byte _08025D1E
_08025C4C:
	ldr r0, [sp, #0xc0]
	ldr r1, [r0, #0x30]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08025CC0
	movs r0, #0x80
	lsls r0, r0, #0x10
	orrs r1, r0
	ldr r2, [sp, #0xc0]
	str r1, [r2, #0x30]
	ldr r4, [sp, #0xc4]
	adds r4, #2
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0801A3D0
	ldr r3, [sp, #0xc0]
	ldrh r1, [r3, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08025CB0
	ldr r1, [r3, #0x30]
	ldr r0, _08025CB8
	orrs r1, r0
	ldr r0, _08025CBC
	ands r1, r0
	str r1, [r3, #0x30]
	bl sub_08067D74
	movs r4, #0
	str r4, [sp, #0xd8]
	ldr r0, [sp, #0xc0]
	adds r0, #0xd8
	str r4, [r0, #0]
	ldr r7, [sp, #0xc0]
	strh r4, [r7, #0x26]
	add r0, sp, #0xd8
	ldrh r0, [r0, #0]
	strh r0, [r7, #0x24]
_08025CB0:
	movs r1, #1
	str r1, [sp, #0xdc]
	b _08025D1E
	.2byte 0x0000
_08025CB8: .4byte 0x00000403
_08025CBC: .4byte 0xFF7FFFFF
_08025CC0:
	bl sub_08058DB0
	cmp r0, #0
	bne _08025D1E
	ldr r0, [sp, #0xd8]
	adds r2, r0, #0
	adds r2, #1
	str r2, [sp, #0xd8]
	cmp r0, #0x3c
	bls _08025D1E
	ldr r0, _08025CF4
	ldrh r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08025D1E
	ldr r3, [sp, #0xc0]
	ldr r0, [r3, #0x30]
	ldr r1, _08025CF8
	ands r0, r1
	str r0, [r3, #0x30]
	ldr r1, _08025CFC
	movs r0, #0
	bl sub_08057328
	b _08025D1E
_08025CF4: .4byte gUnk_03001324
_08025CF8: .4byte 0xFFFFFBFF
_08025CFC: .4byte sub_08024538
_08025D00:
	ldr r4, [sp, #0xdc]
	cmp r4, #0
	beq _08025D12
	movs r7, #0
	str r7, [sp, #0xdc]
	movs r0, #0x12
	movs r1, #2
	bl sub_0801A664
_08025D12:
	ldr r1, [sp, #0xc0]
	ldr r0, [r1, #0x30]
	ldr r1, _08025D30
	ands r0, r1
	ldr r2, [sp, #0xc0]
	str r0, [r2, #0x30]
_08025D1E:
	bl sub_08002204
	cmp r0, #0
	beq _08025D9E
	movs r3, #0
	str r3, [sp, #0xd4]
	mov r8, r3
	ldr r4, _08025D34
	b _08025D58
_08025D30: .4byte 0xFF7FFFFF
_08025D34: .4byte gUnk_03003E28
_08025D38:
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r7, r8
	muls r7, r0, r7
	adds r0, r7, #0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	ldrb r0, [r0, #7]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08025D54
	ldr r0, [sp, #0xd4]
	adds r0, #1
	str r0, [sp, #0xd4]
_08025D54:
	movs r1, #1
	add r8, r1
_08025D58:
	bl sub_08002164
	cmp r8, r0
	blo _08025D38
	bl sub_08002164
	ldr r2, [sp, #0xd4]
	cmp r2, r0
	bne _08025D76
	ldr r0, [sp, #0xe0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xe0]
	b _08025D7A
_08025D76:
	movs r3, #0
	str r3, [sp, #0xe0]
_08025D7A:
	ldr r4, [sp, #0xe0]
	cmp r4, #2
	bls _08025D9E
	ldr r0, _08025D8C
	ldr r1, [r0, #0]
	ldr r7, [sp, #0xbc]
	ldrh r0, [r7, #4]
	str r0, [r1, #0x40]
	b _08025D94
_08025D8C: .4byte gUnk_03005CF4
_08025D90:
	bl sub_080003F0
_08025D94:
	bl sub_08067DC8
	cmp r0, #0
	beq _08025D90
	b _0802601A
_08025D9E:
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0
	add r2, sp, #0xb4
	mov r3, sp
	adds r3, #0xb6
	bl sub_08065370
	movs r0, #0
	mov r8, r0
	mov r1, sp
	adds r1, #0xa0
	str r1, [sp, #0x114]
	mov r2, sp
	adds r2, #0xac
	str r2, [sp, #0x118]
	add r3, sp, #0x98
	mov sl, r3
	movs r4, #1
	mov r9, r4
	mov r6, sp
	adds r6, #0x92
	mov r5, sp
	adds r5, #0xa6
	add r4, sp, #0x8c
	adds r7, r1, #0
_08025DD4:
	mov r0, r9
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #1
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_08065370
	mov r1, r9
	str r1, [sp, #0]
	add r0, sp, #0x10
	movs r1, #2
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08065370
	adds r6, #2
	adds r5, #2
	adds r4, #2
	adds r7, #2
	movs r2, #1
	add r8, r2
	mov r3, r8
	cmp r3, #2
	bls _08025DD4
	movs r6, #1
	str r6, [sp, #0]
	add r0, sp, #0x10
	movs r1, #3
	ldr r2, [sp, #0x118]
	mov r3, sl
	bl sub_08065370
	bl sub_0800CC98
	cmp r0, #0
	beq _08025E20
	b _08026004
_08025E20:
	bl sub_0800CCCC
	cmp r0, #0
	beq _08025E2A
	b _08026004
_08025E2A:
	bl sub_0800CD8C
	adds r3, r0, #0
	cmp r3, #0
	beq _08025E36
	b _08026004
_08025E36:
	ldr r4, [sp, #0xc8]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r7, [sp, #0xcc]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	add r4, sp, #0xb8
	mov r5, sp
	adds r5, #0xba
	movs r2, #0x30
	str r2, [sp, #0]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r0, [sp, #0xc8]
	ldr r1, [sp, #0xcc]
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xd0]
	ldr r0, _0802602C
	ldr r2, [r0, #0]
	ands r2, r6
	cmp r2, #0
	bne _08025EBA
	ldr r0, _08026030
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	add r6, sp, #0x2c
	cmp r0, #0x15
	beq _08025E9A
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r3, #0
	ldrsh r1, [r5, r3]
	add r7, sp, #0xb4
	ldrh r3, [r7, #0]
	str r2, [sp, #0]
	str r6, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08007CF0
_08025E9A:
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r7, [sp, #0x114]
	ldrh r3, [r7, #0xc]
	ldr r2, [sp, #0xd0]
	str r2, [sp, #0]
	str r6, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08008E74
_08025EBA:
	ldr r0, _08026030
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	cmp r0, #0x15
	bne _08025EC6
	b _08026004
_08025EC6:
	movs r3, #0
	mov r8, r3
	str r4, [sp, #0xe4]
	str r5, [sp, #0xe8]
	ldr r4, [sp, #0x100]
	mov sl, r4
	ldr r6, [sp, #0x104]
	ldr r7, [sp, #0x108]
	adds r0, r7, #0
	str r0, [sp, #0x124]
	ldr r1, [sp, #0xfc]
	mov r9, r1
	mov r2, sp
	adds r2, #0x2c
	str r2, [sp, #0xec]
_08025EE4:
	mov r3, r8
	lsls r4, r3, #2
	ldr r1, [sp, #0x10c]
	adds r0, r1, r4
	ldr r1, [r6, #0]
	ldr r0, [r0, #0]
	subs r1, r1, r0
	str r1, [r6, #0]
	asrs r1, r1, #8
	ldr r2, [sp, #0xcc]
	adds r1, r2, r1
	movs r3, #0x40
	negs r3, r3
	cmp r1, r3
	bge _08025F2C
	bl sub_080008C8
	movs r1, #0x1f
	ands r1, r0
	ldr r0, [sp, #0xcc]
	adds r1, r0, r1
	str r1, [r6, #0]
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r9
	str r0, [r1, #0]
	ldr r0, [r6, #0]
	lsls r0, r0, #8
	str r0, [r6, #0]
_08025F2C:
	ldr r2, [sp, #0x110]
	adds r0, r2, r4
	ldr r1, [r7, #0]
	ldr r0, [r0, #0]
	subs r1, r1, r0
	str r1, [r7, #0]
	asrs r1, r1, #8
	ldr r3, [sp, #0xcc]
	adds r1, r3, r1
	movs r4, #0x40
	negs r4, r4
	cmp r1, r4
	bge _08025F70
	bl sub_080008C8
	movs r1, #0x1f
	ands r1, r0
	ldr r0, [sp, #0xcc]
	adds r1, r0, r1
	str r1, [r7, #0]
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sl
	str r0, [r1, #0]
	ldr r0, [r7, #0]
	lsls r0, r0, #8
	str r0, [r7, #0]
_08025F70:
	ldr r0, _0802602C
	ldr r5, [r0, #0]
	movs r0, #1
	ands r5, r0
	cmp r5, #0
	bne _08025FE8
	ldr r2, [sp, #0xe4]
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r4, r9
	ldr r1, [r4, #0]
	adds r0, r0, r1
	ldr r2, [sp, #0xe8]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r2, [r6, #0]
	asrs r2, r2, #8
	adds r1, r1, r2
	mov r2, r8
	lsls r4, r2, #1
	ldr r3, [sp, #0x114]
	adds r2, r3, r4
	ldrh r3, [r2, #0]
	str r5, [sp, #0]
	ldr r2, [sp, #0xec]
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08007CF0
	ldr r3, [sp, #0xe4]
	movs r1, #0
	ldrsh r0, [r3, r1]
	mov r2, sl
	ldr r1, [r2, #0]
	adds r0, r0, r1
	ldr r3, [sp, #0xe8]
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r3, [sp, #0x124]
	ldr r2, [r3, #0]
	asrs r2, r2, #8
	adds r1, r1, r2
	mov r2, sp
	adds r2, #0xa6
	adds r2, r2, r4
	ldrh r3, [r2, #0]
	str r5, [sp, #0]
	ldr r4, [sp, #0xec]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #2
	bl sub_08007CF0
_08025FE8:
	movs r0, #4
	add sl, r0
	adds r6, #4
	adds r7, #4
	ldr r1, [sp, #0x124]
	adds r1, #4
	str r1, [sp, #0x124]
	add r9, r0
	movs r2, #1
	add r8, r2
	mov r3, r8
	cmp r3, #2
	bhi _08026004
	b _08025EE4
_08026004:
	bl sub_080003F0
	ldr r0, _08026030
	ldr r0, [r0, #0]
_0802600C:
	ldrh r0, [r0, #4]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802601A
	b _08025B18
_0802601A:
	movs r0, #0x24
	bl sub_0805865C
	movs r4, #1
	str r4, [sp, #0xd4]
	mov r7, sp
	adds r7, #0x2c
	str r7, [sp, #0xf0]
	b _08026038
_0802602C: .4byte gUnk_03002344
_08026030: .4byte gUnk_03005CF4
_08026034:
	bl sub_080003F0
_08026038:
	bl sub_0800CDF8
	cmp r0, #0
	bne _08026034
	bl sub_080021A8
	cmp r0, #0
	beq _0802604A
	b _0802631C
_0802604A:
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0
	add r2, sp, #0xb4
	mov r3, sp
	adds r3, #0xb6
	bl sub_08065370
	movs r0, #0
	mov r8, r0
	ldr r1, [sp, #0xd4]
	adds r1, #1
	str r1, [sp, #0x11c]
	mov r2, sp
	adds r2, #0xa0
	str r2, [sp, #0x114]
	mov r3, sp
	adds r3, #0xac
	str r3, [sp, #0x118]
	add r4, sp, #0x98
	mov sl, r4
	movs r7, #1
	mov r9, r7
	mov r6, sp
	adds r6, #0x92
	mov r5, sp
	adds r5, #0xa6
	add r4, sp, #0x8c
	adds r7, r2, #0
_08026086:
	mov r0, r9
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #1
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_08065370
	mov r1, r9
	str r1, [sp, #0]
	add r0, sp, #0x10
	movs r1, #2
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08065370
	adds r6, #2
	adds r5, #2
	adds r4, #2
	adds r7, #2
	movs r2, #1
	add r8, r2
	mov r3, r8
	cmp r3, #2
	bls _08026086
	movs r6, #1
	str r6, [sp, #0]
	add r0, sp, #0x10
	movs r1, #3
	ldr r2, [sp, #0x118]
	mov r3, sl
	bl sub_08065370
	bl sub_0800CC98
	cmp r0, #0
	beq _080260D2
	b _080262A2
_080260D2:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080260DC
	b _080262A2
_080260DC:
	bl sub_0800CD8C
	adds r3, r0, #0
	cmp r3, #0
	beq _080260E8
	b _080262A2
_080260E8:
	ldr r4, [sp, #0xc8]
	lsls r0, r4, #0x10
	ldr r7, [sp, #0xcc]
	lsls r1, r7, #0x10
	add r4, sp, #0xb8
	mov r5, sp
	adds r5, #0xba
	movs r2, #0x30
	str r2, [sp, #0]
	str r3, [sp, #4]
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r0, _0802632C
	ldr r2, [r0, #0]
	ands r2, r6
	cmp r2, #0
	bne _0802615E
	ldr r0, _08026330
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	add r6, sp, #0x2c
	cmp r0, #0x15
	beq _0802613E
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r3, #0
	ldrsh r1, [r5, r3]
	add r7, sp, #0xb4
	ldrh r3, [r7, #0]
	str r2, [sp, #0]
	ldr r2, [sp, #0xf0]
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08007CF0
_0802613E:
	movs r3, #0
	ldrsh r0, [r4, r3]
	movs r7, #0
	ldrsh r1, [r5, r7]
	ldr r2, [sp, #0x114]
	ldrh r3, [r2, #0xc]
	ldr r7, [sp, #0xd0]
	str r7, [sp, #0]
	str r6, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #3
	bl sub_08008E74
_0802615E:
	ldr r0, _08026330
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	cmp r0, #0x15
	bne _0802616A
	b _080262A2
_0802616A:
	movs r0, #0
	mov r8, r0
	str r4, [sp, #0xf4]
	str r5, [sp, #0xf8]
	ldr r1, [sp, #0x100]
	mov sl, r1
	ldr r6, [sp, #0x104]
	ldr r7, [sp, #0x108]
	adds r2, r7, #0
	str r2, [sp, #0x120]
	ldr r3, [sp, #0xfc]
	mov r9, r3
_08026182:
	mov r0, r8
	lsls r4, r0, #2
	ldr r1, [sp, #0x10c]
	adds r0, r1, r4
	ldr r1, [r6, #0]
	ldr r0, [r0, #0]
	subs r1, r1, r0
	str r1, [r6, #0]
	asrs r1, r1, #8
	ldr r2, [sp, #0xcc]
	adds r1, r2, r1
	movs r3, #0x40
	negs r3, r3
	cmp r1, r3
	bge _080261CA
	bl sub_080008C8
	movs r1, #0x1f
	ands r1, r0
	ldr r0, [sp, #0xcc]
	adds r1, r0, r1
	str r1, [r6, #0]
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r9
	str r0, [r1, #0]
	ldr r0, [r6, #0]
	lsls r0, r0, #8
	str r0, [r6, #0]
_080261CA:
	ldr r2, [sp, #0x110]
	adds r0, r2, r4
	ldr r1, [r7, #0]
	ldr r0, [r0, #0]
	subs r1, r1, r0
	str r1, [r7, #0]
	asrs r1, r1, #8
	ldr r3, [sp, #0xcc]
	adds r1, r3, r1
	movs r4, #0x40
	negs r4, r4
	cmp r1, r4
	bge _0802620E
	bl sub_080008C8
	movs r1, #0x1f
	ands r1, r0
	ldr r0, [sp, #0xcc]
	adds r1, r0, r1
	str r1, [r7, #0]
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sl
	str r0, [r1, #0]
	ldr r0, [r7, #0]
	lsls r0, r0, #8
	str r0, [r7, #0]
_0802620E:
	ldr r0, _0802632C
	ldr r5, [r0, #0]
	movs r0, #1
	ands r5, r0
	cmp r5, #0
	bne _08026286
	ldr r2, [sp, #0xf4]
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r4, r9
	ldr r1, [r4, #0]
	adds r0, r0, r1
	ldr r2, [sp, #0xf8]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r2, [r6, #0]
	asrs r2, r2, #8
	adds r1, r1, r2
	mov r2, r8
	lsls r4, r2, #1
	ldr r3, [sp, #0x114]
	adds r2, r3, r4
	ldrh r3, [r2, #0]
	str r5, [sp, #0]
	ldr r2, [sp, #0xf0]
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08007CF0
	ldr r3, [sp, #0xf4]
	movs r1, #0
	ldrsh r0, [r3, r1]
	mov r2, sl
	ldr r1, [r2, #0]
	adds r0, r0, r1
	ldr r3, [sp, #0xf8]
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r3, [sp, #0x120]
	ldr r2, [r3, #0]
	asrs r2, r2, #8
	adds r1, r1, r2
	mov r2, sp
	adds r2, #0xa6
	adds r2, r2, r4
	ldrh r3, [r2, #0]
	str r5, [sp, #0]
	ldr r4, [sp, #0xf0]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #2
	bl sub_08007CF0
_08026286:
	movs r0, #4
	add sl, r0
	adds r6, #4
	adds r7, #4
	ldr r1, [sp, #0x120]
	adds r1, #4
	str r1, [sp, #0x120]
	add r9, r0
	movs r2, #1
	add r8, r2
	mov r3, r8
	cmp r3, #2
	bhi _080262A2
	b _08026182
_080262A2:
	bl sub_080003F0
	ldr r0, [sp, #0xd4]
	ldr r4, [sp, #0x11c]
	str r4, [sp, #0xd4]
	cmp r0, #0x3b
	bhi _080262B2
	b _08026038
_080262B2:
	movs r1, #0
	ldr r6, _08026330
	movs r5, #0
_080262B8:
	movs r2, #0
	lsls r0, r1, #2
	adds r4, r1, #1
	adds r3, r0, r1
_080262C0:
	ldr r0, [r6, #0]
	adds r1, r2, r3
	movs r7, #0xe4
	lsls r7, r7, #1
	adds r0, r0, r7
	adds r0, r0, r1
	strb r5, [r0, #0]
	adds r2, #1
	cmp r2, #4
	bls _080262C0
	adds r1, r4, #0
	cmp r1, #0x13
	bls _080262B8
	ldr r1, [sp, #0xc0]
	ldr r0, [r1, #0x30]
	ldr r1, _08026334
	ands r0, r1
	ldr r2, [sp, #0xc0]
	str r0, [r2, #0x30]
	movs r0, #7
	bl sub_08057AE8
	cmp r0, #0
	beq _080262F6
	movs r0, #0x15
	bl sub_08057A5C
_080262F6:
	movs r0, #0x15
	bl sub_08057AE8
	bl sub_0805C7B8
	movs r0, #0
	ldr r3, [sp, #0xc0]
	strh r0, [r3, #0x2e]
	bl sub_080003F0
	movs r0, #0x12
	movs r1, #2
	bl sub_0801A664
	movs r0, #3
	bl sub_08057624
	bl sub_0800CDAC
_0802631C:
	add sp, #0x128
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0802632C: .4byte gUnk_03002344
_08026330: .4byte gUnk_03005CF4
_08026334: .4byte 0xFF7FFFFF
	thumb_func_end sub_08025890
