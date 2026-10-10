	thumb_func_start sub_0801E988
sub_0801E988: @ 0x0801E988
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	mov r8, r1
	str r2, [sp, #0]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0, #0]
	mov sl, r0
	mov r0, r8
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	str r0, [sp, #4]
	cmp r3, #0
	bne _0801E9F6
	bl sub_080008C8
	movs r1, #0x7f
	ands r1, r0
	adds r0, r7, #0
	adds r0, #0x5c
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #1
	cmp r1, r0
	bgt _0801E9EA
	movs r0, #0x27
	bl sub_0805865C
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0xc
	bl sub_0802247C
	movs r3, #0x64
	mov r9, r3
	b _0801E9FC
_0801E9EA:
	movs r0, #0x1a
	bl sub_0805865C
	movs r0, #0xc8
	mov r9, r0
	b _0801E9FC
_0801E9F6:
	movs r1, #0xfa
	lsls r1, r1, #2
	mov r9, r1
_0801E9FC:
	ldrh r0, [r7, #0x20]
	cmp r0, #5
	beq _0801EA04
	b _0801EB18
_0801EA04:
	movs r4, #0
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0801EA9E
	lsls r0, r0, #2
	ldr r1, _0801EA1C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801EA1C: .4byte _0801EA20
_0801EA20:
	.4byte _0801EA48
_0801EA24: .4byte _0801EA52
_0801EA28: .4byte _0801EA5A
_0801EA2C: .4byte _0801EA62
_0801EA30: .4byte _0801EA7A
_0801EA34: .4byte _0801EA84
_0801EA38: .4byte _0801EA9E
_0801EA3C: .4byte _0801EA90
_0801EA40: .4byte _0801EA9E
_0801EA44: .4byte _0801EA9E
_0801EA48:
	ldrh r0, [r7, #0x10]
	cmp r0, #3
	bne _0801EA9E
_0801EA4E:
	movs r4, #1
	b _0801EA9E
_0801EA52:
	ldrh r0, [r7, #0x10]
	cmp r0, #5
	bne _0801EA9E
	b _0801EA8A
_0801EA5A:
	ldrh r0, [r7, #0x10]
	cmp r0, #7
	bne _0801EA9E
	b _0801EA4E
_0801EA62:
	ldrh r0, [r7, #0x10]
	cmp r0, #2
	beq _0801EA9E
	cmp r0, #4
	bne _0801EA9E
	adds r0, r7, #0
	adds r0, #0xb2
	ldrh r0, [r0, #0]
	cmp r0, #4
	bhi _0801EA9E
	movs r4, #3
	b _0801EA9E
_0801EA7A:
	ldrh r0, [r7, #0x10]
	cmp r0, #4
	bne _0801EA84
	movs r4, #2
	movs r6, #2
_0801EA84:
	ldrh r0, [r7, #0x10]
	cmp r0, #6
	bne _0801EA9E
_0801EA8A:
	movs r4, #2
	movs r6, #3
	b _0801EA9E
_0801EA90:
	ldrh r0, [r7, #0x10]
	cmp r0, #1
	beq _0801EA4E
	cmp r0, #8
	bne _0801EA9E
	movs r4, #2
	movs r6, #5
_0801EA9E:
	cmp r4, #1
	beq _0801EAD8
	cmp r4, #1
	bgt _0801EAAC
	cmp r4, #0
	beq _0801EAB6
	b _0801EB56
_0801EAAC:
	cmp r4, #2
	beq _0801EAF2
	cmp r4, #3
	beq _0801EB0C
	b _0801EB56
_0801EAB6:
	adds r0, r7, #0
	adds r0, #0x58
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrh r0, [r7, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r7, #0x26]
	adds r0, #5
	muls r0, r1, r0
	cmp r0, #0
	bge _0801EAD2
	adds r0, #3
_0801EAD2:
	lsls r0, r0, #0xe
	lsrs r5, r0, #0x10
	b _0801EB56
_0801EAD8:
	adds r0, r7, #0
	adds r0, #0x58
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldrh r0, [r7, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r7, #0x26]
	adds r0, #0x12
	muls r0, r1, r0
	movs r1, #0x14
	b _0801EB46
_0801EAF2:
	adds r0, r7, #0
	adds r0, #0x58
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrh r0, [r7, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r7, #0x26]
	adds r0, #8
	muls r0, r1, r0
	adds r1, r6, #5
	b _0801EB46
_0801EB0C:
	adds r0, r7, #0
	adds r0, #0x58
	ldrh r0, [r0, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	b _0801EB4A
_0801EB18:
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0801EB50
	adds r0, r7, #0
	adds r0, #0x58
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldrh r0, [r7, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r7, #0x28]
	adds r0, #0xa
	muls r0, r1, r0
	lsls r0, r0, #3
	movs r2, #0x91
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrh r1, [r1, #0]
	adds r1, #0x48
_0801EB46:
	bl __divsi3
_0801EB4A:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _0801EB56
_0801EB50:
	adds r0, r7, #0
	adds r0, #0x58
	ldrh r5, [r0, #0]
_0801EB56:
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r6, [sp, #4]
	bl sub_080008C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x32
	bl __umodsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	movs r3, #0xc8
	lsls r3, r3, #0xf
	adds r4, r4, r3
	lsrs r4, r4, #0x10
	adds r1, r5, #0
	muls r1, r5, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r5, r5, r6
	adds r1, r5, #0
	bl __divsi3
	muls r0, r4, r0
	mov r1, r9
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0801EBA4
	movs r0, #1
_0801EBA4:
	adds r5, r0, #0
	mov r0, sl
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	add r0, sl
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne _0801EC40
	ldr r0, [sp, #0]
	adds r0, #0xbc
	ldrh r1, [r0, #0]
	lsls r0, r5, #0x10
	lsrs r2, r0, #0x10
	mov r3, r8
	adds r3, #0x7c
	subs r0, r1, #1
	cmp r0, #6
	bhi _0801EC34
	lsls r0, r0, #2
	ldr r1, _0801EBD8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0801EBD8: .4byte _0801EBDC
_0801EBDC:
	.4byte _0801EBF8
_0801EBE0: .4byte _0801EBFC
_0801EBE4: .4byte _0801EC00
_0801EBE8: .4byte _0801EC04
_0801EBEC: .4byte _0801EC08
_0801EBF0: .4byte _0801EC0C
_0801EBF4: .4byte _0801EC0C
_0801EBF8:
	ldrh r1, [r3, #0]
	b _0801EC0E
_0801EBFC:
	ldrh r1, [r3, #2]
	b _0801EC0E
_0801EC00:
	ldrh r1, [r3, #4]
	b _0801EC0E
_0801EC04:
	ldrh r1, [r3, #6]
	b _0801EC0E
_0801EC08:
	ldrh r1, [r3, #8]
	b _0801EC0E
_0801EC0C:
	ldrh r1, [r3, #0xa]
_0801EC0E:
	ldr r0, _0801ED04
	muls r0, r2, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	ldr r3, _0801ED08
	adds r1, r1, r3
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801EC34
	movs r2, #1
_0801EC34:
	adds r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r0, #0
	bgt _0801EC40
	movs r5, #1
_0801EC40:
	ldrh r0, [r7, #0x20]
	cmp r0, #5
	bne _0801EC54
	movs r0, #0x6e
	muls r0, r5, r0
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801EC54:
	bl sub_0801DE60
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801EC98
	ldr r0, _0801ED0C
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x4c
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0801EC98
	mov r2, r8
	ldrh r0, [r2, #0x20]
	cmp r0, #2
	bne _0801EC98
	adds r4, r5, #0
	adds r0, r1, #0
	adds r0, #0x30
	movs r1, #6
	bl sub_0801E0AC
	lsls r0, r0, #0x11
	movs r3, #0xa0
	lsls r3, r3, #0xc
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	adds r0, #0x64
	muls r0, r4, r0
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801EC98:
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _0801ECD6
	ldr r0, _0801ED0C
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x44
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0801ECD6
	mov r0, r8
	ldrh r4, [r0, #0]
	lsls r4, r4, #8
	movs r0, #4
	orrs r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r1, #0
	adds r0, #0x30
	movs r1, #4
	bl sub_0801E0AC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08067FE0
_0801ECD6:
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bne _0801ED62
	ldr r0, _0801ED0C
	ldr r1, [r0, #0]
	adds r1, #0x50
	ldrh r1, [r1, #0]
	adds r2, r0, #0
	cmp r1, #0
	beq _0801ED62
	ldrh r1, [r7, #0x1c]
	movs r3, #0x1c
	ldrsh r0, [r7, r3]
	cmp r0, #4
	ble _0801ED10
	adds r0, r1, #0
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b _0801ED12
_0801ED04: .4byte 0x00001388
_0801ED08: .4byte 0x000009C4
_0801ED0C: .4byte gUnk_030034E0
_0801ED10:
	ldrh r1, [r7, #0x1c]
_0801ED12:
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	cmp r0, #4
	ble _0801ED28
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0801ED28:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r0, #0
	bge _0801ED38
	negs r0, r0
_0801ED38:
	cmp r0, #1
	bgt _0801ED62
	ldr r0, [r2, #0]
	adds r0, #0x30
	movs r1, #7
	bl sub_0801E0AC
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, #0xa
	adds r0, r2, #0
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801ED62:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801ED6C
	adds r0, #3
_0801ED6C:
	lsls r0, r0, #0xe
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0801ED78
	movs r5, #1
_0801ED78:
	adds r0, r5, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0801E988
