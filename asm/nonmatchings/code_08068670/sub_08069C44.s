	thumb_func_start sub_08069C44
sub_08069C44: @ 0x08069C44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x90
	str r0, [sp, #0x58]
	bl sub_080020F4
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x58]
	ldrh r6, [r0, #8]
	ldr r1, [r0, #0]
	mov r9, r1
	ldr r2, [r0, #4]
	str r2, [sp, #0x74]
	ldrh r3, [r0, #0x14]
	str r3, [sp, #0x64]
	str r3, [sp, #0x68]
	str r3, [sp, #0x60]
	mov r0, sp
	adds r0, #0x4a
	movs r1, #0
	strh r1, [r0, #0]
	add r2, sp, #0x48
	strh r1, [r2, #0]
	mov r4, r9
	cmp r4, #3
	bhi _08069CA0
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, r9
	muls r1, r0, r1
	ldr r0, _08069C9C
	adds r1, r1, r0
	str r1, [sp, #0x5c]
	adds r0, r1, #0
	adds r0, #0xdc
	ldr r0, [r0, #0]
	str r0, [sp, #0x78]
	lsls r4, r4, #2
	str r4, [sp, #0x88]
	b _08069D20
	.2byte 0x0000
_08069C9C: .4byte gUnk_03003CE0
_08069CA0:
	ldr r1, _08069CFC
	mov r2, r9
	lsls r0, r2, #1
	add r0, r9
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r3, _08069D00
	adds r0, r0, r3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	mov r8, r1
	mov r0, r8
	adds r0, #0x6a
	ldr r1, _08069D04
	add r1, r8
	ldrh r0, [r0, #0]
	lsls r2, r2, #2
	str r2, [sp, #0x88]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bhs _08069D20
	ldr r0, _08069D08
	adds r4, r2, r0
	movs r0, #1
	ldr r1, [sp, #0x74]
	lsls r0, r1
	mvns r5, r0
_08069CD8:
	bl sub_08056E90
	cmp r0, #0
	bne _08069CF4
	bl sub_0800BA6C
	cmp r0, #0
	beq _08069CF4
	mov r2, r8
	ldrh r0, [r2, #0xc]
	cmp r0, #0xa
	beq _08069CF4
	cmp r0, #0xb
	bne _08069D0C
_08069CF4:
	ldr r0, [r4, #0]
	ands r0, r5
	str r0, [r4, #0]
	b _0806A168
_08069CFC: .4byte gUnk_030056F4
_08069D00: .4byte 0xFFFFF480
_08069D04: .4byte 0x0000022B
_08069D08: .4byte gUnk_030063E0
_08069D0C:
	bl sub_080003F0
	mov r0, r8
	adds r0, #0x6a
	ldr r1, _08069D70
	add r1, r8
	ldrh r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	blo _08069CD8
_08069D20:
	ldr r3, [sp, #0x70]
	cmp r3, r9
	beq _08069D7C
	mov r4, r9
	cmp r4, #3
	bls _08069DAE
	ldr r3, _08069D74
	ldr r0, [sp, #0x64]
	lsls r2, r0, #1
	ldr r4, [sp, #0x58]
	ldr r1, [r4, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r3, #6
	adds r2, r2, r3
	mov r3, r8
	adds r3, #0x5e
	ldrh r0, [r3, #0]
	movs r4, #0
	ldrsh r1, [r2, r4]
	subs r0, r0, r1
	strh r0, [r3, #0]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08069DAE
	ldr r2, _08069D78
	ldr r0, [sp, #0x88]
	adds r2, r0, r2
	movs r1, #1
	ldr r4, [sp, #0x74]
	lsls r1, r4
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	movs r0, #0
	strh r0, [r3, #0]
	b _0806A168
	.2byte 0x0000
_08069D70: .4byte 0x0000022B
_08069D74: .4byte gUnk_084EBF1C
_08069D78: .4byte gUnk_030063E0
_08069D7C:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _08069DF4
	adds r4, r4, r0
	ldr r1, [sp, #0x58]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x14]
	bl sub_0806898C
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, #0xc2
	ldrh r1, [r4, #0]
	subs r1, r1, r0
	strh r1, [r4, #0]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _08069DAE
	movs r0, #0
	strh r0, [r4, #0]
_08069DAE:
	cmp r6, #3
	bhi _08069DFC
	bl sub_08002164
	adds r1, r0, #0
	movs r5, #0
	ldr r2, [sp, #0x60]
	lsls r2, r2, #0x13
	mov sl, r2
	cmp r5, r1
	bhs _08069DEE
	ldr r2, _08069DF4
	ldrh r0, [r2, #0]
	ldr r3, _08069DF8
	mov ip, r3
	cmp r0, r6
	beq _08069DEA
	movs r3, #0xa6
	lsls r3, r3, #1
_08069DD4:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r1
	bhs _08069DEE
	adds r0, r5, #0
	muls r0, r3, r0
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	cmp r0, r6
	bne _08069DD4
_08069DEA:
	cmp r5, r1
	blo _08069E4E
_08069DEE:
	ldr r4, _08069DF8
	mov ip, r4
	b _08069E4E
_08069DF4: .4byte gUnk_03003CE0
_08069DF8: .4byte gUnk_0847AD0A
_08069DFC:
	movs r5, #0
	ldr r3, _08069E18
	ldr r4, [r3, #0]
	ldr r2, _08069E1C
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	ldr r1, _08069E20
	mov ip, r1
	ldr r1, [sp, #0x60]
	lsls r1, r1, #0x13
	mov sl, r1
	b _08069E44
	.2byte 0x0000
_08069E18: .4byte gUnk_030056F4
_08069E1C: .4byte gUnk_030056FC
_08069E20: .4byte gUnk_0847AD0A
_08069E24:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bhi _08069E4E
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	ldr r1, [r3, #0]
	adds r4, r1, r0
	movs r1, #1
	lsls r1, r5
	ldr r0, [r2, #0]
	ands r0, r1
_08069E44:
	cmp r0, #0
	beq _08069E24
	ldrh r0, [r4, #2]
	cmp r0, r6
	bne _08069E24
_08069E4E:
	mov r2, r9
	cmp r2, #3
	bhi _08069E72
	ldr r3, [sp, #0x5c]
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r7, r0, #8
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r6, r0, #0xc
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	str r0, [sp, #0x6c]
	b _08069E80
_08069E72:
	mov r0, r8
	ldr r7, [r0, #0x14]
	ldr r6, [r0, #0x18]
	ldrh r1, [r0, #8]
	str r1, [sp, #0x6c]
	movs r2, #8
	ldrsh r0, [r0, r2]
_08069E80:
	lsls r0, r0, #1
	add r0, ip
	ldrh r4, [r0, #0]
	ldr r3, [sp, #0x70]
	cmp r3, r9
	beq _08069E92
	mov r0, r9
	cmp r0, #3
	bls _08069EAE
_08069E92:
	bl sub_0800CCCC
	cmp r0, #0
	bne _08069EAE
	bl sub_0800CD34
	cmp r0, #0
	bne _08069EAE
	ldr r1, [sp, #0x64]
	movs r2, #0x87
	lsls r2, r2, #1
	adds r0, r1, r2
	bl sub_0805865C
_08069EAE:
	ldr r2, _08069EF0
	lsls r3, r4, #0x10
	asrs r1, r3, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #2
	adds r7, r7, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #2
	adds r6, r6, r0
	str r3, [sp, #0x8c]
	ldr r3, [sp, #0x64]
	cmp r3, #5
	bhi _08069F0A
	ldr r1, _08069EF4
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	ldr r0, [sp, #0x64]
	subs r0, #1
	b _08069F20
_08069EF0: .4byte gUnk_080B9704
_08069EF4: .4byte 0x00050049
_08069EF8:
	ldr r4, [sp, #0x68]
	str r4, [sp, #0]
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r9
	movs r3, #1
	bl sub_08069A30
	b _0806A140
_08069F0A:
	ldr r1, _08069F64
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	ldr r0, [sp, #0x64]
	subs r0, #6
_08069F20:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	ldr r1, [sp, #0x64]
	lsls r0, r1, #0x13
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	add r1, sp, #0x10
	movs r2, #0
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	add r3, sp, #0x48
	strh r2, [r3, #0]
	movs r4, #0x4a
	add r4, sp
	strh r2, [r4, #0]
	movs r0, #0xa0
	lsls r0, r0, #0xd
	add r0, sl
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
	mov r0, sp
	adds r0, #0x4c
	str r0, [sp, #0x7c]
	ldr r1, [sp, #0x8c]
	str r1, [sp, #0x80]
	asrs r0, r1, #0x14
	ldr r2, _08069F68
	adds r0, r0, r2
	str r0, [sp, #0x84]
	b _0806A11E
	.2byte 0x0000
_08069F64: .4byte 0x00050048
_08069F68: .4byte gUnk_084790B4
_08069F6C:
	bl sub_080020F4
	cmp r9, r0
	bne _08069F96
	ldr r0, [sp, #0x5c]
	adds r0, #0xdc
	ldr r3, [sp, #0x78]
	str r3, [r0, #0]
	ldr r4, [sp, #0x5c]
	ldrh r0, [r4, #0x20]
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08069F8C
	b _0806A140
_08069F8C:
	bl sub_0800D11C
	cmp r0, #0
	beq _08069F96
	b _0806A140
_08069F96:
	adds r0, r7, #0
	adds r1, r6, #0
	ldr r2, [sp, #0x58]
	bl sub_08068A00
	cmp r0, #0
	beq _08069FAC
	ldr r0, [sp, #0x68]
	cmp r0, #0
	bne _08069FAC
	b _0806A140
_08069FAC:
	ldr r1, [sp, #0x70]
	cmp r9, r1
	bne _08069FDA
	str r7, [sp, #0x4c]
	ldr r2, [sp, #0x7c]
	str r6, [r2, #4]
	ldr r0, _0806A178
	str r0, [sp, #0x54]
	add r4, sp, #0x54
	ldr r0, [sp, #0x58]
	movs r1, #0
	bl sub_08068F9C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r0, [sp, #0x7c]
	adds r1, r4, #0
	bl sub_0801FB14
	cmp r0, #0
	beq _08069FDA
	b _0806A140
_08069FDA:
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_0800AE50
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08069FFA
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08069FFA
	b _08069EF8
_08069FFA:
	ldr r3, [sp, #0x80]
	asrs r1, r3, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r4, _0806A17C
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #1
	adds r7, r7, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r0, r0, #1
	adds r6, r6, r0
	asrs r5, r7, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	asrs r4, r6, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	mov r2, r8
	str r2, [sp, #4]
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r3, [sp, #0x84]
	ldrb r1, [r3, #0]
	ldr r4, [sp, #0x64]
	adds r1, r4, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x10
	add r2, sp, #0x48
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	ldr r0, _0806A180
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	add r5, sp, #0x44
	movs r1, #0x46
	add r1, sp
	mov sl, r1
	cmp r0, #0
	bne _0806A11A
	bl sub_0800CC98
	cmp r0, #0
	bne _0806A11A
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806A11A
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806A11A
	ldr r0, _0806A184
	ldr r0, [r0, #0]
	ands r0, r4
	cmp r0, #0
	beq _0806A0A8
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #1
	bl sub_08000AF0
_0806A0A8:
	ldr r0, _0806A188
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _0806A0BE
	bl sub_0800CDC0
	cmp r0, #0
	beq _0806A0BE
	movs r2, #0
	mov r8, r2
_0806A0BE:
	ldr r0, _0806A184
	ldr r1, [r0, #0]
	movs r2, #1
	ands r1, r2
	mov r0, r9
	ands r0, r2
	cmp r1, r0
	bne _0806A11A
	movs r3, #0
	ldrsh r0, [r5, r3]
	ldr r4, [sp, #0x8c]
	asrs r1, r4, #0x14
	ldr r2, _0806A18C
	adds r1, r1, r2
	ldrb r2, [r1, #0]
	lsls r2, r2, #2
	ldr r3, _0806A190
	adds r1, r2, r3
	movs r4, #0
	ldrsh r1, [r1, r4]
	adds r0, r0, r1
	mov r3, sl
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r3, _0806A194
	adds r2, r2, r3
	movs r4, #0
	ldrsh r2, [r2, r4]
	adds r1, r1, r2
	ldr r3, [sp, #0x64]
	ldr r4, [sp, #0x6c]
	adds r2, r3, r4
	lsls r2, r2, #0x10
	add r4, sp, #0x48
	ldrh r3, [r4, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	lsrs r2, r2, #0x10
	bl sub_08007870
_0806A11A:
	bl sub_080003F0
_0806A11E:
	ldr r1, [sp, #0x60]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
	cmp r1, #0
	beq _0806A140
	bl sub_0800BA6C
	cmp r0, #0
	beq _0806A140
	bl sub_08056E90
	mov r8, r0
	cmp r0, #0
	bne _0806A140
	b _08069F6C
_0806A140:
	mov r0, r9
	cmp r0, #3
	bhi _0806A156
	ldr r1, [sp, #0x70]
	cmp r9, r1
	beq _0806A156
	ldr r1, [sp, #0x5c]
	adds r1, #0xdc
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
_0806A156:
	ldr r2, _0806A198
	ldr r3, [sp, #0x88]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x74]
	lsls r1, r4
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
_0806A168:
	add sp, #0x90
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806A178: .4byte 0x00080008
_0806A17C: .4byte gUnk_080B9704
_0806A180: .4byte gUnk_03005CF4
_0806A184: .4byte gUnk_03002344
_0806A188: .4byte gUnk_03003170
_0806A18C: .4byte gUnk_084790B4
_0806A190: .4byte gUnk_084EBEBC
_0806A194: .4byte gUnk_084EBEBE
_0806A198: .4byte gUnk_030063E0
	thumb_func_end sub_08069C44
