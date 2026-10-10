	thumb_func_start sub_0800B974
sub_0800B974: @ 0x0800B974
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08007290
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r1, r4
	cmp r1, #0
	beq _0800B98E
	adds r0, #4
	b _0800B998
_0800B98E:
	str r1, [sp, #0]
	adds r0, #4
	mov r1, sp
	bl sub_08000BC8
_0800B998:
	str r0, [sp, #0]
	ldr r0, _0800B9BC
	ldrb r1, [r0, #0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800B9C0
	ldr r0, [sp, #0]
	lsls r1, r5, #0xb
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08001348
	b _0800B9D2
	.2byte 0x0000
_0800B9BC: .4byte gUnk_0300129C
_0800B9C0:
	ldr r0, [sp, #0]
	lsls r1, r5, #0xb
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuFastSet
_0800B9D2:
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r4
	cmp r0, #0
	bne _0800B9E6
	bl sub_080003F0
	ldr r0, [sp, #0]
	bl sub_08001538
_0800B9E6:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0800B974
