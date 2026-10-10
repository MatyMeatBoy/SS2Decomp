	thumb_func_start sub_08009B84
sub_08009B84: @ 0x08009B84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _08009BA8
	adds r0, r1, #0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	adds r7, r1, #0
	cmp r0, #0xe
	bhi _08009C54
	lsls r0, r0, #2
	ldr r1, _08009BAC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08009BA8: .4byte gUnk_03003170
_08009BAC: .4byte _08009BB0
_08009BB0:
	.4byte _08009C54
_08009BB4: .4byte _08009C54
_08009BB8: .4byte _08009C54
_08009BBC: .4byte _08009C54
_08009BC0: .4byte _08009BEC
_08009BC4: .4byte _08009C54
_08009BC8: .4byte _08009C54
_08009BCC: .4byte _08009C54
_08009BD0: .4byte _08009BFA
_08009BD4: .4byte _08009C54
_08009BD8: .4byte _08009C54
_08009BDC: .4byte _0800A01C
_08009BE0: .4byte _0800A01C
_08009BE4: .4byte _08009C54
_08009BE8: .4byte _0800A01C
_08009BEC:
	adds r0, r7, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0xc
	bne _08009BF8
	b _0800A01C
_08009BF8:
	b _08009C54
_08009BFA:
	adds r0, r7, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	subs r0, #2
	cmp r0, #0xf
	bhi _08009C54
	lsls r0, r0, #2
	ldr r1, _08009C10
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08009C10: .4byte _08009C14
_08009C14:
	.4byte _0800A01C
_08009C18: .4byte _08009C54
_08009C1C: .4byte _0800A01C
_08009C20: .4byte _08009C54
_08009C24: .4byte _0800A01C
_08009C28: .4byte _08009C54
_08009C2C: .4byte _0800A01C
_08009C30: .4byte _08009C54
_08009C34: .4byte _0800A01C
_08009C38: .4byte _08009C54
_08009C3C: .4byte _0800A01C
_08009C40: .4byte _08009C54
_08009C44: .4byte _0800A01C
_08009C48: .4byte _08009C54
_08009C4C: .4byte _08009C54
_08009C50: .4byte _0800A01C
_08009C54:
	adds r0, r7, #0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #3
	beq _08009C62
	cmp r0, #6
	bne _08009C66
_08009C62:
	movs r6, #1
	b _08009C68
_08009C66:
	movs r6, #0
_08009C68:
	adds r0, r7, #0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #0x13
	bls _08009C74
	b _08009F50
_08009C74:
	lsls r0, r0, #2
	ldr r1, _08009C80
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08009C80: .4byte _08009C84
_08009C84:
	.4byte _08009CD4
