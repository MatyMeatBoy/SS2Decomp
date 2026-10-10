	thumb_func_start sub_0801ED8C
sub_0801ED8C: @ 0x0801ED8C
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r7, r1, #0
	movs r1, #0x81
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r0, [r0, #0x28]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	mov r9, r0
	adds r0, r7, #0
	adds r0, #0x5a
	ldrh r6, [r0, #0]
	bl sub_080008C8
	movs r1, #0x7f
	ands r1, r0
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r0, r4, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #1
	cmp r1, r0
	bgt _0801EDE0
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	adds r1, r7, #0
	adds r1, #0x90
	ldr r1, [r1, #0]
	bl sub_0802247C
	movs r0, #0x64
	mov r8, r0
	b _0801EDE4
_0801EDE0:
	movs r1, #0xc8
	mov r8, r1
_0801EDE4:
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrh r5, [r0, #0]
	bl sub_080008C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x32
	bl sub_080B95E4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	movs r0, #0xc8
	lsls r0, r0, #0xf
	adds r4, r4, r0
	lsrs r4, r4, #0x10
	adds r1, r5, #0
	muls r1, r5, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r5, r5, r6
	adds r1, r5, #0
	bl sub_080B9394
	muls r0, r4, r0
	mov r1, r8
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	movs r1, #0xa
	bl sub_080B956C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0801EE36
	movs r1, #1
_0801EE36:
	mov r0, r9
	adds r0, #0xbc
	ldrh r0, [r0, #0]
	adds r3, r1, #0
	adds r2, r7, #0
	adds r2, #0x7c
	subs r0, #1
	cmp r0, #6
	bhi _0801EEB0
	lsls r0, r0, #2
	ldr r1, _0801EE54
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0801EE54: .4byte _0801EE58
_0801EE58:
	.4byte _0801EE74
_0801EE5C: .4byte _0801EE78
_0801EE60: .4byte _0801EE7C
_0801EE64: .4byte _0801EE80
_0801EE68: .4byte _0801EE84
_0801EE6C: .4byte _0801EE88
_0801EE70: .4byte _0801EE88
_0801EE74:
	ldrh r1, [r2, #0]
	b _0801EE8A
_0801EE78:
	ldrh r1, [r2, #2]
	b _0801EE8A
_0801EE7C:
	ldrh r1, [r2, #4]
	b _0801EE8A
_0801EE80:
	ldrh r1, [r2, #6]
	b _0801EE8A
_0801EE84:
	ldrh r1, [r2, #8]
	b _0801EE8A
_0801EE88:
	ldrh r1, [r2, #0xa]
_0801EE8A:
	ldr r0, _0801EED4
	muls r0, r3, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	ldr r2, _0801EED8
	adds r1, r1, r2
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r3
	cmp r0, #0
	beq _0801EEB0
	movs r3, #1
_0801EEB0:
	adds r0, r3, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bgt _0801EEBC
	movs r4, #1
_0801EEBC:
	bl sub_0800CDC0
	cmp r0, #0
	beq _0801EEF6
	mov r0, r8
	cmp r0, #0x64
	bne _0801EEDC
	movs r0, #0x27
	bl sub_0805865C
	b _0801EEF2
	.2byte 0x0000
_0801EED4: .4byte 0x00001388
_0801EED8: .4byte 0x000009C4
_0801EEDC:
	ldrh r0, [r7, #0xc]
	cmp r0, #8
	bne _0801EEEA
	movs r0, #0x4b
	bl sub_0805865C
	b _0801EEF2
_0801EEEA:
	ldrh r0, [r7, #0xc]
	adds r0, #0x45
	bl sub_0805865C
_0801EEF2:
	adds r0, r4, #0
	b _0801EF06
_0801EEF6:
	mov r1, r8
	cmp r1, #0x64
	beq _0801EF00
	adds r0, r4, #0
	b _0801EF06
_0801EF00:
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r0, r4
_0801EF06:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0801ED8C
