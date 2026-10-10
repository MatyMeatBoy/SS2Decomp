	thumb_func_start sub_08021AD8
sub_08021AD8: @ 0x08021AD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	adds r5, r0, #0
	str r1, [sp, #0x58]
	bl sub_0800CD34
	adds r4, r0, #0
	cmp r4, #0
	beq _08021AF4
	b _08021C56
_08021AF4:
	ldr r1, _08021B44
	movs r3, #1
	negs r3, r3
	str r4, [sp, #0]
	add r0, sp, #0x10
	movs r2, #1
	bl sub_08065158
	add r1, sp, #0x10
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
	ldr r0, [sp, #0x58]
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	ldr r1, _08021B48
	ldr r2, [sp, #0x58]
	ands r2, r1
	str r2, [sp, #0x58]
	adds r0, r5, #0
	ands r0, r1
	str r0, [sp, #0x4c]
	lsrs r0, r5, #0x10
	str r0, [sp, #0x50]
	mov r2, sp
	adds r2, #0x56
	strh r4, [r2, #0]
	add r1, sp, #0x48
	strh r4, [r1, #0]
	add r0, sp, #0x54
	strh r4, [r0, #0]
	movs r3, #0
	str r3, [sp, #0x60]
	b _08021C30
_08021B44: .4byte 0x0005008C
_08021B48: .4byte 0x0000FFFF
_08021B4C:
	str r0, [sp, #0x60]
	bl sub_0800CC98
	cmp r0, #0
	bne _08021C2C
	bl sub_0800CD8C
	cmp r0, #0
	bne _08021C2C
	movs r0, #0
	str r0, [sp, #0x5c]
	add r1, sp, #0x48
	mov sl, r1
	mov r2, sp
	adds r2, #0x56
	str r2, [sp, #0x68]
	add r3, sp, #0x54
	mov r9, r3
_08021B70:
	mov r0, sl
	ldrh r7, [r0, #0]
	cmp r7, #0
	bne _08021C10
	ldr r1, [sp, #0x5c]
	lsls r5, r1, #2
	add r2, sp, #0x4c
	mov r8, r2
	add r8, r5
	mov r3, r8
	ldr r6, [r3, #0]
	add r0, sp, #0x50
	adds r5, r5, r0
	ldr r4, [r5, #0]
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	str r7, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0x29
	mov r2, r9
	ldr r3, [sp, #0x68]
	bl sub_08065370
	mov r1, sl
	strh r0, [r1, #0]
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	add r4, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	movs r2, #0x10
	str r2, [sp, #0]
	str r7, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r3, [sp, #0x64]
	cmp r3, #0
	beq _08021BF8
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r1, #1
	mov r2, r9
	ldrh r3, [r2, #0]
	str r6, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0x29
	bl sub_08007870
	b _08021C16
_08021BF8:
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r0, #0
	ldrsh r2, [r5, r0]
	mov r3, r9
	ldrh r0, [r3, #0]
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r3, #0x29
	bl sub_08065230
	b _08021C16
_08021C10:
	ldr r0, [sp, #0x60]
	adds r0, #1
	str r0, [sp, #0x60]
_08021C16:
	movs r1, #2
	add sl, r1
	ldr r2, [sp, #0x68]
	adds r2, #2
	str r2, [sp, #0x68]
	add r9, r1
	ldr r3, [sp, #0x5c]
	adds r3, #1
	str r3, [sp, #0x5c]
	cmp r3, #0
	beq _08021B70
_08021C2C:
	bl sub_080003F0
_08021C30:
	bl sub_0800CB78
	cmp r0, #0
	bne _08021C48
	ldr r0, [sp, #0x60]
	cmp r0, #0
	bne _08021C48
	bl sub_0800CCCC
	cmp r0, #0
	bne _08021C48
	b _08021B4C
_08021C48:
	ldr r2, _08021C68
	movs r1, #1
	ldr r3, [sp, #0x58]
	lsls r1, r3
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
_08021C56:
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08021C68: .4byte gUnk_03005CE4
	thumb_func_end sub_08021AD8
