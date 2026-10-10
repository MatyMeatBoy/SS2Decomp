	thumb_func_start sub_0805FC80
sub_0805FC80: @ 0x0805FC80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	adds r5, r2, #0
	mov sl, r3
	movs r0, #0
	mov r8, r0
	mov r9, r0
	ldrh r0, [r5, #0]
	cmp r0, #0xa
	bls _0805FCA2
	b _0805FFA0
_0805FCA2:
	lsls r0, r0, #2
	ldr r1, _0805FCAC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0805FCAC: .4byte _0805FCB0
_0805FCB0:
	.4byte _0805FFA0
_0805FCB4: .4byte _0805FCDC
_0805FCB8: .4byte _0805FCEC
_0805FCBC: .4byte _0805FD1C
_0805FCC0: .4byte _0805FD24
_0805FCC4: .4byte _0805FD44
_0805FCC8: .4byte _0805FD7C
_0805FCCC: .4byte _0805FD6C
_0805FCD0: .4byte _0805FDAC
_0805FCD4: .4byte _0805FD8C
_0805FCD8: .4byte _0805FD9E
_0805FCDC:
	ldrh r0, [r5, #2]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r0, #0xa8
	b _0805FDBA
_0805FCEC:
	ldrh r0, [r5, #2]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r1, r0, #0
	adds r4, r1, #0
	adds r4, #0xbe
	ldrh r0, [r4, #0]
	ldrb r7, [r4, #0]
	lsrs r6, r0, #8
	ldrb r0, [r5, #8]
	cmp r0, #0
	bne _0805FD5E
	ldrb r5, [r5, #7]
	mov r9, r5
	cmp r5, #0
	bne _0805FDC0
	adds r0, r1, #0
	adds r0, #0xbc
	ldrh r0, [r0, #0]
	mov r9, r0
	b _0805FDC0
_0805FD1C:
	ldrh r0, [r5, #2]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	b _0805FD2A
_0805FD24:
	ldrh r0, [r5, #2]
	movs r1, #0xd0
	lsls r1, r1, #0xc
_0805FD2A:
	orrs r0, r1
	bl sub_08007290
	adds r0, #0xb0
	ldrh r1, [r0, #0]
	ldrb r7, [r0, #0]
	lsrs r6, r1, #8
	ldrb r0, [r5, #8]
	cmp r0, #0
	bne _0805FD5E
	ldrb r5, [r5, #7]
	mov r9, r5
	b _0805FDC0
_0805FD44:
	ldrh r0, [r5, #2]
	movs r1, #0xe0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r0, #0xb0
	ldrh r1, [r0, #0]
	ldrb r7, [r0, #0]
	lsrs r6, r1, #8
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _0805FDC0
_0805FD5E:
	adds r6, #1
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	b _0805FDC0
_0805FD6C:
	ldrh r0, [r5, #2]
	movs r1, #0x88
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r0, #0xa8
	b _0805FDBA
_0805FD7C:
	ldrh r0, [r5, #2]
	movs r1, #0xf0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r0, #0xac
	b _0805FDBA
_0805FD8C:
	ldrh r0, [r5, #2]
	movs r1, #0xa8
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r0, #0xa0
	ldr r1, [r0, #0]
	b _0805FDBC
_0805FD9E:
	movs r0, #0xb0
	lsls r0, r0, #0xd
	bl sub_08007290
	adds r0, #0x9c
	ldr r1, [r0, #0]
	b _0805FDBC
_0805FDAC:
	ldrh r0, [r5, #2]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r0, #0xa0
_0805FDBA:
	ldrh r1, [r0, #0]
_0805FDBC:
	ldrb r7, [r0, #0]
	lsrs r6, r1, #8
_0805FDC0:
	movs r0, #1
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _0805FE68
	bl sub_0800CCCC
	adds r3, r0, #0
	ldr r2, [sp, #0x20]
	asrs r2, r2, #8
	mov r8, r2
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x24]
	asrs r4, r1, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r5, sp
	adds r5, #0x1e
	movs r2, #0x10
	str r2, [sp, #0]
	str r3, [sp, #4]
	add r2, sp, #0x1c
	adds r3, r5, #0
	bl sub_0800BC08
	add r0, sp, #0x1c
	ldrh r0, [r0, #0]
	adds r0, #0x10
	lsls r0, r0, #0x10
	movs r1, #0x84
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _0805FE06
	b _0805FFA0
_0805FE06:
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	bge _0805FE14
	b _0805FFA0
_0805FE14:
	cmp r1, #0xa8
	ble _0805FE1A
	b _0805FFA0
_0805FE1A:
	bl sub_0800CCCC
	adds r2, r0, #0
	mov r0, r8
	adds r1, r4, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r1, sp, #0x1c
	movs r2, #0
	ldrsh r4, [r1, r2]
	movs r2, #0
	ldrsh r1, [r5, r2]
	str r0, [sp, #0]
	movs r0, #0x34
	adds r3, r6, #0
	muls r3, r0, r3
	ldr r0, _0805FE64
	adds r2, r3, r0
	str r2, [sp, #4]
	adds r2, r0, #0
	subs r2, #0x1c
	subs r0, #0x14
	adds r0, r3, r0
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	adds r3, r3, r2
	ldr r0, [r3, #0]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r2, #0
	adds r3, r7, #0
	bl sub_08008E74
	b _0805FFA0
	.2byte 0x0000
_0805FE64: .4byte gUnk_03005DDC
_0805FE68:
	movs r0, #2
	mov r4, sl
	ands r0, r4
	cmp r0, #0
	beq _0805FE8C
	mov r0, r8
	cmp r0, #0
	bne _0805FE8C
	ldr r1, _0805FE88
	movs r0, #0x34
	muls r0, r6, r0
	adds r0, r0, r1
	adds r0, #0x25
	movs r1, #0xa
	b _0805FE98
	.2byte 0x0000
_0805FE88: .4byte gUnk_03005DC0
_0805FE8C:
	ldr r1, _0805FF58
	movs r0, #0x34
	muls r0, r6, r0
	adds r0, r0, r1
	adds r0, #0x25
	movs r1, #9
_0805FE98:
	strb r1, [r0, #0]
	movs r0, #8
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _0805FEDA
	mov r2, r9
	cmp r2, #0
	beq _0805FEDA
	cmp r2, #7
	bne _0805FEB2
	movs r4, #6
	mov r9, r4
_0805FEB2:
	mov r3, r9
	adds r3, #0xb
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, _0805FF5C
	ldr r1, [sp, #0x24]
	adds r1, #8
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r2, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r2, #8]
	str r0, [sp, #8]
	ldr r0, [r2, #0]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	movs r2, #4
	bl sub_08007CF0
_0805FEDA:
	movs r0, #4
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _0805FF60
	movs r0, #0x34
	adds r2, r6, #0
	muls r2, r0, r2
	ldr r0, _0805FF58
	adds r2, r2, r0
	ldrh r3, [r2, #0x2e]
	ldrh r4, [r2, #0x2c]
	adds r1, r3, r4
	strh r1, [r2, #0x2c]
	lsls r0, r3, #0x10
	cmp r0, #0
	ble _0805FF0C
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x30
	ldrsh r1, [r2, r4]
	cmp r0, r1
	ble _0805FF0C
	negs r0, r3
	strh r0, [r2, #0x2e]
_0805FF0C:
	ldrh r3, [r2, #0x2e]
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0805FF26
	movs r4, #0x2c
	ldrsh r1, [r2, r4]
	movs r4, #0x32
	ldrsh r0, [r2, r4]
	cmp r1, r0
	bge _0805FF26
	negs r0, r3
	strh r0, [r2, #0x2e]
_0805FF26:
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r2, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r2, #8]
	str r0, [sp, #8]
	ldr r0, [r2, #0]
	str r0, [sp, #0xc]
	movs r1, #0x2c
	ldrsh r0, [r2, r1]
	str r0, [sp, #0x10]
	movs r4, #0x2c
	ldrsh r0, [r2, r4]
	str r0, [sp, #0x14]
	movs r0, #0xff
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	movs r2, #0
	adds r3, r7, #0
	bl sub_08007F0C
	b _0805FF8C
	.2byte 0x0000
_0805FF58: .4byte gUnk_03005DC0
_0805FF5C: .4byte gUnk_03005D80
_0805FF60:
	str r0, [sp, #0]
	movs r0, #0x34
	adds r2, r6, #0
	muls r2, r0, r2
	ldr r0, _0805FFB0
	adds r1, r2, r0
	str r1, [sp, #4]
	adds r1, r0, #0
	subs r1, #0x1c
	subs r0, #0x14
	adds r0, r2, r0
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	adds r2, r2, r1
	ldr r0, [r2, #0]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	movs r2, #0
	adds r3, r7, #0
	bl sub_08007CF0
_0805FF8C:
	ldr r1, _0805FFB4
	movs r0, #0x34
	muls r0, r6, r0
	adds r0, r0, r1
	adds r0, #0x25
	movs r1, #9
	strb r1, [r0, #0]
	ldr r0, _0805FFB8
	adds r0, #0x25
	strb r1, [r0, #0]
_0805FFA0:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805FFB0: .4byte gUnk_03005DDC
_0805FFB4: .4byte gUnk_03005DC0
_0805FFB8: .4byte gUnk_03005D80
	thumb_func_end sub_0805FC80
