	thumb_func_start sub_0801FC34
sub_0801FC34: @ 0x0801FC34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	mov r9, r1
	mov r8, r2
	ldr r1, _0801FC58
	ldr r2, [r1, #0]
	ldr r3, [r2, #0x48]
	mov ip, r1
	cmp r3, #0
	bne _0801FC5C
	movs r0, #0
	b _0801FD50
	.2byte 0x0000
_0801FC58: .4byte gUnk_03005CF4
_0801FC5C:
	ldr r1, _0801FD18
	adds r4, r2, r1
	movs r7, #0
	cmp r7, r3
	bhs _0801FD50
_0801FC66:
	ldrh r1, [r4, #0x14]
	subs r1, #0xa
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #2
	bls _0801FD42
	ldr r3, [r4, #0x20]
	ldrb r2, [r3, #6]
	movs r1, #1
	ands r1, r2
	cmp r1, #0
	bne _0801FD42
	ldrh r3, [r3, #0xc]
	ldr r2, _0801FD1C
	ldr r1, [sp, #0]
	ands r1, r2
	orrs r1, r3
	str r1, [sp, #0]
	ldr r2, [r4, #0x20]
	ldrh r3, [r2, #0xe]
	lsls r3, r3, #0x10
	ldr r2, _0801FD20
	ands r1, r2
	orrs r1, r3
	str r1, [sp, #0]
	mov r6, sp
	mov r2, sl
	ldr r3, [r2, #0]
	ldr r1, [r4, #0]
	subs r3, r3, r1
	ldr r1, [r2, #4]
	ldr r2, [r4, #4]
	subs r1, r1, r2
	asrs r5, r1, #8
	asrs r3, r3, #8
	cmp r3, #0
	bge _0801FCB2
	negs r3, r3
_0801FCB2:
	mov r2, r9
	ldrh r1, [r2, #0]
	mov r2, sp
	ldrh r2, [r2, #0]
	adds r1, r1, r2
	asrs r1, r1, #1
	cmp r3, r1
	bgt _0801FCDA
	adds r3, r5, #0
	cmp r3, #0
	bge _0801FCCA
	negs r3, r3
_0801FCCA:
	mov r1, r9
	ldrh r2, [r1, #2]
	ldrh r1, [r6, #2]
	adds r2, r2, r1
	asrs r2, r2, #1
	movs r1, #1
	cmp r3, r2
	ble _0801FCDC
_0801FCDA:
	movs r1, #0
_0801FCDC:
	cmp r1, #0
	beq _0801FD42
	ldrh r0, [r4, #0x10]
	mov r2, r8
	subs r0, r0, r2
	movs r5, #0
	strh r0, [r4, #0x10]
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r4, #0x12]
	ldrh r0, [r4, #0x10]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801FD28
	strh r5, [r4, #0x10]
	bl sub_0801DE60
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r7, #0
	ldr r1, _0801FD24
	bl sub_08028368
	b _0801FD3A
_0801FD18: .4byte 0x0000058C
_0801FD1C: .4byte 0xFFFF0000
_0801FD20: .4byte 0x0000FFFF
_0801FD24: .4byte 0x00000FFF
_0801FD28:
	bl sub_0801DE60
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r7, #0
	mov r1, r8
	bl sub_08028368
_0801FD3A:
	movs r1, #0xa
	strh r1, [r4, #0x14]
	ldr r1, _0801FD60
	mov ip, r1
_0801FD42:
	adds r7, #1
	adds r4, #0x24
	mov r2, ip
	ldr r1, [r2, #0]
	ldr r1, [r1, #0x48]
	cmp r7, r1
	blo _0801FC66
_0801FD50:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0801FD60: .4byte gUnk_03005CF4
	thumb_func_end sub_0801FC34
