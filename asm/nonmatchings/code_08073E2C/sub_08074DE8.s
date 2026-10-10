	thumb_func_start sub_08074DE8
sub_08074DE8: @ 0x08074DE8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	cmp r7, #3
	bls _08074DF4
	b _08074F08
_08074DF4:
	movs r5, #0
	ldr r0, _08074E38
	lsls r2, r7, #2
	adds r3, r2, r0
	movs r1, #1
	ldr r0, [r3, #0]
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08074E20
	adds r2, r3, #0
	movs r3, #1
_08074E0C:
	adds r5, #1
	cmp r5, #0xf
	bls _08074E14
	b _08075072
_08074E14:
	adds r1, r3, #0
	lsls r1, r5
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne _08074E0C
_08074E20:
	cmp r5, #0xf
	bls _08074E26
	b _08075072
_08074E26:
	subs r0, r4, #6
	cmp r0, #0xe
	bls _08074E2E
	b _08075072
_08074E2E:
	lsls r0, r0, #2
	ldr r1, _08074E3C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08074E38: .4byte gUnk_030063E0
_08074E3C: .4byte _08074E40
_08074E40:
	.4byte _08074EEC
_08074E44: .4byte _08075072
_08074E48: .4byte _08074E7C
_08074E4C: .4byte _08074EB4
_08074E50: .4byte _08074E98
_08074E54: .4byte _08074ED0
_08074E58: .4byte _08075072
_08074E5C: .4byte _08075072
_08074E60: .4byte _08075072
_08074E64: .4byte _08075072
_08074E68: .4byte _08075072
_08074E6C: .4byte _08075072
_08074E70: .4byte _08075072
_08074E74: .4byte _08075072
_08074E78: .4byte _0807501C
_08074E7C:
	ldr r0, _08074E90
	adds r0, r6, r0
	ldr r1, [r0, #0]
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08074E94
	b _0807502C
	.2byte 0x0000
_08074E90: .4byte gUnk_030063B0
_08074E94: .4byte sub_08074530
_08074E98:
	ldr r0, _08074EAC
	adds r0, r6, r0
	ldr r1, [r0, #0]
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08074EB0
	b _0807502C
	.2byte 0x0000
_08074EAC: .4byte gUnk_030063B0
_08074EB0: .4byte sub_080746A4
_08074EB4:
	ldr r0, _08074EC8
	adds r0, r6, r0
	ldr r1, [r0, #0]
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08074ECC
	b _0807502C
	.2byte 0x0000
_08074EC8: .4byte gUnk_030063B0
_08074ECC: .4byte sub_08074818
_08074ED0:
	ldr r0, _08074EE4
	adds r0, r6, r0
	ldr r1, [r0, #0]
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08074EE8
	b _0807502C
	.2byte 0x0000
_08074EE4: .4byte gUnk_030063B0
_08074EE8: .4byte sub_0807498C
_08074EEC:
	ldr r0, _08074F00
	adds r0, r6, r0
	ldr r1, [r0, #0]
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08074F04
	b _0807502C
	.2byte 0x0000
_08074F00: .4byte gUnk_030063B0
_08074F04: .4byte sub_08074B00
_08074F08:
	movs r5, #0
	ldr r0, _08074F4C
	lsls r2, r7, #2
	adds r3, r2, r0
	movs r1, #1
	ldr r0, [r3, #0]
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08074F34
	adds r2, r3, #0
	movs r3, #1
_08074F20:
	adds r5, #1
	cmp r5, #0xf
	bls _08074F28
	b _08075072
_08074F28:
	adds r1, r3, #0
	lsls r1, r5
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne _08074F20
_08074F34:
	cmp r5, #0xf
	bls _08074F3A
	b _08075072
_08074F3A:
	subs r0, r4, #6
	cmp r0, #0xe
	bls _08074F42
	b _08075072
_08074F42:
	lsls r0, r0, #2
	ldr r1, _08074F50
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08074F4C: .4byte gUnk_030063E0
_08074F50: .4byte _08074F54
_08074F54:
	.4byte _08075000
_08074F58: .4byte _08075072
_08074F5C: .4byte _08074F90
_08074F60: .4byte _08074FC8
_08074F64: .4byte _08074FAC
_08074F68: .4byte _08074FE4
_08074F6C: .4byte _08075072
_08074F70: .4byte _08075072
_08074F74: .4byte _08075072
_08074F78: .4byte _08075072
_08074F7C: .4byte _08075072
_08074F80: .4byte _08075072
_08074F84: .4byte _08075072
_08074F88: .4byte _08075072
_08074F8C: .4byte _0807501C
_08074F90:
	ldr r0, _08074FA4
	adds r0, r6, r0
	ldr r1, [r0, #0]
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08074FA8
	b _0807502C
	.2byte 0x0000
_08074FA4: .4byte gUnk_030063B0
_08074FA8: .4byte sub_08074530
_08074FAC:
	ldr r0, _08074FC0
	adds r0, r6, r0
	ldr r1, [r0, #0]
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08074FC4
	b _0807502C
	.2byte 0x0000
_08074FC0: .4byte gUnk_030063B0
_08074FC4: .4byte sub_080746A4
_08074FC8:
	ldr r0, _08074FDC
	adds r0, r6, r0
	ldr r1, [r0, #0]
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08074FE0
	b _0807502C
	.2byte 0x0000
_08074FDC: .4byte gUnk_030063B0
_08074FE0: .4byte sub_08074818
_08074FE4:
	ldr r0, _08074FF8
	adds r0, r6, r0
	ldr r1, [r0, #0]
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08074FFC
	b _0807502C
	.2byte 0x0000
_08074FF8: .4byte gUnk_030063B0
_08074FFC: .4byte sub_0807498C
_08075000:
	ldr r0, _08075014
	adds r0, r6, r0
	ldr r1, [r0, #0]
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08075018
	b _0807502C
	.2byte 0x0000
_08075014: .4byte gUnk_030063B0
_08075018: .4byte sub_08074B00
_0807501C:
	ldr r0, _08075078
	adds r0, r6, r0
	ldr r1, [r0, #0]
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _0807507C
_0807502C:
	str r1, [r0, #0xc]
	adds r4, r2, #0
	movs r0, #0xd0
	lsls r0, r0, #3
	bl sub_08001494
	adds r3, r0, #0
	ldr r0, _08075078
	adds r0, r6, r0
	ldr r1, [r0, #0]
	adds r0, r4, r5
	lsls r0, r0, #3
	adds r2, r0, r1
	str r3, [r2, #0x20]
	cmp r3, #0
	beq _08075072
	movs r0, #0x34
	str r0, [r2, #8]
	ldr r1, _08075080
	adds r0, r3, r1
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r2, #0x24]
	adds r0, r2, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_08000274
	ldr r2, _08075084
	adds r2, r6, r2
	movs r1, #1
	lsls r1, r5
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
_08075072:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08075078: .4byte gUnk_030063B0
_0807507C: .4byte sub_08074C74
_08075080: .4byte 0x0000067C
_08075084: .4byte gUnk_030063E0
	thumb_func_end sub_08074DE8
