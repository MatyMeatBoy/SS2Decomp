	thumb_func_start sub_080435C4
sub_080435C4: @ 0x080435C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08043618
	mov sl, r0
	ldr r1, _0804361C
	mov r9, r1
	ldr r2, _08043620
	mov r8, r2
	mov r7, sp
	add r6, sp, #8
	add r5, sp, #0xc
_080435E2:
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [sp, #0]
	movs r0, #0xf0
	lsls r0, r0, #8
	str r0, [r7, #4]
	ldr r0, [sp, #0xc]
	mov r1, sl
	ands r0, r1
	movs r2, #0x40
	orrs r0, r2
	movs r1, #0x80
	lsls r1, r1, #0xc
	mov r2, r9
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0xc]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08043624
	adds r4, r1, r0
	b _0804362C
_08043618: .4byte 0xFFFF0000
_0804361C: .4byte 0x0000FFFF
_08043620: .4byte gUnk_03003D70
_08043624: .4byte gUnk_03003CE0
_08043628:
	bl sub_080003F0
_0804362C:
	adds r0, r4, #0
	adds r0, #0x8c
	mov r1, sp
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08021FE0
	cmp r0, #0
	beq _08043628
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	add r0, r8
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	movs r2, #0xed
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	movs r1, #0
	movs r3, #0
	bl sub_08028D98
	b _080435E2
	thumb_func_end sub_080435C4
