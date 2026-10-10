	thumb_func_start sub_080319F0
sub_080319F0: @ 0x080319F0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08031A20
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _08031A2C
	ldr r0, _08031A24
	ldr r0, [r0, #0]
	ldr r1, _08031A28
	b _08031A32
_08031A20: .4byte gUnk_03003CE0
_08031A24: .4byte gUnk_03005CF4
_08031A28: .4byte 0x000001C5
_08031A2C:
	ldr r0, _08031A50
	ldr r0, [r0, #0]
	ldr r1, _08031A54
_08031A32:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r0, r0, #6
	ands r0, r4
	cmp r0, #0
	beq _08031AA2
	bl sub_0800CE30
	cmp r0, #0
	beq _08031A5C
	ldr r0, _08031A50
	ldr r0, [r0, #0]
	ldr r1, _08031A58
	b _08031A62
	.2byte 0x0000
_08031A50: .4byte gUnk_03005CF4
_08031A54: .4byte 0x000001B9
_08031A58: .4byte 0x000001C5
_08031A5C:
	ldr r0, _08031A80
	ldr r0, [r0, #0]
	ldr r1, _08031A84
_08031A62:
	adds r2, r0, r1
	movs r0, #0x41
	negs r0, r0
	ldrb r1, [r2, #0]
	ands r0, r1
	strb r0, [r2, #0]
	bl sub_0800CE30
	cmp r0, #0
	beq _08031A8C
	ldr r0, _08031A80
	ldr r0, [r0, #0]
	ldr r1, _08031A88
	b _08031A92
	.2byte 0x0000
_08031A80: .4byte gUnk_03005CF4
_08031A84: .4byte 0x000001B9
_08031A88: .4byte 0x000001C5
_08031A8C:
	ldr r0, _08031AB0
	ldr r0, [r0, #0]
	ldr r1, _08031AB4
_08031A92:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r1, r0, #5
	movs r0, #1
	ands r1, r0
	adds r0, r1, #0
	bl sub_0805C7B8
_08031AA2:
	bl sub_0800CE40
	movs r0, #6
	bl sub_0801ABE8
	b _08031ABC
	.2byte 0x0000
_08031AB0: .4byte gUnk_03005CF4
_08031AB4: .4byte 0x000001B9
_08031AB8:
	bl sub_080003F0
_08031ABC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08031AB8
	bl sub_0800BB54
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_0800CCA8
	ldr r4, _08031B10
	adds r5, r4, #0
	adds r5, #0x7c
	movs r1, #0
	ldrsh r0, [r5, r1]
	mov r8, r0
	adds r4, #0x7e
	movs r0, #0
	ldrsh r6, [r4, r0]
	movs r0, #6
	bl sub_08084F9C
	ldr r0, _08031B14
	bl sub_080003F4
	mov r1, r8
	strh r1, [r5, #0]
	strh r6, [r4, #0]
	bl sub_0800CCB8
	ldr r0, _08031B18
	bl sub_08000420
	bl sub_0800CE54
	b _08031B20
_08031B10: .4byte gUnk_03003170
_08031B14: .4byte 0x11201100
_08031B18: .4byte 0x000514C8
_08031B1C:
	bl sub_080003F0
_08031B20:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08031B1C
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08031B50
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08031B50: .4byte gUnk_03003CE0
	thumb_func_end sub_080319F0
