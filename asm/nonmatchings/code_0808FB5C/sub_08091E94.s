	thumb_func_start sub_08091E94
sub_08091E94: @ 0x08091E94
	push {r4, r5, lr}
	sub sp, #0x10
	ldr r4, _08091ECC
	movs r0, #0x88
	lsls r0, r0, #1
	bl sub_08001494
	str r0, [r4, #0]
	str r0, [sp, #0]
	adds r1, r0, #0
	adds r1, #0x44
	str r1, [sp, #4]
	adds r1, #0x44
	str r1, [sp, #8]
	adds r1, #0x44
	str r1, [sp, #0xc]
	movs r5, #0
	movs r4, #0
	cmp r0, #0
	beq _08091F12
_08091EBC:
	cmp r4, #1
	beq _08091EDE
	cmp r4, #1
	bgt _08091ED0
	cmp r4, #0
	beq _08091EDA
	b _08091EF2
	.2byte 0x0000
_08091ECC: .4byte gUnk_0300016C
_08091ED0:
	cmp r4, #2
	beq _08091EE2
	cmp r4, #6
	beq _08091EE6
	b _08091EF2
_08091EDA:
	movs r4, #1
	b _08091EF2
_08091EDE:
	movs r4, #2
	b _08091EF2
_08091EE2:
	movs r4, #6
	b _08091EF2
_08091EE6:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x3d
	bne _08091EF2
	movs r4, #0xff
_08091EF2:
	bl sub_080003F0
	cmp r4, #0xff
	beq _08091F02
	ldr r0, _08091F1C
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _08091EBC
_08091F02:
	ldr r4, _08091F1C
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _08091F12
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
_08091F12:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08091F1C: .4byte gUnk_0300016C
	thumb_func_end sub_08091E94
