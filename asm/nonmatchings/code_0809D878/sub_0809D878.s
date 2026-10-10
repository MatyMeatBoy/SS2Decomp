	thumb_func_start sub_0809D878
sub_0809D878: @ 0x0809D878
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x8c
	adds r6, r0, #0
	ldr r0, _0809D8F0
	str r6, [r0, #0]
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r6, r0
	str r0, [sp, #0x48]
	ldr r1, _0809D8F4
	adds r0, r6, #0
	movs r2, #0
	bl sub_0801623C
	ldr r0, [sp, #0x48]
	bl sub_08019F60
	adds r0, r6, #0
	bl sub_0801A0A4
	ldr r4, _0809D8F8
	movs r1, #0xb6
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrh r0, [r0, #0]
	ldr r2, _0809D8FC
	adds r1, r6, r2
	ldrh r1, [r1, #0]
	bl sub_08016E04
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _0809D900
	cmp r1, r0
	bne _0809D914
	ldr r4, _0809D904
	adds r5, r1, #0
_0809D8CC:
	movs r0, #0xb
	strh r0, [r6, #0xc]
	bl sub_0800CB78
	cmp r0, #0
	bne _0809D8E0
	bl sub_08056E90
	cmp r0, #0
	beq _0809D908
_0809D8E0:
	movs r1, #1
	ldrh r6, [r6, #0]
	lsls r1, r6
	ldr r0, [r4, #0]
	bics r0, r1
	str r0, [r4, #0]
	bl _0809E456
_0809D8F0: .4byte gUnk_03000310
_0809D8F4: .4byte gUnk_084A2748
_0809D8F8: .4byte gUnk_03000314
_0809D8FC: .4byte 0x000002DA
_0809D900: .4byte 0x0000FFFF
_0809D904: .4byte gUnk_030056FC
_0809D908:
	bl sub_080003F0
	ldr r0, _0809DA4C
	ldrh r0, [r0, #0]
	cmp r0, r5
	beq _0809D8CC
_0809D914:
	ldr r1, _0809DA50
	ldr r4, _0809DA4C
	ldrh r2, [r4, #0]
	movs r3, #1
	negs r3, r3
	movs r5, #1
	str r5, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065158
	add r1, sp, #0x10
	ldrh r0, [r4, #0]
	movs r2, #0
	strb r0, [r1, #0x1c]
	ldr r3, [sp, #0x48]
	movs r4, #6
	ldrsh r1, [r3, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r3, #0xeb
	lsls r3, r3, #1
	adds r1, r6, r3
	strh r0, [r1, #0]
	adds r1, r6, #0
	adds r1, #0x5c
	strh r0, [r1, #0]
	ldr r4, [sp, #0x48]
	movs r1, #4
	ldrsh r0, [r4, r1]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r3, #2
	adds r1, r6, r3
	strh r0, [r1, #0]
	adds r1, r6, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	ldr r4, _0809DA54
	adds r0, r6, r4
	movs r1, #2
	strb r1, [r0, #0]
	adds r3, #0x2a
	adds r0, r6, r3
	strb r1, [r0, #0]
	strh r2, [r6, #0xc]
	mov sl, r2
	ldr r4, _0809DA58
	str r4, [sp, #0x58]
	movs r0, #0
	str r0, [sp, #0x60]
	movs r1, #0
	str r1, [sp, #0x64]
	bl sub_08097FE4
	bl sub_08097A4C
	bl sub_08097C4C
	bl sub_0809F918
	bl sub_0809F998
	bl sub_0809F9F8
	bl sub_0809FACC
	ldr r0, _0809DA5C
	adds r0, #0x72
	movs r1, #0x1e
	strh r1, [r0, #0]
	adds r2, r6, #0
	adds r2, #0x6c
	add r3, sp, #0x64
	ldrh r3, [r3, #0]
	strh r3, [r2, #0]
	adds r1, r6, #0
	adds r1, #0x6a
	add r4, sp, #0x64
	ldrh r4, [r4, #0]
	strh r4, [r1, #0]
	adds r0, r6, #0
	adds r0, #0x68
	add r3, sp, #0x64
	ldrh r3, [r3, #0]
	strh r3, [r0, #0]
	movs r4, #0
	str r4, [sp, #0x78]
	movs r3, #0
	str r3, [sp, #0x74]
	str r4, [sp, #0x68]
	str r3, [sp, #0x70]
	str r5, [r6, #0x50]
	str r2, [sp, #0x84]
	str r1, [sp, #0x80]
	mov r9, r0
	ldr r0, [sp, #0x48]
	adds r0, #0xd6
	str r0, [sp, #0x88]
	movs r1, #0xa6
	lsls r1, r1, #1
	mov r8, r1
	ldr r7, _0809DA60
	movs r5, #0
_0809D9E6:
	movs r2, #0
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	mov r3, r8
	muls r3, r0, r3
_0809D9F0:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r3
	adds r0, r0, r7
	str r5, [r0, #0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #4
	ble _0809D9F0
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r4, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0809D9E6
	ldrb r0, [r6, #0]
	movs r4, #0xfe
	lsls r4, r4, #1
	adds r3, r6, r4
	movs r1, #0xf
	ands r1, r0
	ldrb r2, [r3, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	ldrh r1, [r6, #2]
	ldr r2, _0809DA64
	adds r0, r6, r2
	strh r1, [r0, #0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r6, r3
	movs r0, #0xff
	strb r0, [r1, #0]
	movs r4, #0
	str r4, [sp, #0x7c]
	bl sub_08067C18
	b _0809DA6C
	.2byte 0x0000
_0809DA4C: .4byte gUnk_03000314
_0809DA50: .4byte 0x00050007
_0809DA54: .4byte 0x000001FD
_0809DA58: .4byte 0x0000FFFF
_0809DA5C: .4byte gUnk_03003170
_0809DA60: .4byte gUnk_03003DC4
_0809DA64: .4byte 0x00000202
_0809DA68:
	bl sub_080003F0
_0809DA6C:
	bl sub_08067C08
	cmp r0, #0
	beq _0809DA68
	bl sub_08067BF8
	b _0809DECA
_0809DA7A:
	ldrh r0, [r6, #0xc]
	cmp r0, #0xa
	bne _0809DA8A
	ldr r0, [sp, #0x60]
	cmp r0, #0
	bne _0809DA8A
	movs r1, #8
	str r1, [sp, #0x60]
_0809DA8A:
	bl sub_08058DB0
	cmp r0, #0
	beq _0809DA94
	b _0809DCBE
_0809DA94:
	adds r0, r6, #0
	bl sub_0801C8F0
	ldr r2, _0809DAB4
	adds r0, r6, r2
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #7
	bls _0809DAA8
	b _0809DCA2
_0809DAA8:
	lsls r0, r0, #2
	ldr r1, _0809DAB8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0809DAB4: .4byte 0x000001FD
_0809DAB8: .4byte _0809DABC
_0809DABC:
	.4byte _0809DADC
_0809DAC0: .4byte _0809DB04
_0809DAC4: .4byte _0809DB1C
_0809DAC8: .4byte _0809DB94
_0809DACC: .4byte _0809DC14
_0809DAD0: .4byte _0809DC38
_0809DAD4: .4byte _0809DC5C
_0809DAD8: .4byte _0809DC84
_0809DADC:
	movs r0, #0
	strh r0, [r6, #0xc]
	bl sub_08067C08
	cmp r0, #0
	bne _0809DAEA
	b _0809DCA2
_0809DAEA:
	movs r3, #0xff
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrb r1, [r0, #0]
	ldr r4, _0809DB00
	adds r0, r6, r4
	strb r1, [r0, #0]
	bl sub_08067BF8
	b _0809DCA2
	.2byte 0x0000
_0809DB00: .4byte 0x000001FD
_0809DB04:
	movs r0, #0
	mov sl, r0
	bl sub_08056F78
	cmp r0, #0
	bne _0809DB12
	b _0809DCA2
_0809DB12:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r6, r2
	movs r0, #3
	b _0809DC70
_0809DB1C:
	movs r4, #1
	mov sl, r4
	movs r4, #0
	movs r7, #1
	mov r0, sl
	strh r0, [r6, #0xc]
	ldr r2, _0809DB8C
	ldr r1, [sp, #0x78]
	lsls r0, r1, #0x18
	asrs r5, r0, #0x18
	lsls r1, r5, #3
	adds r0, r1, r2
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	str r0, [sp, #0x4c]
	adds r2, #4
	adds r1, r1, r2
	ldr r0, [r1, #0]
	asrs r0, r0, #8
	str r0, [sp, #0x50]
	movs r3, #0xa0
	lsls r3, r3, #1
	movs r0, #8
	str r0, [sp, #0]
	str r4, [sp, #4]
	adds r0, r6, #0
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	bl sub_08097AC0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0809DB60
	b _0809DCA2
_0809DB60:
	movs r2, #0
	str r2, [sp, #0x68]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	str r3, [sp, #0x78]
	asrs r0, r0, #0x18
	cmp r0, #5
	bne _0809DB74
	str r4, [sp, #0x78]
_0809DB74:
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r1, #4
	strb r1, [r0, #0]
	ldr r2, _0809DB90
	adds r0, r6, r2
	strb r7, [r0, #0]
	bl sub_08067C18
	b _0809DCA2
	.2byte 0x0000
_0809DB8C: .4byte gUnk_08518724
_0809DB90: .4byte 0x000001FD
_0809DB94:
	movs r3, #2
	mov sl, r3
	mov r4, sl
	strh r4, [r6, #0xc]
	ldr r0, [sp, #0x68]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	cmp r0, #0x3b
	bls _0809DCA2
	movs r0, #0
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x74]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x74]
	cmp r0, #6
	bne _0809DBCC
	movs r1, #0
	str r1, [sp, #0x74]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r6, r2
	movs r0, #7
	strb r0, [r1, #0]
	b _0809DC08
_0809DBCC:
	movs r0, #1
	ldr r3, [sp, #0x74]
	ands r0, r3
	cmp r0, #0
	beq _0809DBFA
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r6, r4
	movs r0, #5
	strb r0, [r1, #0]
	movs r0, #0
	bl sub_0809FA64
	movs r0, #1
	bl sub_0809FA64
	movs r0, #2
	bl sub_0809FA64
	movs r0, #3
	bl sub_0809FA64
	b _0809DC08
_0809DBFA:
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #6
	strb r0, [r1, #0]
	bl sub_0809FB18
_0809DC08:
	ldr r2, _0809DC10
	adds r1, r6, r2
	b _0809DC76
	.2byte 0x0000
_0809DC10: .4byte 0x000001FD
_0809DC14:
	movs r3, #2
	mov sl, r3
	mov r4, sl
	strh r4, [r6, #0xc]
	ldr r1, [sp, #0x68]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	cmp r1, #0x3c
	bls _0809DCA2
	movs r0, #0
	str r0, [sp, #0x68]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r6, r2
	movs r0, #3
	b _0809DC70
_0809DC38:
	movs r4, #2
	mov sl, r4
	mov r0, sl
	strh r0, [r6, #0xc]
	ldr r1, [sp, #0x68]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	cmp r1, #0xb4
	bls _0809DCA2
	movs r1, #0
	str r1, [sp, #0x68]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r6, r2
	movs r0, #3
	b _0809DC70
_0809DC5C:
	movs r4, #2
	mov sl, r4
	mov r0, sl
	strh r0, [r6, #0xc]
	bl sub_0809F90C
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r6, r2
	movs r0, #8
_0809DC70:
	strb r0, [r1, #0]
	ldr r3, _0809DC80
	adds r1, r6, r3
_0809DC76:
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
	b _0809DCA2
_0809DC80: .4byte 0x000001FD
_0809DC84:
	movs r4, #2
	mov sl, r4
	mov r0, sl
	strh r0, [r6, #0xc]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r6, r2
	movs r0, #5
	strb r0, [r1, #0]
	ldr r3, _0809DCD0
	adds r1, r6, r3
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
_0809DCA2:
	ldr r1, _0809DCD4
	ldr r0, [sp, #0x70]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x70]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r1, [r0, r4]
	asrs r1, r1, #1
	ldr r0, [r6, #0x18]
	adds r0, r0, r1
	str r0, [r6, #0x18]
_0809DCBE:
	mov r0, sl
	cmp r0, #1
	beq _0809DCE4
	cmp r0, #1
	bgt _0809DCD8
	cmp r0, #0
	beq _0809DCE0
	b _0809DD16
	.2byte 0x0000
_0809DCD0: .4byte 0x000001FD
_0809DCD4: .4byte gUnk_080B9704
_0809DCD8:
	mov r1, sl
	cmp r1, #2
	beq _0809DCF0
	b _0809DD16
_0809DCE0:
	ldrh r0, [r6, #8]
	b _0809DCFE
_0809DCE4:
	ldrh r0, [r6, #8]
	adds r0, #8
	mov r4, r9
	strh r0, [r4, #0]
	movs r0, #1
	b _0809DD14
_0809DCF0:
	ldr r1, _0809DD08
	adds r0, r6, r1
	ldrb r0, [r0, #0]
	cmp r0, #5
	bne _0809DD0C
	ldrh r0, [r6, #8]
	adds r0, #8
_0809DCFE:
	mov r2, r9
	strh r0, [r2, #0]
	movs r3, #1
	str r3, [sp, #0x5c]
	b _0809DD16
_0809DD08: .4byte 0x000001FD
_0809DD0C:
	movs r0, #0x18
	mov r4, r9
	strh r0, [r4, #0]
	movs r0, #0
_0809DD14:
	str r0, [sp, #0x5c]
_0809DD16:
	ldr r0, _0809DD60
	ldr r2, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x68
	ldr r1, [sp, #0x58]
	ldrh r3, [r0, #0]
	cmp r1, r3
	beq _0809DD36
	ldrh r0, [r0, #0]
	str r0, [sp, #0x58]
	adds r0, r2, #0
	adds r0, #0x6c
	movs r1, #0
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
_0809DD36:
	ldr r0, _0809DD64
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r4, [sp, #0x88]
	ldrh r2, [r4, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0809DD68
	bl sub_08097FF8
	b _0809DD76
	.2byte 0x0000
_0809DD60: .4byte gUnk_03000310
_0809DD64: .4byte gUnk_03000314
_0809DD68:
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, [r6, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_0809DD76:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809DD9C
	mov r0, r9
	ldrh r1, [r0, #0]
	ldr r2, [sp, #0x5c]
	str r2, [sp, #0]
	add r0, sp, #0x10
	ldr r2, [sp, #0x80]
	ldr r3, [sp, #0x84]
	bl sub_08065370
	adds r1, r6, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
_0809DD9C:
	ldr r0, [r6, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r3, [sp, #0x60]
	cmp r3, #0
	beq _0809DDFE
	adds r0, r3, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x60]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0809DE40
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809DE40
	bl sub_0800CC98
	cmp r0, #0
	bne _0809DE40
	bl sub_0800CD34
	cmp r0, #0
	bne _0809DE40
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r3, r9
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x80]
	ldrh r3, [r4, #0]
	mov r1, r8
	str r1, [sp, #0]
	b _0809DE26
_0809DDFE:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809DE40
	bl sub_0800CC98
	cmp r0, #0
	bne _0809DE40
	bl sub_0800CD34
	cmp r0, #0
	bne _0809DE40
	movs r3, #0
	ldrsh r0, [r4, r3]
	mov r4, r9
	ldrh r2, [r4, #0]
	ldr r1, [sp, #0x80]
	ldrh r3, [r1, #0]
	mov r4, r8
	str r4, [sp, #0]
_0809DE26:
	add r1, sp, #0x2c
	str r1, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r1, #0xa0
	bl sub_08007870
	adds r1, r0, #0
	movs r2, #0
	ldrsh r0, [r5, r2]
	str r0, [r1, #0xc]
_0809DE40:
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	beq _0809DE56
	ldr r3, [sp, #0x54]
	cmp r3, r0
	beq _0809DE56
	str r0, [sp, #0x54]
	movs r4, #0xa
	str r4, [sp, #0x64]
	movs r0, #0
	str r0, [sp, #0x6c]
_0809DE56:
	ldr r1, [sp, #0x64]
	cmp r1, #0
	beq _0809DEA8
	bl sub_0800CC98
	cmp r0, #0
	bne _0809DE82
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809DE82
	bl sub_0800CD34
	cmp r0, #0
	bne _0809DE82
	ldr r3, [sp, #0x6c]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	ldr r1, [sp, #0x54]
	bl sub_0801A120
_0809DE82:
	movs r0, #2
	ldr r4, [sp, #0x64]
	ands r0, r4
	cmp r0, #0
	beq _0809DE98
	ldr r1, [sp, #0x6c]
	lsls r0, r1, #0x10
	ldr r2, _0809DEA4
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
_0809DE98:
	ldr r0, [sp, #0x64]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	b _0809DEB0
_0809DEA4: .4byte 0xFFFF0000
_0809DEA8:
	movs r3, #0
	str r3, [sp, #0x54]
	ldr r4, [sp, #0x64]
	str r4, [r6, #0x4c]
_0809DEB0:
	adds r0, r6, #0
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0809DEC0
	movs r0, #1
	str r0, [sp, #0x7c]
_0809DEC0:
	bl sub_080003F0
	ldr r1, [sp, #0x7c]
	cmp r1, #0
	bne _0809DEDC
_0809DECA:
	bl sub_0800CB78
	cmp r0, #0
	bne _0809DEDC
	bl sub_08056E90
	cmp r0, #0
	bne _0809DEDC
	b _0809DA7A
_0809DEDC:
	ldr r0, _0809E048
	movs r4, #0
	str r4, [r0, #0]
	bl sub_080020F4
	ldr r1, _0809E04C
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	bl sub_0809FAEC
	bl sub_0809FA28
	bl sub_08097C6C
	ldr r1, _0809E050
	ldr r2, [r1, #0]
	adds r0, r2, #0
	adds r0, #0x6c
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	movs r2, #0
	str r2, [sp, #0x6c]
	movs r3, #0xa
	str r3, [sp, #0x64]
	ldr r4, _0809E054
	mov sl, r4
	mov r9, r1
_0809DF26:
	bl sub_080020F4
	ldr r2, _0809E04C
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r3, r0, #0
	muls r3, r1, r3
	adds r2, #0x30
	adds r3, r3, r2
	ldr r0, [r3, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809DFFE
	bl sub_0800CC98
	cmp r0, #0
	bne _0809DFFE
	bl sub_0800CD34
	adds r7, r0, #0
	cmp r7, #0
	bne _0809DFFE
	mov r1, sl
	ldrh r0, [r1, #0]
	adds r0, #0x10
	ldr r3, [sp, #0x88]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	mov r4, r9
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	add r1, sp, #0x10
	mov r2, sl
	ldrh r0, [r2, #0]
	strb r0, [r1, #0x1c]
	ldr r3, [r4, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r7, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065370
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	str r7, [sp, #0]
	str r7, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	movs r3, #0
	ldrsh r0, [r4, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r2, r9
	ldr r3, [r2, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
	ldr r0, [sp, #0x6c]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	ldr r1, [sp, #0x54]
	bl sub_0801A120
_0809DFFE:
	movs r0, #2
	ldr r1, [sp, #0x64]
	ands r0, r1
	cmp r0, #0
	beq _0809E014
	ldr r2, [sp, #0x6c]
	lsls r0, r2, #0x10
	ldr r3, _0809E058
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
_0809E014:
	bl sub_080003F0
	ldr r0, [sp, #0x64]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	ldr r0, _0809E05C
	ldr r4, [sp, #0x64]
	cmp r4, r0
	beq _0809E02C
	b _0809DF26
_0809E02C:
	bl sub_080683CC
	ldrh r0, [r6, #2]
	bl sub_08067CA8
	ldr r0, _0809E060
	bl sub_08068330
	ldr r0, _0809E054
	mov r9, r0
	ldr r6, _0809E050
	add r7, sp, #0x44
	b _0809E134
	.2byte 0x0000
_0809E048: .4byte gUnk_030056FC
_0809E04C: .4byte gUnk_03003CE0
_0809E050: .4byte gUnk_03000310
_0809E054: .4byte gUnk_03000314
_0809E058: .4byte 0xFFFF0000
_0809E05C: .4byte 0x0000FFFF
_0809E060: .4byte 0xDEADFACE
_0809E064:
	bl sub_080020F4
	ldr r2, _0809E150
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r3, r0, #0
	muls r3, r1, r3
	adds r2, #0x30
	adds r3, r3, r2
	ldr r0, [r3, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809E130
	bl sub_0800CC98
	cmp r0, #0
	bne _0809E130
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809E130
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _0809E130
	mov r1, r9
	ldrh r0, [r1, #0]
	adds r0, #0x10
	ldr r3, [sp, #0x88]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	add r1, sp, #0x10
	mov r4, r9
	ldrh r0, [r4, #0]
	strb r0, [r1, #0x1c]
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r5, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065370
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x46
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_0809E130:
	bl sub_080003F0
_0809E134:
	ldr r0, _0809E154
	bl sub_080682B8
	cmp r0, #0
	beq _0809E064
	ldr r0, _0809E154
	bl sub_08065E38
	ldr r0, _0809E158
	mov r9, r0
	ldr r6, _0809E15C
	add r7, sp, #0x44
	b _0809E230
	.2byte 0x0000
_0809E150: .4byte gUnk_03003CE0
_0809E154: .4byte 0xDEADFACE
_0809E158: .4byte gUnk_03000314
_0809E15C: .4byte gUnk_03000310
_0809E160:
	bl sub_080020F4
	ldr r2, _0809E268
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r3, r0, #0
	muls r3, r1, r3
	adds r2, #0x30
	adds r3, r3, r2
	ldr r0, [r3, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809E22C
	bl sub_0800CC98
	cmp r0, #0
	bne _0809E22C
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809E22C
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _0809E22C
	mov r1, r9
	ldrh r0, [r1, #0]
	adds r0, #0x10
	ldr r3, [sp, #0x88]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	add r1, sp, #0x10
	mov r4, r9
	ldrh r0, [r4, #0]
	strb r0, [r1, #0x1c]
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r5, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065370
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x46
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_0809E22C:
	bl sub_080003F0
_0809E230:
	bl sub_08058DB0
	cmp r0, #0
	bne _0809E160
	movs r0, #0
	bl sub_080586B4
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _0809E26C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	ldr r1, _0809E270
	ldr r1, [r1, #0]
	movs r2, #0xe4
	lsls r2, r2, #3
	adds r1, r1, r2
	str r0, [r1, #0]
	ldr r3, _0809E274
	mov r9, r3
	ldr r6, _0809E278
	add r7, sp, #0x44
	b _0809E34A
_0809E268: .4byte gUnk_03003CE0
_0809E26C: .4byte 0x00140047
_0809E270: .4byte gUnk_03005CF4
_0809E274: .4byte gUnk_03000314
_0809E278: .4byte gUnk_03000310
_0809E27C:
	bl sub_080020F4
	ldr r2, _0809E418
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r3, r0, #0
	muls r3, r1, r3
	adds r2, #0x30
	adds r3, r3, r2
	ldr r0, [r3, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809E346
	bl sub_0800CC98
	cmp r0, #0
	bne _0809E346
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809E346
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _0809E346
	mov r4, r9
	ldrh r0, [r4, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x88]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	add r1, sp, #0x10
	ldrh r0, [r4, #0]
	strb r0, [r1, #0x1c]
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r5, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065370
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x46
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_0800BC08
	movs r2, #0
	ldrsh r0, [r7, r2]
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_0809E346:
	bl sub_080003F0
_0809E34A:
	ldr r0, _0809E41C
	ldr r0, [r0, #0]
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bl sub_0805EEFC
	cmp r0, #0
	beq _0809E27C
	bl sub_080020F4
	ldr r4, _0809E418
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	adds r4, #0x30
	adds r2, r2, r4
	ldr r0, [r2, #0]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	movs r0, #0xd
	bl sub_08058688
	ldr r6, _0809E420
	ldr r0, [r6, #0]
	ldr r3, [sp, #0x88]
	ldrh r2, [r3, #0]
	ldr r1, _0809E424
	ldrh r3, [r1, #0]
	add r1, sp, #0x10
	bl sub_080970CC
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0809E3F4
	ldr r0, [r6, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0809E3F4
	ldr r0, _0809E428
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x48]
	bl sub_0801E46C
	adds r4, r0, #0
	movs r0, #0x1d
	str r0, [sp, #0x6c]
	movs r5, #1
	negs r5, r5
_0809E3C4:
	ldr r0, _0809E420
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r4, #0
	bl sub_0806171C
	bl sub_080003F0
	ldr r1, [sp, #0x6c]
	lsls r0, r1, #0x10
	ldr r2, _0809E42C
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x6c]
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _0809E3C4
	ldr r0, _0809E428
	ldr r0, [r0, #0]
	adds r1, r4, #0
	bl sub_0801E4CC
_0809E3F4:
	movs r4, #0x6f
	str r4, [sp, #0x6c]
	subs r4, #0x70
_0809E3FA:
	bl sub_080003F0
	ldr r1, [sp, #0x6c]
	lsls r0, r1, #0x10
	ldr r2, _0809E42C
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x6c]
	asrs r0, r0, #0x10
	cmp r0, r4
	bne _0809E3FA
	bl sub_08067C18
	b _0809E434
	.2byte 0x0000
_0809E418: .4byte gUnk_03003CE0
_0809E41C: .4byte gUnk_03005CF4
_0809E420: .4byte gUnk_03000310
_0809E424: .4byte gUnk_03000314
_0809E428: .4byte gUnk_030034E0
_0809E42C: .4byte 0xFFFF0000
_0809E430:
	bl sub_080003F0
_0809E434:
	bl sub_08067C08
	cmp r0, #0
	beq _0809E430
	bl sub_08067BF8
	bl sub_08056E24
	b _0809E44A
_0809E446:
	bl sub_080003F0
_0809E44A:
	bl sub_08056E90
	cmp r0, #0
	beq _0809E446
	bl sub_0809F934
_0809E456:
	add sp, #0x8c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0809D878
