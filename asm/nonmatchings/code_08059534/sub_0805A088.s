	thumb_func_start sub_0805A088
sub_0805A088: @ 0x0805A088
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #0xb7
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #0xe1
	lsls r0, r0, #8
	str r0, [sp, #4]
	ldr r0, _0805A0B8
	str r0, [sp, #0xc]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0805A0BC
	adds r6, r1, r0
	add r5, sp, #8
	add r4, sp, #0xc
	b _0805A0C4
	.2byte 0x0000
_0805A0B8: .4byte 0x0028000A
_0805A0BC: .4byte gUnk_03003CE0
_0805A0C0:
	bl sub_080003F0
_0805A0C4:
	adds r0, r6, #0
	adds r0, #0x8c
	mov r1, sp
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08021FE0
	cmp r0, #0
	beq _0805A0C0
	ldr r0, _0805A0E8
	adds r1, r7, #0
	bl sub_08068070
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805A0E8: .4byte sub_0804BC38
	thumb_func_end sub_0805A088
