	thumb_func_start sub_08049DC4
sub_08049DC4: @ 0x08049DC4
	push {r4, r5, r6, r7, lr}
	ldr r4, _08049DF0
	ldr r2, [r4, #0]
	movs r3, #0x20
	ldr r1, [r2, #0x38]
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	bne _08049E68
	orrs r1, r3
	str r1, [r2, #0x38]
	movs r5, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _08049DF4
	ldr r0, [r4, #0]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r0, r1
	b _08049DFC
	.2byte 0x0000
_08049DF0: .4byte gUnk_03005CF4
_08049DF4:
	ldr r0, [r4, #0]
	movs r4, #0xdc
	lsls r4, r4, #1
	adds r0, r0, r4
_08049DFC:
	ldrb r0, [r0, #0]
	asrs r4, r0, #5
	ands r4, r5
	bl sub_080020F4
	adds r7, r0, #0
	movs r3, #0
	movs r2, #0
	ldr r0, _08049E84
	ldr r0, [r0, #0]
	movs r5, #0xa8
	lsls r5, r5, #1
	adds r1, r0, r5
_08049E16:
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _08049E24
	ldrh r0, [r1, #2]
	cmp r0, #0x2a
	bne _08049E24
	adds r3, #1
_08049E24:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _08049E16
	adds r6, r3, #0
	movs r5, #0
	movs r3, #0
	adds r2, r4, #0
	orrs r2, r7
	ldr r0, _08049E84
	ldr r0, [r0, #0]
	movs r4, #0xb8
	lsls r4, r4, #2
	adds r1, r0, r4
_08049E40:
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _08049E4E
	ldrh r0, [r1, #2]
	cmp r0, #0x2a
	bne _08049E4E
	adds r5, #1
_08049E4E:
	adds r1, #0x10
	adds r3, #1
	cmp r3, #0x4a
	bls _08049E40
	orrs r2, r6
	orrs r2, r5
	cmp r2, #0
	bne _08049E68
	ldr r0, _08049E88
	movs r1, #0
	movs r2, #1
	bl sub_08068820
_08049E68:
	bl sub_0800CC98
	cmp r0, #0
	bne _08049EB4
	bl sub_0801AB24
	cmp r0, #1
	beq _08049E98
	cmp r0, #1
	bgt _08049E8C
	cmp r0, #0
	beq _08049E92
	b _08049EAC
	.2byte 0x0000
_08049E84: .4byte gUnk_030034E0
_08049E88: .4byte sub_0805A040
_08049E8C:
	cmp r0, #2
	beq _08049EA0
	b _08049EAC
_08049E92:
	bl sub_080576A8
	b _08049EAC
_08049E98:
	movs r0, #6
	bl sub_0801AB50
	b _08049EAC
_08049EA0:
	movs r0, #6
	bl sub_0801AB90
	b _08049EAC
_08049EA8:
	bl sub_080003F0
_08049EAC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08049EA8
_08049EB4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08049DC4
