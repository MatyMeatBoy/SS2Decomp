	thumb_func_start sub_08023A3C
sub_08023A3C: @ 0x08023A3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	str r0, [sp, #0x34]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r9, r1
	movs r0, #0
	str r0, [sp, #0x3c]
	movs r1, #0
	str r1, [sp, #0x38]
	movs r6, #0
	mov r2, r9
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	mov r4, sp
	ldr r3, [sp, #0x34]
	lsls r1, r0, #2
	adds r1, r1, r0
	mov sl, r1
_08023A6A:
	ldrh r0, [r3, #8]
	cmp r0, #0
	beq _08023ACC
	ldr r5, [sp, #0x3c]
	adds r5, #1
	str r5, [sp, #0x3c]
	ldr r7, _08023B1C
	mov r8, r7
	mov r0, r8
	ldr r1, [r0, #0]
	mov r5, r9
	lsls r2, r5, #2
	ldr r7, _08023B20
	adds r0, r1, r7
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r4, #0]
	ldrh r0, [r1, #8]
	strh r0, [r4, #6]
	strb r5, [r4, #5]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0
	mov r7, sl
	adds r5, r0, r7
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r5
	ldrb r0, [r1, #0]
	cmp r0, #3
	bne _08023AAC
	movs r2, #1
_08023AAC:
	cmp r2, #0
	bne _08023ACC
	movs r7, #1
	str r3, [sp, #0x40]
	bl sub_08002204
	ldr r3, [sp, #0x40]
	cmp r0, #0
	beq _08023ACC
	mov r1, r8
	ldr r0, [r1, #0]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r0, r0, r5
	strb r7, [r0, #0]
_08023ACC:
	adds r4, #8
	adds r3, #8
	adds r6, #1
	cmp r6, #4
	bls _08023A6A
	movs r6, #0
	ldr r3, [sp, #0x3c]
	cmp r6, r3
	bhs _08023B00
	add r4, sp, #4
_08023AE0:
	strb r6, [r4, #0]
	bl sub_080008C8
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0x80
	bne _08023AF6
	ldrb r0, [r4, #0]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0]
_08023AF6:
	adds r4, #8
	adds r6, #1
	ldr r7, [sp, #0x3c]
	cmp r6, r7
	blo _08023AE0
_08023B00:
	ldr r1, _08023B1C
	ldr r3, [r1, #0]
	ldrh r0, [r3, #8]
	adds r0, #5
	strh r0, [r3, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfa
	bhi _08023B14
	b _08023DA0
_08023B14:
	movs r0, #9
	strh r0, [r3, #8]
	b _08023DA0
	.2byte 0x0000
_08023B1C: .4byte gUnk_03005CF4
_08023B20: .4byte 0x00000724
_08023B24:
	ldr r2, [sp, #0x34]
	ldrh r1, [r2, #0x30]
	cmp r1, #0
	beq _08023B34
	cmp r1, #1
	bne _08023B32
	b _08023C72
_08023B32:
	b _08023D96
_08023B34:
	mov r3, r9
	lsls r7, r3, #0x18
	b _08023B3E
_08023B3A:
	bl sub_080003F0
_08023B3E:
	bl sub_08019FA8
	cmp r0, #0
	bne _08023B4E
	bl sub_08056E90
	cmp r0, #0
	beq _08023B3A
_08023B4E:
	bl sub_08056E90
	cmp r0, #0
	bne _08023BB8
	movs r6, #0
	ldr r4, [sp, #0x3c]
	cmp r6, r4
	bhs _08023BB8
	lsrs r1, r7, #0x18
	ldr r3, _08023BC8
	lsls r0, r1, #2
	adds r0, r0, r1
	mov r8, r0
_08023B68:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0
	ldr r1, [r3, #0]
	mov r5, r8
	adds r4, r0, r5
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r4
	ldrb r0, [r1, #0]
	cmp r0, #1
	bne _08023B84
	movs r2, #1
_08023B84:
	cmp r2, #0
	beq _08023BB0
	lsls r0, r6, #3
	add r0, sp
	str r3, [sp, #0x40]
	bl sub_0806603C
	ldr r3, [sp, #0x40]
	cmp r0, #0
	beq _08023BB0
	movs r5, #2
	bl sub_08002204
	ldr r3, [sp, #0x40]
	cmp r0, #0
	beq _08023BB0
	ldr r0, [r3, #0]
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r0, r4
	strb r5, [r0, #0]
_08023BB0:
	adds r6, #1
	ldr r2, [sp, #0x3c]
	cmp r6, r2
	blo _08023B68
_08023BB8:
	bl sub_08056E90
	cmp r0, #0
	beq _08023BEC
	mov r3, r9
	lsls r4, r3, #2
	b _08023BD0
	.2byte 0x0000
_08023BC8: .4byte gUnk_03005CF4
_08023BCC:
	bl sub_080003F0
_08023BD0:
	ldr r5, _08023BE4
	adds r1, r4, r5
	ldr r2, _08023BE8
	ldr r0, [r2, #0]
	adds r0, r0, r1
	bl sub_08067C28
	cmp r0, #0
	beq _08023BCC
	b _08023C26
_08023BE4: .4byte 0x00000724
_08023BE8: .4byte gUnk_03005CF4
_08023BEC:
	lsrs r3, r7, #0x18
	movs r5, #0
	ldr r6, _08023C1C
_08023BF2:
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	movs r4, #0
	ldr r1, [r6, #0]
	lsls r0, r3, #2
	adds r0, r0, r3
	adds r2, r2, r0
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1, #0]
	cmp r0, #2
	bne _08023C10
	movs r4, #1
_08023C10:
	cmp r4, #0
	beq _08023C20
	bl sub_080003F0
	b _08023B3E
	.2byte 0x0000
_08023C1C: .4byte gUnk_03005CF4
_08023C20:
	adds r5, #1
	cmp r5, #4
	bls _08023BF2
_08023C26:
	lsrs r0, r7, #0x18
	movs r4, #0
	ldr r1, _08023C68
	ldr r2, [r1, #0]
	lsls r1, r0, #2
	adds r1, r1, r0
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r2, r2, r3
_08023C38:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0
	adds r0, r0, r1
	adds r0, r2, r0
	ldrb r0, [r0, #0]
	cmp r0, #2
	bne _08023C4A
	movs r3, #1
_08023C4A:
	cmp r3, #0
	bne _08023C6C
	movs r3, #0
	cmp r0, #1
	bne _08023C56
	movs r3, #1
_08023C56:
	cmp r3, #0
	bne _08023C6C
	adds r4, #1
	cmp r4, #4
	bls _08023C38
	movs r4, #1
	str r4, [sp, #0x38]
	b _08023D96
	.2byte 0x0000
_08023C68: .4byte gUnk_03005CF4
_08023C6C:
	movs r5, #0
	str r5, [sp, #0x38]
	b _08023D96
_08023C72:
	movs r6, #0
	ldr r7, [sp, #0x3c]
	cmp r0, r7
	blo _08023C7C
	b _08023D96
_08023C7C:
	mov r1, r9
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	b _08023C8A
_08023C86:
	bl sub_080003F0
_08023C8A:
	bl sub_08019FA8
	cmp r0, #0
	bne _08023C9A
	bl sub_08056E90
	cmp r0, #0
	beq _08023C86
_08023C9A:
	bl sub_08056E90
	cmp r0, #0
	bne _08023D1A
	lsls r3, r6, #0x18
	lsrs r2, r3, #0x18
	movs r4, #0
	ldr r5, _08023CD4
	ldr r1, [r5, #0]
	mov r7, r8
	lsls r0, r7, #2
	add r0, r8
	adds r2, r2, r0
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1, #0]
	mov r1, r9
	lsls r7, r1, #0x18
	adds r5, r3, #0
	cmp r0, #3
	bne _08023CCA
	movs r4, #1
_08023CCA:
	cmp r4, #0
	bne _08023D1A
	lsls r4, r6, #3
	b _08023CDC
	.2byte 0x0000
_08023CD4: .4byte gUnk_03005CF4
_08023CD8:
	bl sub_080003F0
_08023CDC:
	mov r2, sp
	adds r0, r2, r4
	bl sub_0806603C
	cmp r0, #0
	bne _08023CF0
	bl sub_08056E90
	cmp r0, #0
	beq _08023CD8
_08023CF0:
	bl sub_08056E90
	cmp r0, #0
	bne _08023D1A
	lsrs r4, r7, #0x18
	lsrs r5, r5, #0x18
	movs r7, #2
	bl sub_08002204
	cmp r0, #0
	beq _08023D1A
	ldr r3, _08023D28
	ldr r1, [r3, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r5, r0
	movs r4, #0xe4
	lsls r4, r4, #1
	adds r1, r1, r4
	adds r1, r1, r0
	strb r7, [r1, #0]
_08023D1A:
	ldr r5, _08023D28
	mov r7, r9
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r4, r1, r0
	b _08023D68
_08023D28: .4byte gUnk_03005CF4
_08023D2C:
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0
	ldr r0, [r5, #0]
	adds r1, r1, r4
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r0, r0, r3
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne _08023D46
	movs r2, #1
_08023D46:
	cmp r2, #0
	beq _08023D52
	ldr r6, [sp, #0x3c]
	movs r4, #0
	str r4, [sp, #0x38]
	b _08023D8C
_08023D52:
	movs r1, #0
	cmp r0, #3
	bne _08023D5A
	movs r1, #1
_08023D5A:
	cmp r1, #0
	beq _08023D64
	movs r5, #1
	str r5, [sp, #0x38]
	b _08023D8C
_08023D64:
	bl sub_080003F0
_08023D68:
	bl sub_08056E90
	cmp r0, #0
	beq _08023D2C
	mov r7, r9
	lsls r4, r7, #2
	b _08023D7A
_08023D76:
	bl sub_080003F0
_08023D7A:
	ldr r0, _08023DAC
	adds r1, r4, r0
	ldr r0, [r5, #0]
	adds r0, r0, r1
	bl sub_08067C28
	cmp r0, #0
	beq _08023D76
	ldr r6, [sp, #0x3c]
_08023D8C:
	adds r6, #1
	ldr r1, [sp, #0x3c]
	cmp r6, r1
	bhs _08023D96
	b _08023C8A
_08023D96:
	bl sub_080003F0
	ldr r2, [sp, #0x38]
	cmp r2, #1
	beq _08023E7E
_08023DA0:
	ldr r3, _08023DB0
	ldr r0, [r3, #0]
	ldrh r0, [r0, #0]
	cmp r0, #0xb
	beq _08023E74
	b _08023E66
_08023DAC: .4byte 0x00000724
_08023DB0: .4byte gUnk_03005CF4
_08023DB4:
	ldr r0, _08023DE4
	ldr r2, [r0, #0]
	movs r1, #1
	ands r2, r1
	mov r0, r9
	ands r0, r1
	cmp r2, r0
	bne _08023E60
	ldr r5, [sp, #0x34]
	ldrh r5, [r5, #4]
	mov r8, r5
	ldr r0, [sp, #0x34]
	ldrh r7, [r0, #6]
	bl sub_08002164
	adds r6, r0, #0
	movs r1, #0
	mov sl, r1
	bl sub_08019FA8
	cmp r0, #0
	bne _08023DEE
	b _08023E66
	.2byte 0x0000
_08023DE4: .4byte gUnk_03002344
_08023DE8:
	movs r2, #1
	mov sl, r2
	b _08023E56
_08023DEE:
	movs r5, #0
	cmp r4, r6
	bhs _08023E56
_08023DF4:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _08023E5C
	adds r3, r1, r0
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r2, [r0, #0]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08023E50
	ldr r1, [r3, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _08023E50
	ldrh r0, [r2, #0]
	lsrs r0, r0, #7
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r2, r1, #0x17
	ldr r3, [sp, #0x34]
	movs r4, #0
	ldrsh r1, [r3, r4]
	subs r1, r1, r0
	cmp r1, #0
	bge _08023E3A
	negs r1, r1
_08023E3A:
	cmp r1, r8
	bge _08023E50
	ldr r1, [sp, #0x34]
	movs r3, #2
	ldrsh r0, [r1, r3]
	subs r0, r0, r2
	cmp r0, #0
	bge _08023E4C
	negs r0, r0
_08023E4C:
	cmp r0, r7
	blt _08023DE8
_08023E50:
	adds r5, #1
	cmp r5, r6
	blo _08023DF4
_08023E56:
	mov r0, sl
	b _08023E62
	.2byte 0x0000
_08023E5C: .4byte gUnk_03003CE0
_08023E60:
	movs r0, #0
_08023E62:
	cmp r0, #0
	bne _08023E74
_08023E66:
	bl sub_080003F0
	bl sub_08056E90
	adds r4, r0, #0
	cmp r4, #0
	beq _08023DB4
_08023E74:
	bl sub_08056E90
	cmp r0, #0
	bne _08023E7E
	b _08023B24
_08023E7E:
	ldr r4, _08023EB8
	ldr r2, [r4, #0]
	ldrh r0, [r2, #0xa]
	subs r0, #1
	strh r0, [r2, #0xa]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08023E96
	movs r0, #0
	strh r0, [r2, #0xa]
_08023E96:
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	bne _08023EC8
	bl sub_08056E50
	cmp r0, #0
	bne _08023EC8
	bl sub_08056FF8
	cmp r0, #0
	bne _08023EC8
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0]
	cmp r0, #0xb
	beq _08023EC8
	b _08023EC0
_08023EB8: .4byte gUnk_03005CF4
_08023EBC:
	bl sub_080003F0
_08023EC0:
	bl sub_08067EC8
	cmp r0, #0
	beq _08023EBC
_08023EC8:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08023A3C
