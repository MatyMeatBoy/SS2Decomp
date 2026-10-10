	thumb_func_start sub_08090E38
sub_08090E38: @ 0x08090E38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r4, _08090E7C
	movs r0, #0x44
	bl sub_08001494
	str r0, [r4, #0]
	adds r5, r0, #0
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl sub_080B942C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08090E68
	negs r0, r0
_08090E68:
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	beq _08090E94
	cmp r7, #1
	bgt _08090E80
	cmp r7, #0
	beq _08090E86
	b _08090EBE
	.2byte 0x0000
_08090E7C: .4byte gUnk_0300016C
_08090E80:
	cmp r7, #2
	beq _08090EAC
	b _08090EBE
_08090E86:
	ldr r1, _08090E90
	movs r3, #1
	negs r3, r3
	str r7, [sp, #0]
	b _08090E9E
_08090E90: .4byte 0x00050012
_08090E94:
	ldr r1, _08090EA8
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
_08090E9E:
	adds r0, r5, #0
	movs r2, #0
	bl sub_08065158
	b _08090EBE
_08090EA8: .4byte 0x00050013
_08090EAC:
	ldr r1, _08090EFC
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08065158
_08090EBE:
	movs r1, #0
	strb r1, [r5, #0x1c]
	movs r0, #0xa
	strh r0, [r5, #0x3c]
	adds r2, r5, #0
	adds r2, #0x40
	strh r1, [r2, #0]
	strh r1, [r5, #0x3e]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #0x34]
	movs r0, #0xb0
	lsls r0, r0, #7
	str r0, [r5, #0x38]
	movs r0, #1
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	movs r6, #0
	ldr r0, _08090F00
	ldr r0, [r0, #0]
	mov sl, r2
	cmp r0, #0
	bne _08090EEE
	b _08091094
_08090EEE:
	cmp r6, #1
	beq _08090F94
	cmp r6, #1
	bgt _08090F04
	cmp r6, #0
	beq _08090F12
	b _08091030
_08090EFC: .4byte 0x00050014
_08090F00: .4byte gUnk_0300016C
_08090F04:
	cmp r6, #2
	bne _08090F0A
	b _08091000
_08090F0A:
	cmp r6, #6
	bne _08090F10
	b _08091020
_08090F10:
	b _08091030
_08090F12:
	ldr r1, [r5, #0x34]
	ldr r4, _08090F34
	adds r1, r1, r4
	str r1, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _08090F24
	b _08091030
_08090F24:
	cmp r7, #1
	beq _08090F4C
	cmp r7, #1
	bgt _08090F38
	cmp r7, #0
	beq _08090F3E
	b _08090F74
	.2byte 0x0000
_08090F34: .4byte 0xFFFFFF00
_08090F38:
	cmp r7, #2
	beq _08090F64
	b _08090F74
_08090F3E:
	str r6, [sp, #0]
	adds r0, r5, #0
	ldr r1, _08090F48
	b _08090F52
	.2byte 0x0000
_08090F48: .4byte 0x00050015
_08090F4C:
	str r6, [sp, #0]
	adds r0, r5, #0
	ldr r1, _08090F60
_08090F52:
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
	b _08090F74
	.2byte 0x0000
_08090F60: .4byte 0x00050016
_08090F64:
	str r6, [sp, #0]
	adds r0, r5, #0
	ldr r1, _08090F90
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
_08090F74:
	movs r0, #0
	mov r9, r0
	movs r1, #0
	str r1, [sp, #0x10]
	mov r4, r9
	strb r4, [r5, #0x1c]
	movs r0, #0xa
	strh r0, [r5, #0x3c]
	mov r1, r9
	mov r0, sl
	strh r1, [r0, #0]
	strh r1, [r5, #0x3e]
	movs r6, #1
	b _08091030
_08090F90: .4byte 0x00050017
_08090F94:
	mov r4, r9
	cmp r4, #0
	beq _08091030
	cmp r7, #1
	beq _08090FBC
	cmp r7, #1
	bgt _08090FA8
	cmp r7, #0
	beq _08090FAE
	b _08090FE6
_08090FA8:
	cmp r7, #2
	beq _08090FD4
	b _08090FE6
_08090FAE:
	str r7, [sp, #0]
	adds r0, r5, #0
	ldr r1, _08090FB8
	b _08090FC4
	.2byte 0x0000
_08090FB8: .4byte 0x00050012
_08090FBC:
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r5, #0
	ldr r1, _08090FD0
_08090FC4:
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
	b _08090FE6
_08090FD0: .4byte 0x00050013
_08090FD4:
	movs r1, #0
	str r1, [sp, #0]
	adds r0, r5, #0
	ldr r1, _08090FFC
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
_08090FE6:
	movs r4, #1
	str r4, [sp, #0x10]
	movs r0, #0xa
	strh r0, [r5, #0x3c]
	movs r1, #0
	mov r0, sl
	strh r1, [r0, #0]
	strh r1, [r5, #0x3e]
	movs r6, #2
	b _08091030
	.2byte 0x0000
_08090FFC: .4byte 0x00050014
_08091000:
	ldr r1, [r5, #0x34]
	ldr r4, _08091018
	adds r1, r1, r4
	str r1, [r5, #0x34]
	ldr r0, _0809101C
	cmp r1, r0
	bgt _08091030
	movs r0, #0
	str r0, [sp, #0x14]
	movs r6, #6
	b _08091030
	.2byte 0x0000
_08091018: .4byte 0xFFFFFF00
_0809101C: .4byte 0xFFFFF000
_08091020:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	cmp r0, #0x3d
	bne _08091030
	movs r6, #0xff
_08091030:
	ldr r1, [r5, #0xc]
	movs r0, #0x10
	movs r2, #1
	bl sub_08000AF0
	ldrh r1, [r5, #0x3c]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r2, #0x3e
	mov r3, sl
	bl sub_08065370
	mov r9, r0
	ldr r0, [r5, #0x34]
	asrs r0, r0, #8
	ldr r1, [r5, #0x38]
	asrs r1, r1, #8
	ldrh r2, [r5, #0x3c]
	ldrh r3, [r5, #0x3e]
	movs r4, #0
	mov r8, r4
	str r4, [sp, #0]
	adds r4, r5, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	bl sub_080003F0
	cmp r6, #0xff
	beq _08091084
	ldr r0, _080910A4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08091084
	b _08090EEE
_08091084:
	ldr r4, _080910A4
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _08091094
	bl sub_08001538
	mov r0, r8
	str r0, [r4, #0]
_08091094:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080910A4: .4byte gUnk_0300016C
	thumb_func_end sub_08090E38
