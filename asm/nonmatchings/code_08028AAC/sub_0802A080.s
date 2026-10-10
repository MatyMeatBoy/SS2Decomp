	thumb_func_start sub_0802A080
sub_0802A080: @ 0x0802A080
	push {r4, r5, r6, lr}
	sub sp, #0x18
	lsls r2, r2, #0x10
	movs r4, #0
	str r4, [sp, #0x10]
	lsls r0, r0, #8
	str r0, [sp, #0]
	lsls r1, r1, #8
	str r1, [sp, #4]
	lsls r3, r3, #0x10
	lsrs r2, r2, #0x10
	orrs r2, r3
	str r2, [sp, #0x14]
	ldr r6, _0802A0A4
_0802A09C:
	movs r5, #1
	movs r4, #0
	b _0802A0EC
	.2byte 0x0000
_0802A0A4: .4byte gUnk_03003E28
_0802A0A8:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, #0
	muls r1, r0, r1
	adds r1, r1, r6
	ldr r0, [r1, #0]
	ldrh r0, [r0, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #8]
	ldr r0, [r1, #0]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	add r2, sp, #8
	str r0, [r2, #4]
	ldr r0, [r1, #0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0802A0EA
	adds r0, r2, #0
	mov r1, sp
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_08021FE0
	cmp r0, #0
	beq _0802A0EA
	movs r5, #0
_0802A0EA:
	adds r4, #1
_0802A0EC:
	bl sub_08002164
	cmp r4, r0
	blo _0802A0A8
	bl sub_080003F0
	cmp r5, #0
	bne _0802A09C
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_0802A080
