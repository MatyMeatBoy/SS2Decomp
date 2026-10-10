	thumb_func_start sub_080509A8
sub_080509A8: @ 0x080509A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	movs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _080509D0
	ldr r0, _080509C8
	ldr r0, [r0, #0]
	ldr r1, _080509CC
	adds r0, r0, r1
	b _080509D8
_080509C8: .4byte gUnk_03005CF4
_080509CC: .4byte 0x000001C5
_080509D0:
	ldr r0, _080509FC
	ldr r0, [r0, #0]
	ldr r2, _08050A00
	adds r0, r0, r2
_080509D8:
	ldrb r0, [r0, #0]
	asrs r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080509E4
	b _08050DAC
_080509E4:
	bl sub_080020F4
	cmp r0, #0
	bne _08050A4E
	ldr r6, _08050A04
	ldr r0, _080509FC
	ldr r0, [r0, #0]
	ldr r3, _08050A08
	adds r4, r0, r3
	movs r5, #0
	b _08050A10
	.2byte 0x0000
_080509FC: .4byte gUnk_03005CF4
_08050A00: .4byte 0x000001B9
_08050A04: .4byte sub_08051A78
_08050A08: .4byte 0x00000E34
_08050A0C:
	adds r5, #1
	adds r4, #0x28
_08050A10:
	cmp r5, #0x1d
	bhi _08050A4E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08050A0C
	b _08050A24
_08050A20:
	bl sub_080003F0
_08050A24:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08050A20
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
_08050A4E:
	ldr r0, _08050AF8
	ldr r0, [r0, #0]
	movs r4, #1
	ldr r0, [r0, #0x38]
	ands r0, r4
	cmp r0, #0
	beq _08050A5E
	movs r0, #1
_08050A5E:
	mov r9, r0
	cmp r0, #0
	beq _08050A66
	b _08050D2E
_08050A66:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08050AFC
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	ldr r0, _08050B00
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	ldrsh r7, [r1, r3]
	adds r0, #0x82
	movs r1, #0
	ldrsh r6, [r0, r1]
	movs r4, #0
	add r5, sp, #4
	mov r2, sp
	adds r2, #8
	str r2, [sp, #0x10]
	mov r3, sp
	adds r3, #0xc
	str r3, [sp, #0x14]
	mov sl, r4
	ldr r0, _08050B04
	mov r8, r0
_08050AA4:
	mov r0, sp
	adds r1, r7, #0
	mov r3, sl
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r5, #0
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r4, r0
	cmp r4, r0
	ble _08050AA4
	bl sub_0800CC98
	cmp r0, #0
	bne _08050B30
	bl sub_0801AB24
	cmp r0, #1
	beq _08050B14
	cmp r0, #1
	bgt _08050B08
	cmp r0, #0
	beq _08050B0E
	b _08050B28
_08050AF8: .4byte gUnk_03005CF4
_08050AFC: .4byte gUnk_03003CE0
_08050B00: .4byte gUnk_03003170
_08050B04: .4byte 0xFF8C0000
_08050B08:
	cmp r0, #2
	beq _08050B1C
	b _08050B28
_08050B0E:
	bl sub_080576A8
	b _08050B28
_08050B14:
	movs r0, #6
	bl sub_0801AB50
	b _08050B28
_08050B1C:
	movs r0, #6
	bl sub_0801AB90
	b _08050B28
_08050B24:
	bl sub_080003F0
_08050B28:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08050B24
_08050B30:
	ldr r4, _08050B60
	ldr r2, [r4, #0]
	movs r1, #1
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	movs r1, #0xc4
	ldr r0, _08050B64
	str r1, [r0, #0]
	ldr r0, _08050B68
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08050B54
	movs r0, #0xc4
	bl sub_08006CB4
_08050B54:
	ldr r6, _08050B6C
	ldr r0, [r4, #0]
	ldr r1, _08050B70
	adds r4, r0, r1
	movs r5, #0
	b _08050B78
_08050B60: .4byte gUnk_03005CF4
_08050B64: .4byte gUnk_03005CF8
_08050B68: .4byte gUnk_030027D0
_08050B6C: .4byte sub_08050E48
_08050B70: .4byte 0x00000E34
_08050B74:
	adds r5, #1
	adds r4, #0x28
_08050B78:
	cmp r5, #0x1d
	bhi _08050BB8
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08050B74
	b _08050B8C
_08050B88:
	bl sub_080003F0
_08050B8C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08050B88
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
	mov r9, r4
_08050BB8:
	movs r4, #0xc8
	lsls r4, r4, #2
	b _08050BC8
_08050BBE:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08050BD4
_08050BC8:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08050BBE
_08050BD4:
	movs r3, #0x22
	mov sl, r3
	ldr r0, _08050C98
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r4, #0
	mov r8, r4
	ldr r7, _08050C9C
_08050BEE:
	ldr r0, [sp, #0x10]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x14]
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
	add r4, sl
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _08050BEE
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _08050CA0
	adds r2, r2, r4
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0x80
	movs r1, #0x80
	movs r3, #0x64
	bl sub_0802A080
	ldr r0, _08050CA4
	ldr r0, [r0, #0]
	movs r1, #2
	ldr r0, [r0, #0x38]
	ands r0, r1
	cmp r0, #0
	beq _08050C62
	movs r0, #1
_08050C62:
	cmp r0, #0
	beq _08050C68
	b _08050E30
_08050C68:
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r4
	ldr r0, [r1, #0x30]
	movs r2, #1
	orrs r0, r2
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	mov r0, r9
	cmp r0, #0
	beq _08050C92
	bl sub_08000470
	cmp r0, #0
	beq _08050C92
	mov r0, r9
	bl sub_080003A8
_08050C92:
	movs r4, #1
	b _08050CB2
	.2byte 0x0000
_08050C98: .4byte gUnk_03003170
_08050C9C: .4byte 0xFFE20000
_08050CA0: .4byte gUnk_03003CE0
_08050CA4: .4byte gUnk_03005CF4
_08050CA8:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08050CBE
_08050CB2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08050CA8
_08050CBE:
	bl sub_0805EFBC
_08050CC2:
	bl sub_080003F0
	bl sub_0805F184
	cmp r0, #0
	bne _08050CC2
	ldr r6, _08050CDC
	ldr r0, _08050CE0
	ldr r0, [r0, #0]
	ldr r1, _08050CE4
	adds r4, r0, r1
	movs r5, #0
	b _08050CEC
_08050CDC: .4byte sub_08050E48
_08050CE0: .4byte gUnk_03005CF4
_08050CE4: .4byte 0x00000E34
_08050CE8:
	adds r5, #1
	adds r4, #0x28
_08050CEC:
	cmp r5, #0x1d
	bls _08050CF2
	b _08050E30
_08050CF2:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08050CE8
	b _08050D02
_08050CFE:
	bl sub_080003F0
_08050D02:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08050CFE
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
	movs r1, #1
	bl sub_08000274
	b _08050E30
_08050D2E:
	bl sub_0800CC98
	cmp r0, #0
	bne _08050D70
	bl sub_0801AB24
	cmp r0, #1
	beq _08050D54
	cmp r0, #1
	bgt _08050D48
	cmp r0, #0
	beq _08050D4E
	b _08050D68
_08050D48:
	cmp r0, #2
	beq _08050D5C
	b _08050D68
_08050D4E:
	bl sub_080576A8
	b _08050D68
_08050D54:
	movs r0, #6
	bl sub_0801AB50
	b _08050D68
_08050D5C:
	movs r0, #6
	bl sub_0801AB90
	b _08050D68
_08050D64:
	bl sub_080003F0
_08050D68:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08050D64
_08050D70:
	ldr r0, _08050DA4
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _08050DA8
	movs r6, #1
	movs r4, #0
_08050D7C:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _08050D90
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _08050D90
	strh r4, [r2, #0xc]
_08050D90:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _08050D7C
	bl sub_08019F04
	b _08050E30
	.2byte 0x0000
_08050DA4: .4byte gUnk_030056F4
_08050DA8: .4byte gUnk_030056FC
_08050DAC:
	ldr r2, _08050DD4
	movs r0, #6
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	bl sub_0800CC98
	cmp r0, #0
	bne _08050E00
	bl sub_0801AB24
	cmp r0, #1
	beq _08050DE4
	cmp r0, #1
	bgt _08050DD8
	cmp r0, #0
	beq _08050DDE
	b _08050DF8
	.2byte 0x0000
_08050DD4: .4byte 0x0000270F
_08050DD8:
	cmp r0, #2
	beq _08050DEC
	b _08050DF8
_08050DDE:
	bl sub_080576A8
	b _08050DF8
_08050DE4:
	movs r0, #6
	bl sub_0801AB50
	b _08050DF8
_08050DEC:
	movs r0, #6
	bl sub_0801AB90
	b _08050DF8
_08050DF4:
	bl sub_080003F0
_08050DF8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08050DF4
_08050E00:
	ldr r0, _08050E40
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _08050E44
	movs r6, #1
	movs r4, #0
_08050E0C:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _08050E20
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _08050E20
	strh r4, [r2, #0xc]
_08050E20:
	adds r3, #1
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r2, r2, r1
	cmp r3, #4
	bls _08050E0C
	bl sub_08019F04
_08050E30:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08050E40: .4byte gUnk_030056F4
_08050E44: .4byte gUnk_030056FC
	thumb_func_end sub_080509A8
