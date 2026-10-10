	thumb_func_start sub_08045E38
sub_08045E38: @ 0x08045E38
	push {r4, r5, r6, r7, lr}
	ldr r7, _08045E50
	movs r6, #1
_08045E3E:
	bl sub_0800CE30
	cmp r0, #0
	beq _08045E58
	ldr r0, [r7, #0]
	ldr r1, _08045E54
	adds r0, r0, r1
	b _08045E5E
	.2byte 0x0000
_08045E50: .4byte gUnk_03005CF4
_08045E54: .4byte 0x000001C3
_08045E58:
	ldr r0, [r7, #0]
	ldr r2, _08045E68
	adds r0, r0, r2
_08045E5E:
	ldrb r0, [r0, #0]
	asrs r5, r0, #5
	ands r5, r6
	movs r4, #1
	b _08045E76
_08045E68: .4byte 0x000001B7
_08045E6C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08045E82
_08045E76:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08045E6C
_08045E82:
	bl sub_0800CE30
	cmp r0, #0
	beq _08045EA0
	ldr r0, [r7, #0]
	ldr r1, _08045E94
	adds r0, r0, r1
	b _08045EA6
	.2byte 0x0000
_08045E94: .4byte 0x000001C3
_08045E98:
	adds r2, r1, #0
	b _08045EFC
_08045E9C:
	adds r0, r1, #0
	b _08045F2A
_08045EA0:
	ldr r0, [r7, #0]
	ldr r2, _08045EB4
	adds r0, r0, r2
_08045EA6:
	ldrb r0, [r0, #0]
	asrs r0, r0, #5
	ands r0, r6
	cmp r5, r0
	beq _08045E3E
	movs r4, #0xf0
	b _08045EC2
_08045EB4: .4byte 0x000001B7
_08045EB8:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08045ECE
_08045EC2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08045EB8
_08045ECE:
	ldr r0, _08045F38
	movs r1, #0xdd
	movs r2, #0x8f
	lsls r2, r2, #1
	bl sub_080289C0
	adds r4, r0, #0
	movs r5, #8
	movs r6, #4
	ldr r0, [r7, #0]
	ldr r2, _08045F3C
	adds r1, r0, r2
	movs r2, #0
_08045EE8:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _08045E98
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08045EE8
	bl sub_080003F0
	movs r2, #0
_08045EFC:
	cmp r2, #0
	beq _08045F0C
	strh r5, [r2, #0x18]
	strh r6, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_08045F0C:
	ldr r5, _08045F40
	ldr r0, [r7, #0]
	ldr r2, _08045F3C
	adds r1, r0, r2
	movs r2, #0
_08045F16:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _08045E9C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08045F16
	bl sub_080003F0
	movs r0, #0
_08045F2A:
	cmp r0, #0
	beq _08045F30
	str r5, [r0, #0x44]
_08045F30:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08045F38: .4byte 0x00040026
_08045F3C: .4byte 0x000007A4
_08045F40: .4byte sub_0803898C
	thumb_func_end sub_08045E38
