	thumb_func_start sub_0801FB14
sub_0801FB14: @ 0x0801FB14
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov ip, r0
	adds r7, r1, #0
	mov r8, r2
	ldr r0, _0801FBE8
	ldr r1, [r0, #0]
	ldr r2, [r1, #0x48]
	mov r9, r0
	cmp r2, #0
	beq _0801FC24
	ldr r0, _0801FBEC
	adds r4, r1, r0
	movs r6, #0
	cmp r6, r2
	bhs _0801FC24
_0801FB3A:
	ldrh r0, [r4, #0x14]
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _0801FC16
	ldr r2, [r4, #0x20]
	ldrb r1, [r2, #6]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0801FC16
	ldrh r2, [r2, #0xc]
	ldr r1, _0801FBF0
	ldr r0, [sp, #0]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0]
	ldr r1, [r4, #0x20]
	ldrh r2, [r1, #0xe]
	lsls r2, r2, #0x10
	ldr r1, _0801FBF4
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0]
	mov r5, sp
	mov r1, ip
	ldr r2, [r1, #0]
	ldr r0, [r4, #0]
	subs r2, r2, r0
	ldr r0, [r1, #4]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	asrs r3, r0, #8
	asrs r2, r2, #8
	cmp r2, #0
	bge _0801FB86
	negs r2, r2
_0801FB86:
	ldrh r0, [r7, #0]
	mov r1, sp
	ldrh r1, [r1, #0]
	adds r0, r0, r1
	asrs r0, r0, #1
	cmp r2, r0
	bgt _0801FBAA
	adds r2, r3, #0
	cmp r2, #0
	bge _0801FB9C
	negs r2, r2
_0801FB9C:
	ldrh r1, [r7, #2]
	ldrh r0, [r5, #2]
	adds r1, r1, r0
	asrs r1, r1, #1
	movs r0, #1
	cmp r2, r1
	ble _0801FBAC
_0801FBAA:
	movs r0, #0
_0801FBAC:
	cmp r0, #0
	beq _0801FC16
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
	beq _0801FBFC
	bl sub_0801DE60
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r6, #0
	ldr r1, _0801FBF8
	bl sub_08028368
	strh r5, [r4, #0x10]
	b _0801FC0E
_0801FBE8: .4byte gUnk_03005CF4
_0801FBEC: .4byte 0x0000058C
_0801FBF0: .4byte 0xFFFF0000
_0801FBF4: .4byte 0x0000FFFF
_0801FBF8: .4byte 0x00000FFF
_0801FBFC:
	bl sub_0801DE60
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r6, #0
	mov r1, r8
	bl sub_08028368
_0801FC0E:
	movs r0, #0xa
	strh r0, [r4, #0x14]
	movs r0, #1
	b _0801FC26
_0801FC16:
	adds r6, #1
	adds r4, #0x24
	mov r1, r9
	ldr r0, [r1, #0]
	ldr r0, [r0, #0x48]
	cmp r6, r0
	blo _0801FB3A
_0801FC24:
	movs r0, #0
_0801FC26:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0801FB14
