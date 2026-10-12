	thumb_func_start sub_0801A0BC
sub_0801A0BC: @ 0x0801A0BC
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	cmp r4, #0
	beq _0801A114
	ldr r0, _0801A104
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r0, _0801A108
	mov ip, r0
	movs r1, #1
	mov r8, r1
	movs r7, #0xee
	lsls r7, r7, #1
	mov r9, r7
	movs r6, #0xb8
	lsls r6, r6, #2
_0801A0E8:
	mov r1, r8
	lsls r1, r3
	mov r7, ip
	ldr r0, [r7, #0]
	ands r0, r1
	cmp r0, #0
	beq _0801A10C
	ldrh r0, [r2, #2]
	cmp r0, r4
	bne _0801A10C
	mov r1, r9
	adds r0, r2, r1
	strb r5, [r0, #0]
	b _0801A114
_0801A104: .4byte gUnk_030056F4
_0801A108: .4byte gUnk_030056FC
_0801A10C:
	adds r3, #1
	adds r2, r2, r6
	cmp r3, #4
	bls _0801A0E8
_0801A114:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0801A0BC
