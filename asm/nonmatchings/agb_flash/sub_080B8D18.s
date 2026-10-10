	thumb_func_start sub_080B8D18
sub_080B8D18: @ 0x080B8D18
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #0x60
	mov r9, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0xf
	bls _080B8D38
	ldr r0, _080B8D34
	b _080B8E26
	.2byte 0x0000
_080B8D34: .4byte 0x000080FF
_080B8D38:
	ldr r0, _080B8D58
	ldr r0, [r0, #0]
	ldrb r0, [r0, #8]
	mov r7, r8
	lsls r7, r0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r7, r7, r0
	ldr r1, _080B8D5C
	movs r0, #1
	adds r3, r1, #0
	bics r3, r0
	mov r2, sp
	ldr r0, _080B8D60
	subs r0, r0, r1
	b _080B8D6E
_080B8D58: .4byte gUnk_030076E0
_080B8D5C: .4byte sub_080B8E3C
_080B8D60: .4byte sub_080B8E60
_080B8D64:
	ldrh r0, [r3, #0]
	strh r0, [r2, #0]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #2
_080B8D6E:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080B8D64
	movs r4, #0
	b _080B8D84
_080B8D7A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	beq _080B8E24
_080B8D84:
	mov r0, r8
	bl sub_080B8C44
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _080B8D7A
	adds r0, r7, #0
	mov r1, sp
	adds r1, #1
	bl sub_080B8E60
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _080B8D7A
	movs r6, #1
	cmp r4, #0
	beq _080B8DAC
	movs r6, #6
_080B8DAC:
	movs r4, #1
	cmp r4, r6
	bhi _080B8DC2
_080B8DB2:
	mov r0, r8
	bl sub_080B8C44
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	bls _080B8DB2
_080B8DC2:
	mov r0, sp
	bl sub_080B87C8
	ldr r3, _080B8DE4
	ldrh r1, [r3, #0]
	ldr r0, _080B8DE8
	ands r1, r0
	ldr r0, _080B8DEC
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r3, #0]
	ldr r1, _080B8DF0
	ldr r0, [r2, #4]
	strh r0, [r1, #0]
	adds r4, r1, #0
	b _080B8E00
_080B8DE4: .4byte 0x04000204
_080B8DE8: .4byte 0x0000FFFC
_080B8DEC: .4byte gUnk_030076E0
_080B8DF0: .4byte gUnk_030076E4
_080B8DF4:
	ldrh r0, [r4, #0]
	subs r0, #1
	strh r0, [r4, #0]
	movs r0, #1
	add r9, r0
	adds r7, #1
_080B8E00:
	ldrh r0, [r4, #0]
	cmp r0, #0
	beq _080B8E16
	mov r0, r9
	adds r1, r7, #0
	bl sub_080B8CE0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080B8DF4
_080B8E16:
	ldr r2, _080B8E34
	ldrh r0, [r2, #0]
	ldr r1, _080B8E38
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2, #0]
_080B8E24:
	adds r0, r5, #0
_080B8E26:
	add sp, #0x60
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080B8E34: .4byte 0x04000204
_080B8E38: .4byte 0x0000FFFC
	thumb_func_end sub_080B8D18
