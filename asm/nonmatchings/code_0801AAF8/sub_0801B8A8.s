	thumb_func_start sub_0801B8A8
sub_0801B8A8: @ 0x0801B8A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	adds r5, r3, #0
	ldr r0, [sp, #0x2c]
	mov r9, r0
	ldr r1, [sp, #0x30]
	mov sl, r1
	ldr r0, _0801B914
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0801B8D4
	ldr r0, _0801B918
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1, #0]
_0801B8D4:
	cmp r6, #0
	beq _0801B920
	adds r1, r6, #0
	adds r1, #0xc2
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _0801B920
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0801B91C
	adds r4, r0, r1
	str r5, [sp, #0]
	mov r1, r9
	str r1, [sp, #4]
	mov r0, sl
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	mov r3, r8
	bl sub_0801B74C
	cmp r0, #0
	beq _0801B920
	ldr r1, _0801B914
	ldr r0, [r1, #0]
	b _0801BA42
	.2byte 0x0000
_0801B914: .4byte gUnk_03006440
_0801B918: .4byte 0x000005B4
_0801B91C: .4byte gUnk_08490120
_0801B920:
	cmp r7, #0
	beq _0801B958
	adds r1, r7, #0
	adds r1, #0xb4
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _0801B958
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0801BA54
	adds r4, r0, r1
	str r5, [sp, #0]
	mov r0, r9
	str r0, [sp, #4]
	mov r1, sl
	str r1, [sp, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	mov r3, r8
	bl sub_0801B74C
	cmp r0, #0
	bne _0801BA3E
_0801B958:
	mov r0, r8
	cmp r0, #0
	beq _0801B992
	mov r1, r8
	adds r1, #0xb4
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _0801B992
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0801BA54
	adds r4, r0, r1
	str r5, [sp, #0]
	mov r1, r9
	str r1, [sp, #4]
	mov r0, sl
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	mov r3, r8
	bl sub_0801B74C
	cmp r0, #0
	bne _0801BA3E
_0801B992:
	cmp r5, #0
	beq _0801B9CA
	adds r1, r5, #0
	adds r1, #0xb4
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _0801B9CA
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0801BA54
	adds r4, r0, r1
	str r5, [sp, #0]
	mov r0, r9
	str r0, [sp, #4]
	mov r1, sl
	str r1, [sp, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	mov r3, r8
	bl sub_0801B74C
	cmp r0, #0
	bne _0801BA3E
_0801B9CA:
	mov r0, r9
	cmp r0, #0
	beq _0801BA04
	mov r1, r9
	adds r1, #0xb0
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _0801BA04
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0801BA54
	adds r4, r0, r1
	str r5, [sp, #0]
	mov r1, r9
	str r1, [sp, #4]
	mov r0, sl
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	mov r3, r8
	bl sub_0801B74C
	cmp r0, #0
	bne _0801BA3E
_0801BA04:
	mov r0, sl
	cmp r0, #0
	beq _0801BA60
	mov r1, sl
	adds r1, #0xac
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _0801BA60
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0801BA54
	adds r4, r0, r1
	str r5, [sp, #0]
	mov r1, r9
	str r1, [sp, #4]
	mov r0, sl
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	mov r3, r8
	bl sub_0801B74C
	cmp r0, #0
	beq _0801BA60
_0801BA3E:
	ldr r0, _0801BA58
	ldr r0, [r0, #0]
_0801BA42:
	cmp r0, #0
	beq _0801BA4C
	ldr r1, _0801BA5C
	adds r0, r0, r1
	str r4, [r0, #0]
_0801BA4C:
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r4, r1
	b _0801BA62
_0801BA54: .4byte gUnk_08490120
_0801BA58: .4byte gUnk_03006440
_0801BA5C: .4byte 0x000005B4
_0801BA60:
	movs r0, #0
_0801BA62:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0801B8A8
