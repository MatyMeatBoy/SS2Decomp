	thumb_func_start sub_0805C7B8
sub_0805C7B8: @ 0x0805C7B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x88
	str r0, [sp, #0x60]
	bl sub_0800CE30
	cmp r0, #0
	beq _0805C7F4
	movs r0, #0xa
	mov sl, r0
	ldr r0, _0805C7F0
	ldr r0, [r0, #0]
	movs r1, #0x9d
	lsls r1, r1, #4
	adds r1, r0, r1
	str r1, [sp, #0x68]
	movs r2, #0xa9
	lsls r2, r2, #4
	adds r2, r0, r2
	str r2, [sp, #0x6c]
	movs r3, #0xb5
	lsls r3, r3, #4
	adds r3, r0, r3
	str r3, [sp, #0x70]
	b _0805C814
_0805C7F0: .4byte gUnk_030034E0
_0805C7F4:
	movs r6, #0
	mov sl, r6
	ldr r0, _0805C848
	ldr r0, [r0, #0]
	movs r7, #0xf2
	lsls r7, r7, #3
	adds r7, r0, r7
	str r7, [sp, #0x68]
	movs r1, #0x85
	lsls r1, r1, #4
	adds r1, r0, r1
	str r1, [sp, #0x6c]
	movs r2, #0x91
	lsls r2, r2, #4
	adds r2, r0, r2
	str r2, [sp, #0x70]
_0805C814:
	bl sub_08057CEC
	adds r1, r0, #0
	movs r5, #1
	movs r2, #1
_0805C81E:
	adds r0, r2, #0
	lsls r0, r5
	ands r0, r1
	cmp r0, #0
	beq _0805C82C
	movs r3, #1
	add sl, r3
_0805C82C:
	adds r5, #1
	cmp r5, #9
	bls _0805C81E
	bl sub_0800CE30
	cmp r0, #0
	beq _0805C84C
	mov r6, sl
	cmp r6, #0x13
	bls _0805C856
	movs r7, #0x13
	mov sl, r7
	b _0805C856
	.2byte 0x0000
_0805C848: .4byte gUnk_030034E0
_0805C84C:
	mov r0, sl
	cmp r0, #9
	bls _0805C856
	movs r1, #9
	mov sl, r1
_0805C856:
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x64]
	movs r2, #0
	mov r9, r2
	lsls r2, r0, #4
	subs r2, r2, r0
	lsls r2, r2, #6
	mov r6, sl
	lsls r3, r6, #1
	adds r1, r3, r6
	lsls r1, r1, #4
	ldr r0, _0805C8BC
	adds r1, r1, r0
	movs r7, #0
	mov r8, r7
	movs r5, #0
	str r3, [sp, #0x74]
	movs r6, #0
	movs r0, #1
	negs r0, r0
	mov ip, r0
	ldr r3, [sp, #0x68]
	adds r2, r2, r1
	mov r4, sp
_0805C88C:
	ldrh r0, [r2, #0]
	strh r0, [r3, #0]
	ldrh r0, [r2, #2]
	strh r0, [r3, #2]
	strh r6, [r3, #4]
	strb r7, [r3, #6]
	strb r7, [r3, #7]
	strb r7, [r3, #8]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _0805C8C6
	cmp r0, ip
	beq _0805C8C0
	mov r0, r8
	lsls r1, r0, #3
	str r5, [r4, #0]
	add r0, sp, #4
	adds r0, r0, r1
	str r6, [r0, #0]
	adds r4, #8
	movs r1, #1
	add r8, r1
	b _0805C8C6
_0805C8BC: .4byte gUnk_084E7BE8
_0805C8C0:
	strh r6, [r3, #0]
	movs r0, #1
	add r9, r0
_0805C8C6:
	adds r3, #0x10
	adds r2, #4
	adds r5, #1
	cmp r5, #0xb
	bls _0805C88C
	bl sub_080008C8
	mov r1, r9
	adds r1, #1
	bl sub_080B95E4
	adds r4, r0, #0
	ldr r1, [sp, #0x64]
	lsls r1, r1, #4
	str r1, [sp, #0x78]
	cmp r4, #0
	beq _0805C96E
	movs r5, #0
	cmp r5, r4
	bhs _0805C912
_0805C8EE:
	bl sub_080008C8
	mov r1, r8
	bl sub_080B95E4
	lsls r1, r0, #3
	add r0, sp, #4
	adds r1, r0, r1
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _0805C90A
	movs r0, #1
	str r0, [r1, #0]
	b _0805C90C
_0805C90A:
	subs r5, #1
_0805C90C:
	adds r5, #1
	cmp r5, r4
	blo _0805C8EE
_0805C912:
	movs r5, #0
	cmp r5, r8
	bhs _0805C96E
	movs r2, #0
	ldr r4, [sp, #0x68]
	adds r4, #4
	mov r9, sp
	ldr r3, [sp, #0x68]
	adds r3, #0x90
	str r3, [sp, #0x84]
_0805C926:
	lsls r0, r5, #3
	add r1, sp, #4
	adds r1, r1, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _0805C962
	mov r6, r9
	ldr r0, [r6, #0]
	lsls r0, r0, #4
	ldr r1, [sp, #0x84]
	ldr r7, [sp, #0x68]
	adds r0, r0, r7
	ldm r0!, {r3, r6, r7}
	stm r1!, {r3, r6, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	movs r0, #0
	strh r0, [r4, #0]
	strb r2, [r4, #2]
	strb r2, [r4, #3]
	strb r2, [r4, #4]
	ldr r0, [sp, #0x84]
	movs r1, #1
	str r2, [sp, #0x7c]
	bl sub_0805C208
	ldr r0, [sp, #0x84]
	adds r0, #0x10
	str r0, [sp, #0x84]
	ldr r2, [sp, #0x7c]
_0805C962:
	adds r4, #0x10
	movs r1, #8
	add r9, r1
	adds r5, #1
	cmp r5, r8
	blo _0805C926
_0805C96E:
	movs r2, #0
	mov r9, r2
	ldr r3, [sp, #0x78]
	ldr r6, [sp, #0x64]
	subs r2, r3, r6
	lsls r2, r2, #6
	ldr r1, [sp, #0x74]
	add r1, sl
	lsls r1, r1, #4
	ldr r0, _0805C9C8
	adds r1, r1, r0
	movs r7, #0
	mov r8, r7
	movs r5, #0
	movs r6, #0
	movs r0, #1
	negs r0, r0
	mov sl, r0
	ldr r4, [sp, #0x6c]
	adds r2, r2, r1
	mov r3, sp
_0805C998:
	ldrh r0, [r2, #0]
	strh r0, [r4, #0]
	ldrh r0, [r2, #2]
	strh r0, [r4, #2]
	strh r6, [r4, #4]
	strb r7, [r4, #6]
	strb r7, [r4, #7]
	strb r7, [r4, #8]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _0805C9D2
	cmp r0, sl
	beq _0805C9CC
	mov r0, r8
	lsls r1, r0, #3
	str r5, [r3, #0]
	add r0, sp, #4
	adds r0, r0, r1
	str r6, [r0, #0]
	adds r3, #8
	movs r1, #1
	add r8, r1
	b _0805C9D2
_0805C9C8: .4byte gUnk_084E99E8
_0805C9CC:
	strh r6, [r4, #0]
	movs r0, #1
	add r9, r0
_0805C9D2:
	adds r4, #0x10
	adds r2, #4
	adds r5, #1
	cmp r5, #0xb
	bls _0805C998
	bl sub_080008C8
	mov r1, r9
	adds r1, #1
	bl sub_080B95E4
	adds r4, r0, #0
	cmp r4, #0
	beq _0805CA72
	movs r5, #0
	cmp r5, r4
	bhs _0805CA18
_0805C9F4:
	bl sub_080008C8
	mov r1, r8
	bl sub_080B95E4
	lsls r1, r0, #3
	add r0, sp, #4
	adds r1, r0, r1
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _0805CA10
	movs r0, #1
	str r0, [r1, #0]
	b _0805CA12
_0805CA10:
	subs r5, #1
_0805CA12:
	adds r5, #1
	cmp r5, r4
	blo _0805C9F4
_0805CA18:
	movs r5, #0
	cmp r5, r8
	bhs _0805CA72
	movs r2, #0
	ldr r4, [sp, #0x6c]
	adds r4, #4
	mov r9, sp
	ldr r1, [sp, #0x6c]
	adds r1, #0x90
	mov sl, r1
_0805CA2C:
	lsls r0, r5, #3
	add r1, sp, #4
	adds r1, r1, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _0805CA66
	mov r3, r9
	ldr r0, [r3, #0]
	lsls r0, r0, #4
	mov r1, sl
	ldr r6, [sp, #0x6c]
	adds r0, r0, r6
	ldm r0!, {r3, r6, r7}
	stm r1!, {r3, r6, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	movs r0, #0
	strh r0, [r4, #0]
	strb r2, [r4, #2]
	strb r2, [r4, #3]
	strb r2, [r4, #4]
	mov r0, sl
	movs r1, #1
	str r2, [sp, #0x7c]
	bl sub_0805C208
	movs r7, #0x10
	add sl, r7
	ldr r2, [sp, #0x7c]
_0805CA66:
	adds r4, #0x10
	movs r0, #8
	add r9, r0
	adds r5, #1
	cmp r5, r8
	blo _0805CA2C
_0805CA72:
	ldr r1, [sp, #0x60]
	cmp r1, #1
	bls _0805CA7C
	movs r2, #0
	str r2, [sp, #0x60]
_0805CA7C:
	ldr r3, [sp, #0x60]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #4
	ldr r1, _0805CADC
	movs r5, #0
	movs r3, #0
	movs r6, #0
	mov r9, r6
	ldr r7, _0805CAE0
	mov r8, r7
	ldr r4, [sp, #0x70]
	adds r6, r0, r1
	adds r7, r4, #0
_0805CA98:
	ldrh r1, [r6, #0]
	strh r1, [r4, #0]
	ldrh r0, [r6, #2]
	strh r0, [r4, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #2
	bne _0805CAB4
	strb r3, [r4, #8]
	mov r0, r9
	strh r0, [r4, #4]
	strb r3, [r4, #6]
	strb r3, [r4, #7]
	strb r3, [r4, #9]
_0805CAB4:
	ldrh r0, [r4, #0]
	cmp r0, r8
	bne _0805CAE8
	str r3, [sp, #0x80]
	bl sub_080008C8
	adds r1, r0, #0
	movs r0, #1
	ands r1, r0
	ldr r3, [sp, #0x80]
	cmp r1, #0
	beq _0805CAE4
	adds r0, r7, #0
	movs r1, #0x14
	ldr r2, [sp, #0x60]
	bl sub_0805C4FC
	ldr r3, [sp, #0x80]
	b _0805CAE8
	.2byte 0x0000
_0805CADC: .4byte gUnk_084EB7E8
_0805CAE0: .4byte 0x0000FFFF
_0805CAE4:
	strh r1, [r4, #0]
	strh r1, [r4, #2]
_0805CAE8:
	adds r4, #0x10
	adds r6, #4
	adds r7, #0x10
	adds r5, #1
	cmp r5, #0xb
	bls _0805CA98
	add sp, #0x88
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0805C7B8
