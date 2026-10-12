	thumb_func_start sub_08058444
sub_08058444: @ 0x08058444
	push {r4, r5, r6, lr}
	sub sp, #0x10
	lsls r2, r2, #0x10
	movs r4, #0
	str r4, [sp, #8]
	lsls r0, r0, #8
	str r0, [sp, #0]
	lsls r1, r1, #8
	str r1, [sp, #4]
	lsls r3, r3, #0x10
	lsrs r2, r2, #0x10
	orrs r2, r3
	str r2, [sp, #0xc]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08058474
	adds r6, r1, r0
	add r5, sp, #8
	add r4, sp, #0xc
	b _0805847C
	.2byte 0x0000
_08058474: .4byte gUnk_03003CE0
_08058478:
	bl sub_080003F0
_0805847C:
	adds r0, r6, #0
	adds r0, #0x8c
	mov r1, sp
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08021FE0
	cmp r0, #0
	beq _08058478
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_08058444
