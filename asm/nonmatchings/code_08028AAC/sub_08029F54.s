	thumb_func_start sub_08029F54
sub_08029F54: @ 0x08029F54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	lsls r2, r2, #0x10
	ldr r4, _08029F74
	str r4, [sp, #0x10]
	lsls r0, r0, #8
	str r0, [sp, #0]
	lsls r1, r1, #8
	str r1, [sp, #4]
	lsls r3, r3, #0x10
	lsrs r2, r2, #0x10
	orrs r2, r3
	str r2, [sp, #0x14]
	movs r4, #0
	ldr r7, _08029F78
	b _0802A00A
_08029F74: .4byte 0x00200018
_08029F78: .4byte gUnk_03003E28
_08029F7C:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, #0
	muls r1, r0, r1
	adds r1, r1, r7
	ldr r0, [r1, #0]
	ldrh r0, [r0, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #8]
	ldr r0, [r1, #0]
	ldrh r1, [r0, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0xc
	add r0, sp, #8
	str r1, [r0, #4]
	mov r1, sp
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_08021FE0
	adds r6, r4, #1
	cmp r0, #0
	beq _0802A008
	ldr r0, _08029FB8
	ldr r0, [r0, #0]
	ldr r1, _08029FBC
	adds r4, r0, r1
	movs r5, #0
	b _08029FC4
_08029FB8: .4byte gUnk_03005CF4
_08029FBC: .4byte 0x00000E34
_08029FC0:
	adds r5, #1
	adds r4, #0x28
_08029FC4:
	cmp r5, #0x1d
	bhi _0802A004
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08029FC0
	b _08029FD8
_08029FD4:
	bl sub_080003F0
_08029FD8:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08029FD4
	movs r0, #0x3c
	str r0, [r4, #8]
	ldr r2, [sp, #0x2c]
	str r2, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000274
_0802A004:
	bl sub_0800035C
_0802A008:
	adds r4, r6, #0
_0802A00A:
	bl sub_08002164
	cmp r4, r0
	blo _08029F7C
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08029F54
