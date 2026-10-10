	thumb_func_start sub_08001BE4
sub_08001BE4: @ 0x08001BE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	bl sub_0800170C
	ldr r1, _08001C1C
	movs r0, #1
	str r0, [r1, #0]
	ldr r1, _08001C20
	movs r0, #0
	str r0, [r1, #0]
	movs r0, #0x50
	bl sub_08002298
	movs r5, #0
	movs r1, #0
	mov r0, sp
_08001C0C:
	stm r0!, {r1}
	adds r5, #1
	cmp r5, #3
	bls _08001C0C
	ldr r5, _08001C24
	ldr r4, _08001C20
	b _08001C4C
	.2byte 0x0000
_08001C1C: .4byte gUnk_030027D0
_08001C20: .4byte gUnk_03002730
_08001C24: .4byte gUnk_03002728
_08001C28:
	ldr r0, [r4, #0]
	str r0, [r5, #0]
	ldr r0, _08001CE8
	ldr r1, _08001CEC
	bl sub_08001804
	str r0, [r4, #0]
	bl sub_08001A50
	ldr r0, [r4, #0]
	movs r1, #0xe0
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08001C4C
	ldr r0, [sp, #0]
	adds r0, #1
	str r0, [sp, #0]
_08001C4C:
	ldr r0, [sp, #0]
	cmp r0, #0x3b
	bhi _08001C64
	bl sub_080003F0
	ldr r0, _08001CF0
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	beq _08001C28
_08001C64:
	movs r0, #0
	str r0, [sp, #0]
	mov r8, r0
	ldr r4, _08001CF0
	ldr r0, [r4, #0]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0]
	bl sub_080020F4
	mov sl, r0
	ldr r0, [r4, #0]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	beq _08001C88
	b _08001DC2
_08001C88:
	ldr r0, _08001CF4
	mov r9, r0
	adds r7, r4, #0
_08001C8E:
	bl sub_080003F0
	ldr r1, _08001CF8
	mov r2, r9
	ldr r0, [r2, #0]
	str r0, [r1, #0]
	ldr r0, _08001CE8
	ldr r1, _08001CEC
	bl sub_08001804
	mov r1, r9
	str r0, [r1, #0]
	ldr r2, [r7, #0]
	movs r1, #0x11
	negs r1, r1
	ands r2, r1
	str r2, [r7, #0]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r1, r0
	cmp r1, #0
	beq _08001D0C
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #5
	bls _08001D10
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08001D10
	movs r0, #8
	orrs r2, r0
	str r2, [r7, #0]
	movs r0, #0xfa
	lsls r0, r0, #5
	bl sub_080003F4
	ldr r0, [r7, #0]
	movs r1, #9
	negs r1, r1
	ands r0, r1
	str r0, [r7, #0]
	b _08001D10
	.2byte 0x0000
_08001CE8: .4byte gUnk_03002710
_08001CEC: .4byte gUnk_03002770
_08001CF0: .4byte gUnk_030027D0
_08001CF4: .4byte gUnk_03002730
_08001CF8: .4byte gUnk_03002728
_08001CFC:
	movs r0, #8
	orrs r1, r0
	str r1, [r2, #0]
	movs r0, #0xfa
	lsls r0, r0, #5
	bl sub_080003F4
	b _08001D9E
_08001D0C:
	movs r2, #0
	mov r8, r2
_08001D10:
	ldr r0, [r7, #0]
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	str r0, [r7, #0]
	movs r5, #0
	ldr r6, _08001D24
	mov r4, sp
	b _08001D64
	.2byte 0x0000
_08001D24: .4byte gUnk_030027D0
_08001D28:
	movs r1, #1
	lsls r1, r5
	mov r2, r9
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne _08001D46
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
	ldr r0, [r6, #0]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r6, #0]
	b _08001D4A
_08001D46:
	movs r0, #0
	str r0, [r4, #0]
_08001D4A:
	ldr r0, _08001D74
	ldr r0, [r0, #0]
	cmp r0, #0x50
	bne _08001D60
	ldr r0, [r4, #0]
	cmp r0, #0x3c
	bls _08001D60
	ldr r0, [r6, #0]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r6, #0]
_08001D60:
	adds r4, #4
	adds r5, #1
_08001D64:
	bl sub_08002164
	cmp r5, r0
	blo _08001D28
	movs r5, #0
	ldr r6, _08001D74
	mov r4, sp
	b _08001D96
_08001D74: .4byte gUnk_0300272C
_08001D78:
	cmp r5, sl
	beq _08001D92
	ldr r1, [r4, #0]
	ldr r0, [r6, #0]
	cmp r1, r0
	bls _08001D92
	ldr r2, _08001DE8
	ldr r1, [r2, #0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08001CFC
	str r0, [r4, #0]
_08001D92:
	adds r4, #4
	adds r5, #1
_08001D96:
	bl sub_08002164
	cmp r5, r0
	blo _08001D78
_08001D9E:
	ldr r4, _08001DE8
	ldr r0, [r4, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08001DB0
	movs r0, #0
	bl sub_080586B4
_08001DB0:
	bl sub_08001A50
	ldr r0, [r4, #0]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	bne _08001DC2
	b _08001C8E
_08001DC2:
	bl sub_08001A64
	ldr r1, _08001DE8
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r1, #0]
	ldr r1, _08001DEC
	movs r0, #0
	str r0, [r1, #0]
	bl sub_0800035C
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08001DE8: .4byte gUnk_030027D0
_08001DEC: .4byte gUnk_03002730
	thumb_func_end sub_08001BE4
