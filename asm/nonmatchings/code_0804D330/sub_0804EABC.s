	thumb_func_start sub_0804EABC
sub_0804EABC: @ 0x0804EABC
	push {r4, r5, r6, r7, lr}
	ldr r4, _0804EAE0
	ldr r0, [r4, #0]
	movs r1, #4
	ldr r0, [r0, #0x38]
	ands r0, r1
	cmp r0, #0
	beq _0804EACE
	b _0804ECD0
_0804EACE:
	movs r5, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _0804EAE8
	ldr r0, [r4, #0]
	ldr r1, _0804EAE4
	adds r0, r0, r1
	b _0804EAEE
_0804EAE0: .4byte gUnk_03005CF4
_0804EAE4: .4byte 0x000001C3
_0804EAE8:
	ldr r0, [r4, #0]
	ldr r2, _0804EB08
	adds r0, r0, r2
_0804EAEE:
	ldrb r0, [r0, #0]
	asrs r4, r0, #1
	ands r4, r5
	bl sub_0800CE30
	cmp r0, #0
	beq _0804EB1C
	ldr r0, _0804EB0C
	ldr r0, [r0, #0]
	ldr r1, _0804EB10
	adds r0, r0, r1
	b _0804EB24
	.2byte 0x0000
_0804EB08: .4byte 0x000001B7
_0804EB0C: .4byte gUnk_03005CF4
_0804EB10: .4byte 0x000001C3
_0804EB14:
	adds r2, r1, #0
	b _0804EB96
_0804EB18:
	adds r0, r1, #0
	b _0804EBCA
_0804EB1C:
	ldr r0, _0804EBD4
	ldr r0, [r0, #0]
	ldr r2, _0804EBD8
	adds r0, r0, r2
_0804EB24:
	ldrb r0, [r0, #0]
	asrs r1, r0, #2
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _0804EBF4
	cmp r4, #0
	beq _0804EBF4
	movs r0, #1
	movs r1, #0x80
	movs r2, #0x50
	movs r3, #0
	bl sub_08028AAC
	ldr r7, _0804EBDC
	movs r6, #1
	ldr r1, _0804EBE0
	ldr r0, [r1, #0]
	ands r0, r6
	cmp r0, #0
	bne _0804EB5E
	adds r5, r1, #0
	movs r4, #1
_0804EB52:
	bl sub_080003F0
	ldr r0, [r5, #0]
	ands r0, r4
	cmp r0, #0
	beq _0804EB52
_0804EB5E:
	ldr r0, _0804EBE4
	ldr r0, [r0, #0]
	str r7, [r0, #0x38]
	str r6, [r0, #0x3c]
	movs r1, #0
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	ldr r0, _0804EBE8
	movs r1, #0x80
	movs r2, #0x50
	bl sub_080289C0
	adds r7, r0, #0
	ldr r0, _0804EBD4
	ldr r0, [r0, #0]
	ldr r2, _0804EBEC
	adds r1, r0, r2
	movs r2, #0
_0804EB82:
	ldr r0, [r1, #0]
	cmp r0, r7
	beq _0804EB14
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804EB82
	bl sub_080003F0
	movs r2, #0
_0804EB96:
	cmp r2, #0
	beq _0804EBAA
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0804EBAA:
	ldr r4, _0804EBF0
	ldr r0, _0804EBD4
	ldr r0, [r0, #0]
	ldr r2, _0804EBEC
	adds r1, r0, r2
	movs r2, #0
_0804EBB6:
	ldr r0, [r1, #0]
	cmp r0, r7
	beq _0804EB18
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804EBB6
	bl sub_080003F0
	movs r0, #0
_0804EBCA:
	cmp r0, #0
	beq _0804EC08
	str r4, [r0, #0x44]
	b _0804EC08
	.2byte 0x0000
_0804EBD4: .4byte gUnk_03005CF4
_0804EBD8: .4byte 0x000001B7
_0804EBDC: .4byte sub_0804ED18
_0804EBE0: .4byte gUnk_030056FC
_0804EBE4: .4byte gUnk_030056F4
_0804EBE8: .4byte 0x00020039
_0804EBEC: .4byte 0x000007A4
_0804EBF0: .4byte sub_0805A1B4
_0804EBF4:
	ldr r2, _0804EC24
	movs r0, #1
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	ldr r0, _0804EC28
	movs r1, #2
	bl sub_08068070
_0804EC08:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804EC54
	bl sub_0801AB24
	cmp r0, #1
	beq _0804EC38
	cmp r0, #1
	bgt _0804EC2C
	cmp r0, #0
	beq _0804EC32
	b _0804EC4C
	.2byte 0x0000
_0804EC24: .4byte 0x0000270F
_0804EC28: .4byte sub_08059954
_0804EC2C:
	cmp r0, #2
	beq _0804EC40
	b _0804EC4C
_0804EC32:
	bl sub_080576A8
	b _0804EC4C
_0804EC38:
	movs r0, #6
	bl sub_0801AB50
	b _0804EC4C
_0804EC40:
	movs r0, #6
	bl sub_0801AB90
	b _0804EC4C
_0804EC48:
	bl sub_080003F0
_0804EC4C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804EC48
_0804EC54:
	ldr r6, _0804EC5C
	movs r5, #1
_0804EC58:
	movs r4, #1
	b _0804EC6A
_0804EC5C: .4byte gUnk_03005CF4
_0804EC60:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804EC76
_0804EC6A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804EC60
_0804EC76:
	bl sub_0800CE30
	cmp r0, #0
	beq _0804EC8C
	ldr r0, [r6, #0]
	ldr r1, _0804EC88
	adds r0, r0, r1
	b _0804EC92
	.2byte 0x0000
_0804EC88: .4byte 0x000001C3
_0804EC8C:
	ldr r0, [r6, #0]
	ldr r2, _0804ECC4
	adds r0, r0, r2
_0804EC92:
	ldrb r0, [r0, #0]
	asrs r1, r0, #2
	ands r1, r5
	ldr r0, _0804ECC8
	cmp r1, #0
	beq _0804EC58
	ldr r0, [r0, #0]
	ldr r2, _0804ECCC
	adds r1, r0, r2
	movs r2, #0
_0804ECA6:
	ldr r0, [r1, #0]
	cmp r0, r7
	beq _0804ECBA
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804ECA6
	bl sub_080003F0
	movs r1, #0
_0804ECBA:
	cmp r1, #0
	beq _0804ED12
	movs r0, #4
	strh r0, [r1, #0x36]
	b _0804ED12
_0804ECC4: .4byte 0x000001B7
_0804ECC8: .4byte gUnk_03005CF4
_0804ECCC: .4byte 0x000007A4
_0804ECD0:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804ED12
	bl sub_0801AB24
	cmp r0, #1
	beq _0804ECF6
	cmp r0, #1
	bgt _0804ECEA
	cmp r0, #0
	beq _0804ECF0
	b _0804ED0A
_0804ECEA:
	cmp r0, #2
	beq _0804ECFE
	b _0804ED0A
_0804ECF0:
	bl sub_080576A8
	b _0804ED0A
_0804ECF6:
	movs r0, #6
	bl sub_0801AB50
	b _0804ED0A
_0804ECFE:
	movs r0, #6
	bl sub_0801AB90
	b _0804ED0A
_0804ED06:
	bl sub_080003F0
_0804ED0A:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804ED06
_0804ED12:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0804EABC