_08009C88: .4byte _08009D04
_08009C8C: .4byte _08009D04
_08009C90: .4byte _08009D04
_08009C94: .4byte _08009D14
_08009C98: .4byte _08009D3A
_08009C9C: .4byte _08009D62
_08009CA0: .4byte _08009D68
_08009CA4: .4byte _08009F50
_08009CA8: .4byte _08009D88
_08009CAC: .4byte _08009E8C
_08009CB0: .4byte _08009F50
_08009CB4: .4byte _08009F50
_08009CB8: .4byte _08009F16
_08009CBC: .4byte _08009F50
_08009CC0: .4byte _08009F50
_08009CC4: .4byte _08009F50
_08009CC8: .4byte _08009F50
_08009CCC: .4byte _08009F50
_08009CD0: .4byte _08009F34
_08009CD4:
	adds r5, r7, #0
	adds r5, #0x90
	ldrh r0, [r5, #0]
	cmp r0, #2
	bne _08009CE0
	b _0800A01C
_08009CE0:
	cmp r0, #5
	bne _08009CE6
	b _0800A01C
_08009CE6:
	cmp r0, #0
	beq _08009CFA
	movs r0, #0
	str r0, [sp, #0]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
_08009CFA:
	ldrh r0, [r5, #0]
	cmp r0, #1
	bne _08009D02
	b _0800A01C
_08009D02:
	b _08009F50
_08009D04:
	bl sub_0800CDC0
	cmp r0, #0
	beq _08009D0E
	b _08009F50
_08009D0E:
	str r0, [sp, #0]
	str r0, [sp, #4]
	b _08009D54
_08009D14:
	bl sub_0800CDC0
	cmp r0, #0
	beq _08009D1E
	b _08009F50
_08009D1E:
	bl sub_0800CC98
	cmp r0, #0
	beq _08009D28
	b _08009F50
_08009D28:
	str r0, [sp, #0]
	str r0, [sp, #4]
	movs r0, #6
	movs r1, #0x10
	movs r2, #1
	movs r3, #0xd
	bl sub_0800903C
	b _08009F50
_08009D3A:
	bl sub_0800CC98
	adds r4, r0, #0
	cmp r4, #0
	beq _08009D46
	b _08009F50
_08009D46:
	bl sub_0800CDC0
	cmp r0, #0
	bne _08009D50
	b _08009F50
_08009D50:
	str r4, [sp, #0]
	str r4, [sp, #4]
_08009D54:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
	b _08009F50
_08009D62:
	bl sub_0801AAE0
	b _08009EFC
_08009D68:
	bl sub_0800CDC0
	adds r1, r0, #0
	cmp r1, #0
	beq _08009D74
	b _08009F50
_08009D74:
	movs r0, #8
	str r0, [sp, #0]
	str r1, [sp, #4]
	movs r0, #2
	movs r1, #0x10
	movs r2, #1
	movs r3, #7
	bl sub_0800903C
	b _08009F50
_08009D88:
	ldr r0, _08009D9C
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0xe
	bhi _08009E1C
	lsls r0, r0, #2
	ldr r1, _08009DA0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08009D9C: .4byte gUnk_03003170
_08009DA0: .4byte _08009DA4
_08009DA4:
	.4byte _08009DFE
_08009DA8: .4byte _08009DE0
_08009DAC: .4byte _08009DFE
_08009DB0: .4byte _08009DE0
_08009DB4: .4byte _08009E1C
_08009DB8: .4byte _08009DE0
_08009DBC: .4byte _08009DFE
_08009DC0: .4byte _08009DE0
_08009DC4: .4byte _08009E1C
_08009DC8: .4byte _08009DE0
_08009DCC: .4byte _08009E1C
_08009DD0: .4byte _08009DE0
_08009DD4: .4byte _08009E1C
_08009DD8: .4byte _08009DFE
_08009DDC: .4byte _08009DE0
_08009DE0:
	bl sub_0800CC98
	adds r1, r0, #0
	cmp r1, #0
	bne _08009E2C
	movs r0, #0x10
	str r0, [sp, #0]
	str r1, [sp, #4]
	movs r0, #2
	movs r1, #0x1c
	movs r2, #1
	movs r3, #3
	bl sub_0800903C
	b _08009E2C
_08009DFE:
	bl sub_0800CC98
	adds r1, r0, #0
	cmp r1, #0
	bne _08009E2C
	movs r0, #8
	str r0, [sp, #0]
	str r1, [sp, #4]
	movs r0, #2
	movs r1, #0x10
	movs r2, #1
	movs r3, #7
	bl sub_0800903C
	b _08009E2C
_08009E1C:
	movs r0, #0
	str r0, [sp, #0]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
_08009E2C:
	ldr r0, _08009E44
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0xf
	bls _08009E38
	b _08009F50
_08009E38:
	lsls r0, r0, #2
	ldr r1, _08009E48
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08009E44: .4byte gUnk_03003170
_08009E48: .4byte _08009E4C
_08009E4C:
	.4byte _0800A01C
_08009E50: .4byte _08009F50
_08009E54: .4byte _0800A01C
_08009E58: .4byte _08009F50
_08009E5C: .4byte _0800A01C
_08009E60: .4byte _08009F50
_08009E64: .4byte _0800A01C
_08009E68: .4byte _08009F50
_08009E6C: .4byte _0800A01C
_08009E70: .4byte _08009F50
_08009E74: .4byte _08009F50
_08009E78: .4byte _08009F50
_08009E7C: .4byte _0800A01C
_08009E80: .4byte _0800A01C
_08009E84: .4byte _08009F50
_08009E88: .4byte _0800A01C
_08009E8C:
	adds r0, r7, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0x14
	bhi _08009F50
	lsls r0, r0, #2
	ldr r1, _08009EA0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08009EA0: .4byte _08009EA4
_08009EA4:
	.4byte _0800A01C
_08009EA8: .4byte _0800A01C
_08009EAC: .4byte _08009F50
_08009EB0: .4byte _0800A01C
_08009EB4: .4byte _08009F50
_08009EB8: .4byte _08009F50
_08009EBC: .4byte _08009F50
_08009EC0: .4byte _08009F50
_08009EC4: .4byte _08009F50
_08009EC8: .4byte _08009F50
_08009ECC: .4byte _08009F50
_08009ED0: .4byte _08009F50
_08009ED4: .4byte _08009F50
_08009ED8: .4byte _0800A01C
_08009EDC: .4byte _08009F50
_08009EE0: .4byte _0800A01C
_08009EE4: .4byte _0800A01C
_08009EE8: .4byte _08009F50
_08009EEC: .4byte _08009F50
_08009EF0: .4byte _0800A01C
_08009EF4: .4byte _08009EF8
_08009EF8:
	bl sub_0800CC98
_08009EFC:
	adds r1, r0, #0
	cmp r1, #0
	bne _08009F50
	movs r0, #0x10
	str r0, [sp, #0]
	str r1, [sp, #4]
	movs r0, #2
	movs r1, #0x1c
	movs r2, #1
	movs r3, #3
	bl sub_0800903C
	b _08009F50
_08009F16:
	bl sub_0800CC98
	adds r1, r0, #0
	cmp r1, #0
	bne _0800A01C
	movs r0, #0x10
	str r0, [sp, #0]
	str r1, [sp, #4]
	movs r0, #2
	movs r1, #0x3c
	movs r2, #1
	movs r3, #3
	bl sub_0800903C
	b _0800A01C
_08009F34:
	bl sub_0800CC98
	adds r1, r0, #0
	cmp r1, #0
	bne _08009F50
	movs r0, #8
	str r0, [sp, #0]
	str r1, [sp, #4]
	movs r0, #4
	movs r1, #0x10
	movs r2, #1
	movs r3, #7
	bl sub_0800903C
_08009F50:
	ldr r5, _0800A02C
	adds r0, r5, #0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	subs r0, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08009F6A
	bl sub_0800CDC0
	cmp r0, #0
	bne _0800A01C
_08009F6A:
	ldr r0, _0800A030
	lsls r4, r6, #1
	adds r4, r4, r0
	ldrh r1, [r4, #0]
	movs r0, #0x20
	bl sub_080B9394
	mov sl, r0
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_08007290
	movs r1, #0
	str r1, [sp, #8]
	mov r9, r5
	mov r7, r9
	ldr r2, _0800A034
	str r2, [sp, #0xc]
	adds r5, #0xa0
	movs r3, #0xe0
	lsls r3, r3, #7
	adds r3, r3, r0
	mov r8, r3
	movs r6, #0
_08009F9E:
	mov r0, r9
	adds r0, #0x8c
	ldrh r1, [r0, #0]
	movs r0, #0x74
	muls r0, r1, r0
	adds r0, r6, r0
	ldr r1, _0800A038
	adds r3, r0, r1
	ldrh r0, [r3, #0]
	cmp r0, #0
	beq _0800A002
	mov r0, r9
	adds r0, #0xa8
	adds r2, r6, r0
	ldrh r1, [r2, #0]
	adds r0, r1, #1
	strh r0, [r2, #0]
	ldrh r0, [r3, #0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, r1
	bhi _08009FE0
	movs r1, #0
	strh r1, [r2, #0]
	ldrh r0, [r5, #0]
	adds r0, #1
	strh r0, [r5, #0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r4, #0]
	cmp r0, r2
	blo _08009FE0
	strh r1, [r5, #0]
_08009FE0:
	adds r0, r7, #0
	adds r0, #0xa8
	adds r0, r6, r0
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0800A002
	ldrh r0, [r5, #0]
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	lsls r0, r0, #5
	add r0, r8
	ldr r1, [sp, #0xc]
	mov r3, sl
	lsls r2, r3, #5
	bl sub_08001348
_0800A002:
	ldr r0, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [sp, #0xc]
	adds r5, #2
	add r8, r1
	adds r6, #2
	ldr r2, [sp, #8]
	adds r2, #1
	str r2, [sp, #8]
	cmp r2, #3
	bls _08009F9E
_0800A01C:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0800A02C: .4byte gUnk_03003170
_0800A030: .4byte gUnk_08478F4C
_0800A034: .4byte 0x06007000
_0800A038: .4byte gUnk_08478470
	thumb_func_end sub_08009B84
