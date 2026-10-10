	thumb_func_start sub_08031D88
sub_08031D88: @ 0x08031D88
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08031DB8
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE40
	movs r0, #6
	bl sub_0801ABE8
	b _08031DC0
	.2byte 0x0000
_08031DB8: .4byte gUnk_03003CE0
_08031DBC:
	bl sub_080003F0
_08031DC0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08031DBC
	bl sub_0800BB54
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_0800CCA8
	ldr r4, _08031E14
	adds r5, r4, #0
	adds r5, #0x7c
	movs r1, #0
	ldrsh r0, [r5, r1]
	mov r8, r0
	adds r4, #0x7e
	movs r0, #0
	ldrsh r6, [r4, r0]
	movs r0, #8
	bl sub_08084F9C
	ldr r0, _08031E18
	bl sub_080003F4
	mov r1, r8
	strh r1, [r5, #0]
	strh r6, [r4, #0]
	bl sub_0800CCB8
	ldr r0, _08031E1C
	bl sub_08000420
	bl sub_0800CE54
	b _08031E24
_08031E14: .4byte gUnk_03003170
_08031E18: .4byte 0x11201100
_08031E1C: .4byte 0x000514C8
_08031E20:
	bl sub_080003F0
_08031E24:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08031E20
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08031E54
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
_08031E54: .4byte gUnk_03003CE0
	thumb_func_end sub_08031D88
