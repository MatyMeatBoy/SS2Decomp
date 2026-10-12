	thumb_func_start sub_080581E4
sub_080581E4: @ 0x080581E4
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	movs r2, #0
	ldr r0, _0805823C
	mov r9, r0
	movs r1, #0xa8
	lsls r1, r1, #1
	mov r8, r1
	movs r5, #0
	movs r0, #0xa9
	lsls r0, r0, #1
	mov ip, r0
_08058206:
	mov r1, r9
	ldr r0, [r1, #0]
	lsls r1, r2, #4
	adds r1, r0, r1
	mov r0, r8
	adds r3, r1, r0
	ldrh r0, [r3, #0]
	cmp r0, r7
	bne _0805822A
	add r1, ip
	ldrh r0, [r1, #0]
	cmp r0, r6
	bne _0805822A
	subs r4, #1
	strh r5, [r3, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _08058230
_0805822A:
	adds r2, #1
	cmp r2, #0x18
	bls _08058206
_08058230:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805823C: .4byte gUnk_030034E0
	thumb_func_end sub_080581E4
