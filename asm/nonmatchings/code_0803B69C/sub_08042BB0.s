	thumb_func_start sub_08042BB0
sub_08042BB0: @ 0x08042BB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	bl sub_0800CF90
	movs r4, #1
	add r0, sp, #0xc
	mov sl, r0
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x18]
	mov r2, sp
	adds r2, #0x14
	str r2, [sp, #0x1c]
	b _08042BDE
_08042BD4:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08042BEA
_08042BDE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08042BD4
_08042BEA:
	movs r0, #0
	movs r1, #2
	bl sub_0801A664
	movs r4, #1
	b _08042C00
_08042BF6:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08042C0C
_08042C00:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08042BF6
_08042C0C:
	ldr r2, _08042E58
	ldr r0, _08042E5C
	str r2, [r0, #0]
	ldr r0, _08042E60
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08042C24
	adds r0, r2, #0
	bl sub_08006CB4
_08042C24:
	movs r0, #0x20
	movs r1, #0x5d
	movs r2, #0x52
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _08042E64
	ldr r0, [r0, #0]
	ldr r3, _08042E68
	adds r1, r0, r3
	movs r2, #0
_08042C3A:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _08042C42
	b _08042EA8
_08042C42:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08042C3A
	bl sub_080003F0
	movs r2, #0
_08042C50:
	cmp r2, #0
	beq _08042C64
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_08042C64:
	ldr r5, _08042E6C
	ldr r0, _08042E64
	ldr r0, [r0, #0]
	ldr r2, _08042E68
	adds r1, r0, r2
	movs r2, #0
_08042C70:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _08042C78
	b _08042EA4
_08042C78:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08042C70
	bl sub_080003F0
	movs r0, #0
_08042C86:
	cmp r0, #0
	beq _08042C8C
	str r5, [r0, #0x44]
_08042C8C:
	movs r0, #0x1f
	movs r1, #0x93
	movs r2, #0x52
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _08042E64
	ldr r0, [r0, #0]
	ldr r3, _08042E68
	adds r1, r0, r3
	movs r2, #0
_08042CA2:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _08042CAA
	b _08042EA0
_08042CAA:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08042CA2
	bl sub_080003F0
	movs r2, #0
_08042CB8:
	cmp r2, #0
	beq _08042CCC
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_08042CCC:
	ldr r5, _08042E70
	ldr r0, _08042E64
	ldr r0, [r0, #0]
	ldr r2, _08042E68
	adds r1, r0, r2
	movs r2, #0
_08042CD8:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _08042CE0
	b _08042E9C
_08042CE0:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08042CD8
	bl sub_080003F0
	movs r0, #0
_08042CEE:
	cmp r0, #0
	beq _08042CF4
	str r5, [r0, #0x44]
_08042CF4:
	movs r0, #0x13
	movs r1, #0xa0
	movs r2, #0x64
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _08042E64
	ldr r0, [r0, #0]
	ldr r3, _08042E68
	adds r1, r0, r3
	movs r2, #0
_08042D0A:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _08042D12
	b _08042E98
_08042D12:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08042D0A
	bl sub_080003F0
	movs r2, #0
_08042D20:
	cmp r2, #0
	beq _08042D34
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_08042D34:
	ldr r5, _08042E74
	ldr r0, _08042E64
	ldr r0, [r0, #0]
	ldr r2, _08042E68
	adds r1, r0, r2
	movs r2, #0
_08042D40:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _08042D48
	b _08042E94
_08042D48:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08042D40
	bl sub_080003F0
	movs r0, #0
_08042D56:
	cmp r0, #0
	beq _08042D5C
	str r5, [r0, #0x44]
_08042D5C:
	movs r0, #0xa
	movs r1, #0x48
	movs r2, #0x64
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _08042E64
	ldr r0, [r0, #0]
	ldr r3, _08042E68
	adds r1, r0, r3
	movs r2, #0
_08042D72:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _08042D7A
	b _08042E90
_08042D7A:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08042D72
	bl sub_080003F0
	movs r2, #0
_08042D88:
	cmp r2, #0
	beq _08042D9C
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_08042D9C:
	ldr r5, _08042E78
	ldr r0, _08042E64
	ldr r0, [r0, #0]
	ldr r2, _08042E68
	adds r1, r0, r2
	movs r2, #0
_08042DA8:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _08042E8C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08042DA8
	bl sub_080003F0
	movs r0, #0
_08042DBC:
	cmp r0, #0
	beq _08042DC2
	str r5, [r0, #0x44]
_08042DC2:
	movs r0, #0x3a
	movs r1, #0x78
	movs r2, #0x52
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _08042E64
	ldr r0, [r0, #0]
	ldr r3, _08042E68
	adds r1, r0, r3
	movs r2, #0
_08042DD8:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _08042E88
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08042DD8
	bl sub_080003F0
	movs r2, #0
_08042DEC:
	cmp r2, #0
	beq _08042E00
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0x10
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_08042E00:
	ldr r5, _08042E7C
	ldr r0, _08042E64
	ldr r0, [r0, #0]
	ldr r2, _08042E68
	adds r1, r0, r2
	movs r2, #0
_08042E0C:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _08042E84
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08042E0C
	bl sub_080003F0
	movs r0, #0
_08042E20:
	cmp r0, #0
	beq _08042E26
	str r5, [r0, #0x44]
_08042E26:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08042E80
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_080020F4
	adds r1, r0, #0
	cmp r1, #1
	beq _08042EBC
	cmp r1, #1
	bgt _08042EAC
	cmp r1, #0
	beq _08042EB6
	b _08042EDC
	.2byte 0x0000
_08042E58: .4byte 0x00000189
_08042E5C: .4byte gUnk_03005CF8
_08042E60: .4byte gUnk_030027D0
_08042E64: .4byte gUnk_03005CF4
_08042E68: .4byte 0x000007A4
_08042E6C: .4byte sub_08043A4C
_08042E70: .4byte sub_08043B20
_08042E74: .4byte sub_08043BF4
_08042E78: .4byte sub_08043CC8
_08042E7C: .4byte sub_080443EC
_08042E80: .4byte gUnk_03003CE0
_08042E84:
	adds r0, r1, #0
	b _08042E20
_08042E88:
	adds r2, r1, #0
	b _08042DEC
_08042E8C:
	adds r0, r1, #0
	b _08042DBC
_08042E90:
	adds r2, r1, #0
	b _08042D88
_08042E94:
	adds r0, r1, #0
	b _08042D56
_08042E98:
	adds r2, r1, #0
	b _08042D20
_08042E9C:
	adds r0, r1, #0
	b _08042CEE
_08042EA0:
	adds r2, r1, #0
	b _08042CB8
_08042EA4:
	adds r0, r1, #0
	b _08042C86
_08042EA8:
	adds r2, r1, #0
	b _08042C50
_08042EAC:
	cmp r1, #2
	beq _08042EC2
	cmp r1, #3
	beq _08042ED0
	b _08042EDC
_08042EB6:
	movs r0, #0
	movs r1, #0x6c
	b _08042EC6
_08042EBC:
	movs r0, #0
	movs r1, #0x84
	b _08042EC6
_08042EC2:
	movs r0, #0
	movs r1, #0x54
_08042EC6:
	movs r2, #0x90
	movs r3, #0
	bl sub_08028AAC
	b _08042EDC
_08042ED0:
	movs r0, #0
	movs r1, #0x9c
	movs r2, #0x90
	movs r3, #0
	bl sub_08028AAC
_08042EDC:
	movs r0, #0
	movs r1, #4
	bl sub_080290E4
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08042F08
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #3
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_08067D74
	movs r4, #2
	b _08042F16
	.2byte 0x0000
_08042F08: .4byte gUnk_03003CE0
_08042F0C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08042F22
_08042F16:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08042F0C
_08042F22:
	bl sub_0800CC98
	cmp r0, #0
	bne _08042F64
	bl sub_0801AB24
	cmp r0, #1
	beq _08042F48
	cmp r0, #1
	bgt _08042F3C
	cmp r0, #0
	beq _08042F42
	b _08042F5C
_08042F3C:
	cmp r0, #2
	beq _08042F50
	b _08042F5C
_08042F42:
	bl sub_080576A8
	b _08042F5C
_08042F48:
	movs r0, #6
	bl sub_0801AB50
	b _08042F5C
_08042F50:
	movs r0, #6
	bl sub_0801AB90
	b _08042F5C
_08042F58:
	bl sub_080003F0
_08042F5C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08042F58
_08042F64:
	movs r3, #0xa
	mov r9, r3
	ldr r0, _08042FCC
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r4, #0
	mov r8, r4
	ldr r7, _08042FD0
_08042F7E:
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
	ble _08042F7E
	bl sub_0800CE30
	cmp r0, #0
	beq _08043008
	ldr r0, _08042FD4
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	adds r2, r0, r1
	b _08043012
	.2byte 0x0000
_08042FCC: .4byte gUnk_03003170
_08042FD0: .4byte 0xFFE80000
_08042FD4: .4byte gUnk_03005CF4
_08042FD8:
	adds r2, r1, #0
	b _080430C2
_08042FDC:
	adds r0, r1, #0
	b _080430F8
_08042FE0:
	adds r2, r1, #0
	b _0804312A
_08042FE4:
	adds r0, r1, #0
	b _08043160
_08042FE8:
	adds r2, r1, #0
	b _08043192
_08042FEC:
	adds r0, r1, #0
	b _080431C8
_08042FF0:
	adds r2, r1, #0
	b _080431FA
_08042FF4:
	adds r0, r1, #0
	b _08043230
_08042FF8:
	adds r2, r1, #0
	b _08043262
_08042FFC:
	adds r0, r1, #0
	b _08043298
_08043000:
	adds r2, r1, #0
	b _080432CA
_08043004:
	adds r0, r1, #0
	b _08043300
_08043008:
	ldr r0, _08043020
	ldr r0, [r0, #0]
	movs r3, #0xdd
	lsls r3, r3, #1
	adds r2, r0, r3
_08043012:
	movs r0, #0x11
	negs r0, r0
	ldrb r1, [r2, #0]
	ands r0, r1
	strb r0, [r2, #0]
	b _08043028
	.2byte 0x0000
_08043020: .4byte gUnk_03005CF4
_08043024:
	bl sub_080003F0
_08043028:
	bl sub_0805F184
	cmp r0, #0
	bne _08043024
	b _08043036
_08043032:
	bl sub_080003F0
_08043036:
	bl sub_0805EF90
	cmp r0, #0
	bne _08043032
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08043058
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08043060
	.2byte 0x0000
_08043058: .4byte 0x00140206
_0804305C:
	bl sub_080003F0
_08043060:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804305C
	movs r0, #0x1e
	bl sub_0801AA8C
	b _08043076
_08043072:
	bl sub_080003F0
_08043076:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08043072
	movs r4, #0x1e
	b _0804308C
_08043082:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08043098
_0804308C:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08043082
_08043098:
	ldr r0, _08043318
	movs r1, #0xa0
	movs r2, #0x7c
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0804331C
	ldr r0, [r0, #0]
	ldr r2, _08043320
	adds r1, r0, r2
	movs r2, #0
_080430AE:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _08042FD8
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080430AE
	bl sub_080003F0
	movs r2, #0
_080430C2:
	cmp r2, #0
	beq _080430D6
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_080430D6:
	ldr r5, _08043324
	ldr r0, _0804331C
	ldr r0, [r0, #0]
	ldr r3, _08043320
	adds r1, r0, r3
	movs r2, #0
_080430E2:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _080430EA
	b _08042FDC
_080430EA:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080430E2
	bl sub_080003F0
	movs r0, #0
_080430F8:
	cmp r0, #0
	beq _080430FE
	str r5, [r0, #0x44]
_080430FE:
	movs r0, #0xd
	movs r1, #0xb0
	movs r2, #0x7c
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0804331C
	ldr r0, [r0, #0]
	ldr r2, _08043320
	adds r1, r0, r2
	movs r2, #0
_08043114:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0804311C
	b _08042FE0
_0804311C:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08043114
	bl sub_080003F0
	movs r2, #0
_0804312A:
	cmp r2, #0
	beq _0804313E
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0804313E:
	ldr r5, _08043328
	ldr r0, _0804331C
	ldr r0, [r0, #0]
	ldr r3, _08043320
	adds r1, r0, r3
	movs r2, #0
_0804314A:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _08043152
	b _08042FE4
_08043152:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804314A
	bl sub_080003F0
	movs r0, #0
_08043160:
	cmp r0, #0
	beq _08043166
	str r5, [r0, #0x44]
_08043166:
	movs r0, #0x36
	movs r1, #0x54
	movs r2, #0x78
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0804331C
	ldr r0, [r0, #0]
	ldr r2, _08043320
	adds r1, r0, r2
	movs r2, #0
_0804317C:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _08043184
	b _08042FE8
_08043184:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804317C
	bl sub_080003F0
	movs r2, #0
_08043192:
	cmp r2, #0
	beq _080431A6
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_080431A6:
	ldr r5, _0804332C
	ldr r0, _0804331C
	ldr r0, [r0, #0]
	ldr r3, _08043320
	adds r1, r0, r3
	movs r2, #0
_080431B2:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _080431BA
	b _08042FEC
_080431BA:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080431B2
	bl sub_080003F0
	movs r0, #0
_080431C8:
	cmp r0, #0
	beq _080431CE
	str r5, [r0, #0x44]
_080431CE:
	ldr r0, _08043330
	movs r1, #0x38
	movs r2, #0x80
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0804331C
	ldr r0, [r0, #0]
	ldr r2, _08043320
	adds r1, r0, r2
	movs r2, #0
_080431E4:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _080431EC
	b _08042FF0
_080431EC:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080431E4
	bl sub_080003F0
	movs r2, #0
_080431FA:
	cmp r2, #0
	beq _0804320E
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0804320E:
	ldr r5, _08043334
	ldr r0, _0804331C
	ldr r0, [r0, #0]
	ldr r3, _08043320
	adds r1, r0, r3
	movs r2, #0
_0804321A:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _08043222
	b _08042FF4
_08043222:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804321A
	bl sub_080003F0
	movs r0, #0
_08043230:
	cmp r0, #0
	beq _08043236
	str r5, [r0, #0x44]
_08043236:
	ldr r0, _08043338
	movs r1, #0x48
	movs r2, #0x80
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0804331C
	ldr r0, [r0, #0]
	ldr r2, _08043320
	adds r1, r0, r2
	movs r2, #0
_0804324C:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _08043254
	b _08042FF8
_08043254:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804324C
	bl sub_080003F0
	movs r2, #0
_08043262:
	cmp r2, #0
	beq _08043276
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_08043276:
	ldr r5, _0804333C
	ldr r0, _0804331C
	ldr r0, [r0, #0]
	ldr r3, _08043320
	adds r1, r0, r3
	movs r2, #0
_08043282:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0804328A
	b _08042FFC
_0804328A:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08043282
	bl sub_080003F0
	movs r0, #0
_08043298:
	cmp r0, #0
	beq _0804329E
	str r5, [r0, #0x44]
_0804329E:
	ldr r0, _08043340
	movs r1, #0x40
	movs r2, #0x74
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0804331C
	ldr r0, [r0, #0]
	ldr r2, _08043320
	adds r1, r0, r2
	movs r2, #0
_080432B4:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _080432BC
	b _08043000
_080432BC:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080432B4
	bl sub_080003F0
	movs r2, #0
_080432CA:
	cmp r2, #0
	beq _080432DE
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_080432DE:
	ldr r5, _08043344
	ldr r0, _0804331C
	ldr r0, [r0, #0]
	ldr r3, _08043320
	adds r1, r0, r3
	movs r2, #0
_080432EA:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _080432F2
	b _08043004
_080432F2:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080432EA
	bl sub_080003F0
	movs r0, #0
_08043300:
	cmp r0, #0
	beq _08043306
	str r5, [r0, #0x44]
_08043306:
	bl sub_0800CE30
	cmp r0, #0
	beq _0804334C
	ldr r0, _0804331C
	ldr r0, [r0, #0]
	ldr r1, _08043348
	adds r0, r0, r1
	b _08043354
_08043318: .4byte 0x0009000C
_0804331C: .4byte gUnk_03005CF4
_08043320: .4byte 0x000007A4
_08043324: .4byte sub_08043D9C
_08043328: .4byte sub_08043E70
_0804332C: .4byte sub_08044318
_08043330: .4byte 0x00040007
_08043334: .4byte sub_08044018
_08043338: .4byte 0x00050008
_0804333C: .4byte sub_080440EC
_08043340: .4byte 0x00030006
_08043344: .4byte sub_08043F44
_08043348: .4byte 0x000001C5
_0804334C:
	ldr r0, _08043364
	ldr r0, [r0, #0]
	ldr r2, _08043368
	adds r0, r0, r2
_08043354:
	ldrb r0, [r0, #0]
	asrs r1, r0, #2
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08043380
	ldr r0, _0804336C
	b _08043382
_08043364: .4byte gUnk_03005CF4
_08043368: .4byte 0x000001B9
_0804336C: .4byte 0x0014000F
_08043370:
	adds r2, r1, #0
	b _080433AA
_08043374:
	adds r0, r1, #0
	b _080433DE
_08043378:
	adds r2, r1, #0
	b _0804340E
_0804337C:
	adds r0, r1, #0
	b _08043442
_08043380:
	movs r0, #0xf
_08043382:
	movs r1, #0x94
	movs r2, #0x76
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _08043464
	ldr r0, [r0, #0]
	ldr r3, _08043468
	adds r1, r0, r3
	movs r2, #0
_08043396:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _08043370
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08043396
	bl sub_080003F0
	movs r2, #0
_080433AA:
	cmp r2, #0
	beq _080433BE
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_080433BE:
	ldr r5, _0804346C
	ldr r0, _08043464
	ldr r0, [r0, #0]
	ldr r2, _08043468
	adds r1, r0, r2
	movs r2, #0
_080433CA:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _08043374
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080433CA
	bl sub_080003F0
	movs r0, #0
_080433DE:
	cmp r0, #0
	beq _080433E4
	str r5, [r0, #0x44]
_080433E4:
	movs r0, #0x41
	movs r1, #0x78
	movs r2, #0xc8
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _08043464
	ldr r0, [r0, #0]
	ldr r3, _08043468
	adds r1, r0, r3
	movs r2, #0
_080433FA:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _08043378
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080433FA
	bl sub_080003F0
	movs r2, #0
_0804340E:
	cmp r2, #0
	beq _08043422
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_08043422:
	ldr r5, _08043470
	ldr r0, _08043464
	ldr r0, [r0, #0]
	ldr r2, _08043468
	adds r1, r0, r2
	movs r2, #0
_0804342E:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0804337C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804342E
	bl sub_080003F0
	movs r0, #0
_08043442:
	cmp r0, #0
	beq _08043448
	str r5, [r0, #0x44]
_08043448:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0802939C
	movs r0, #0x41
	movs r1, #0x78
	movs r2, #0xc4
	bl sub_080289C0
	movs r0, #0x1e
	bl sub_0801AA34
	b _08043478
	.2byte 0x0000
_08043464: .4byte gUnk_03005CF4
_08043468: .4byte 0x000007A4
_0804346C: .4byte sub_080441C0
_08043470: .4byte sub_08043664
_08043474:
	bl sub_080003F0
_08043478:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08043474
	movs r3, #0x22
	mov r9, r3
	ldr r0, _080434E0
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r4, #0
	mov r8, r4
	movs r7, #0
_0804349A:
	ldr r0, [sp, #0x18]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x1c]
	adds r1, r5, #0
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	add r4, r9
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _0804349A
	ldr r6, _080434E4
	ldr r0, _080434E8
	ldr r0, [r0, #0]
	ldr r1, _080434EC
	adds r4, r0, r1
	movs r5, #0
	b _080434F4
_080434E0: .4byte gUnk_03003170
_080434E4: .4byte sub_080435C4
_080434E8: .4byte gUnk_03005CF4
_080434EC: .4byte 0x00000E34
_080434F0:
	adds r5, #1
	adds r4, #0x28
_080434F4:
	cmp r5, #0x1d
	bhi _08043532
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080434F0
	b _08043508
_08043504:
	bl sub_080003F0
_08043508:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08043504
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
_08043532:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08043558
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	ldr r6, _0804355C
	movs r5, #1
_08043554:
	movs r4, #1
	b _0804356A
_08043558: .4byte gUnk_03003CE0
_0804355C: .4byte gUnk_03005CF4
_08043560:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08043576
_0804356A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08043560
_08043576:
	bl sub_0800CE30
	cmp r0, #0
	beq _08043588
	ldr r0, [r6, #0]
	movs r3, #0xe3
	lsls r3, r3, #1
	adds r0, r0, r3
	b _08043590
_08043588:
	ldr r0, [r6, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
	adds r0, r0, r1
_08043590:
	ldrb r0, [r0, #0]
	asrs r1, r0, #4
	ands r1, r5
	cmp r1, #0
	beq _08043554
	bl sub_080020F4
	adds r1, r0, #0
	cmp r1, #0
	beq _080435B4
	bl sub_0805EFBC
_080435A8:
	bl sub_080003F0
	bl sub_0805F184
	cmp r0, #0
	bne _080435A8
_080435B4:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08042BB0
