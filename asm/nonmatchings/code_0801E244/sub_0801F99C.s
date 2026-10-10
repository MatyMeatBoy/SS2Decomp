	thumb_func_start sub_0801F99C
sub_0801F99C: @ 0x0801F99C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _0801FAE0
	ldr r1, [r0, #0]
	ldr r2, [r1, #0x48]
	mov ip, r0
	cmp r2, #0
	bne _0801F9B6
	b _0801FB06
_0801F9B6:
	ldr r0, _0801FAE4
	adds r7, r1, r0
	movs r1, #0
	mov r8, r1
	cmp r8, r2
	blo _0801F9C4
	b _0801FB06
_0801F9C4:
	ldrh r0, [r7, #0x14]
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _0801F9D2
	b _0801FAF4
_0801F9D2:
	ldr r2, [r7, #0x20]
	ldrb r1, [r2, #6]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0801F9E0
	b _0801FAF4
_0801F9E0:
	ldrh r2, [r2, #0xc]
	ldr r1, _0801FAE8
	ldr r0, [sp, #0]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0]
	ldr r1, [r7, #0x20]
	ldrh r2, [r1, #0xe]
	lsls r2, r2, #0x10
	ldr r1, _0801FAEC
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0]
	mov r4, sp
	ldr r2, [r6, #0]
	ldr r0, [r7, #0]
	subs r2, r2, r0
	ldr r0, [r6, #4]
	ldr r1, [r7, #4]
	subs r0, r0, r1
	asrs r3, r0, #8
	asrs r2, r2, #8
	cmp r2, #0
	bge _0801FA12
	negs r2, r2
_0801FA12:
	ldrh r0, [r5, #0]
	mov r1, sp
	ldrh r1, [r1, #0]
	adds r0, r0, r1
	asrs r0, r0, #1
	cmp r2, r0
	bgt _0801FA36
	adds r2, r3, #0
	cmp r2, #0
	bge _0801FA28
	negs r2, r2
_0801FA28:
	ldrh r1, [r5, #2]
	ldrh r0, [r4, #2]
	adds r1, r1, r0
	asrs r1, r1, #1
	movs r0, #1
	cmp r2, r1
	ble _0801FA38
_0801FA36:
	movs r0, #0
_0801FA38:
	cmp r0, #0
	beq _0801FAF4
	ldr r4, _0801FAF0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r4
	adds r0, #0x58
	ldrh r5, [r0, #0]
	ldr r0, [r7, #0x20]
	ldrh r6, [r0, #2]
	bl sub_080008C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x32
	bl sub_080B95E4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	movs r2, #0xc8
	lsls r2, r2, #0xf
	adds r4, r4, r2
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
	movs r1, #0x64
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r6, #0xa
	movs r1, #0xa
	bl sub_080B956C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0801FA9C
	movs r0, #1
_0801FA9C:
	adds r4, r0, #0
	ldrh r0, [r7, #0x10]
	subs r0, r0, r4
	movs r5, #0
	strh r0, [r7, #0x10]
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r7, #0x12]
	movs r0, #0x1a
	bl sub_0805865C
	ldrh r0, [r7, #0x10]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801FAC6
	strh r5, [r7, #0x10]
_0801FAC6:
	bl sub_0801DE60
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r0, r8
	adds r1, r4, #0
	bl sub_08028368
	strh r6, [r7, #0x14]
	movs r0, #1
	b _0801FB08
	.2byte 0x0000
_0801FAE0: .4byte gUnk_03005CF4
_0801FAE4: .4byte 0x0000058C
_0801FAE8: .4byte 0xFFFF0000
_0801FAEC: .4byte 0x0000FFFF
_0801FAF0: .4byte gUnk_03003CE0
_0801FAF4:
	movs r0, #1
	add r8, r0
	adds r7, #0x24
	mov r1, ip
	ldr r0, [r1, #0]
	ldr r0, [r0, #0x48]
	cmp r8, r0
	bhs _0801FB06
	b _0801F9C4
_0801FB06:
	movs r0, #0
_0801FB08:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0801F99C
