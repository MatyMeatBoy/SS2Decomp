	thumb_func_start sub_0808DB38
sub_0808DB38: @ 0x0808DB38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	adds r4, r0, #0
	ldr r1, _0808DB7C
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	ldr r1, [sp, #0x1c]
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	add r1, sp, #0x10
	movs r0, #5
	strb r0, [r1, #0x1c]
	cmp r4, #1
	beq _0808DB86
	cmp r4, #1
	blo _0808DB80
	cmp r4, #2
	beq _0808DB8C
	cmp r4, #3
	beq _0808DB92
	b _0808DB98
	.2byte 0x0000
_0808DB7C: .4byte 0x00050122
_0808DB80:
	movs r0, #0x8c
	lsls r0, r0, #8
	b _0808DB96
_0808DB86:
	movs r0, #0x94
	lsls r0, r0, #8
	b _0808DB96
_0808DB8C:
	movs r0, #0xa6
	lsls r0, r0, #8
	b _0808DB96
_0808DB92:
	movs r0, #0xaa
	lsls r0, r0, #8
_0808DB96:
	str r0, [sp, #0x54]
_0808DB98:
	movs r0, #0xf5
	lsls r0, r0, #0xa
	str r0, [sp, #0x50]
	movs r0, #0xa0
	lsls r0, r0, #8
	mov r8, r0
	movs r7, #0
	ldr r5, _0808DD5C
	ldr r6, _0808DD60
	movs r4, #0x10
	ldr r0, _0808DD64
	str r0, [sp, #0x58]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0808DD68
	adds r1, r1, r0
	str r1, [sp, #0x60]
	ldr r0, [sp, #0x5c]
	ands r0, r5
	orrs r0, r4
	ands r0, r6
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [sp, #0x5c]
	movs r1, #1
	str r1, [sp, #0x64]
	movs r2, #1
	str r2, [sp, #0x68]
	ldr r1, [sp, #0x50]
	asrs r0, r1, #8
	add r2, sp, #0x44
	mov sl, r2
	mov r2, sp
	adds r2, #0x46
	str r2, [sp, #0x74]
	cmp r0, #0x2d
	bgt _0808DBEC
	b _0808DD28
_0808DBEC:
	mov r0, sp
	adds r0, #0x50
	str r0, [sp, #0x6c]
	add r2, sp, #0x4c
	mov r9, r2
	mov r6, sp
	adds r6, #0x4e
	subs r0, #0x24
	str r0, [sp, #0x70]
_0808DBFE:
	ldr r2, _0808DD6C
	adds r0, r2, r1
	str r0, [sp, #0x50]
	add r8, r7
	subs r7, #0x28
	mov r0, r8
	cmp r0, #0
	bgt _0808DC16
	movs r1, #1
	mov r8, r1
	asrs r0, r7, #1
	negs r7, r0
_0808DC16:
	cmp r7, #0
	ble _0808DC32
	ldr r2, [sp, #0x68]
	cmp r2, #0
	beq _0808DC32
	bl sub_0800CCCC
	cmp r0, #0
	bne _0808DC2E
	movs r0, #0x2e
	bl sub_0805865C
_0808DC2E:
	movs r0, #0
	str r0, [sp, #0x68]
_0808DC32:
	ldr r1, [sp, #0x64]
	cmp r1, #0
	beq _0808DC5E
	mov r2, r8
	asrs r0, r2, #8
	cmp r0, #7
	bgt _0808DC5E
	add r0, sp, #0x50
	ldr r1, [sp, #0x60]
	adds r1, #0x8c
	add r2, sp, #0x58
	add r3, sp, #0x5c
	bl sub_08021FE0
	cmp r0, #0
	beq _0808DC5E
	movs r0, #0
	str r0, [sp, #0x64]
	movs r1, #0x10
	movs r2, #1
	bl sub_08029A7C
_0808DC5E:
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0
	mov r2, sl
	ldr r3, [sp, #0x74]
	bl sub_08065370
	add r5, sp, #0x48
	str r4, [sp, #0]
	add r0, sp, #0x10
	movs r1, #1
	adds r2, r5, #0
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	bl sub_0800CC98
	cmp r0, #0
	bne _0808DD1A
	bl sub_0800CCCC
	cmp r0, #0
	bne _0808DD1A
	bl sub_0800CD34
	cmp r0, #0
	bne _0808DD1A
	bl sub_0800CD8C
	adds r3, r0, #0
	cmp r3, #0
	bne _0808DD1A
	ldr r0, [sp, #0x50]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x6c]
	ldr r1, [r2, #4]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	str r3, [sp, #4]
	mov r2, r9
	adds r3, r6, #0
	bl sub_0800BC08
	ldr r0, [sp, #0x50]
	asrs r0, r0, #8
	ldr r2, [sp, #0x6c]
	ldr r1, [r2, #4]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r1, r9
	ldrh r0, [r1, #0]
	ldrh r1, [r6, #0]
	subs r1, #1
	ldrh r3, [r5, #0]
	movs r2, #3
	str r2, [sp, #0]
	ldr r2, [sp, #0x70]
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08007870
	mov r1, r9
	ldrh r0, [r1, #0]
	ldrh r1, [r6, #0]
	mov r2, sl
	ldrh r3, [r2, #0]
	str r4, [sp, #0]
	ldr r2, [sp, #0x70]
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08007870
	mov r1, r8
	asrs r2, r1, #8
	ldr r1, [r0, #0xc]
	subs r1, r1, r2
	str r1, [r0, #0xc]
_0808DD1A:
	bl sub_080003F0
	ldr r1, [sp, #0x50]
	asrs r0, r1, #8
	cmp r0, #0x2d
	ble _0808DD28
	b _0808DBFE
_0808DD28:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0808DD36
	movs r0, #0x29
	bl sub_0805865C
_0808DD36:
	ldr r1, _0808DD70
	movs r3, #1
	negs r3, r3
	movs r4, #0
	str r4, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	ldr r2, [sp, #0x74]
	strh r4, [r2, #0]
	mov r0, sl
	strh r4, [r0, #0]
	mov r7, sl
	add r6, sp, #0x50
	add r5, sp, #0x4c
	mov r4, sp
	adds r4, #0x4e
	b _0808DDE2
_0808DD5C: .4byte 0xFFFF0000
_0808DD60: .4byte 0x0000FFFF
_0808DD64: .4byte 0x00100010
_0808DD68: .4byte gUnk_03003CE0
_0808DD6C: .4byte 0xFFFFFE00
_0808DD70: .4byte 0x00050053
_0808DD74:
	bl sub_0800CC98
	cmp r0, #0
	bne _0808DDDE
	bl sub_0800CCCC
	cmp r0, #0
	bne _0808DDDE
	bl sub_0800CD34
	cmp r0, #0
	bne _0808DDDE
	bl sub_0800CD8C
	adds r3, r0, #0
	cmp r3, #0
	bne _0808DDDE
	ldr r0, [sp, #0x50]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r6, #4]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	str r3, [sp, #4]
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0800BC08
	ldr r0, [sp, #0x50]
	asrs r0, r0, #8
	ldr r1, [r6, #4]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	ldrh r2, [r5, #0]
	ldrh r1, [r4, #0]
	ldrh r3, [r7, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r2, #0
	movs r2, #6
	bl sub_08007870
_0808DDDE:
	bl sub_080003F0
_0808DDE2:
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #6
	adds r2, r7, #0
	ldr r3, [sp, #0x74]
	bl sub_08065370
	cmp r0, #0
	beq _0808DD74
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0808DB38
