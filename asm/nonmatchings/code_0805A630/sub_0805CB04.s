	thumb_func_start sub_0805CB04
sub_0805CB04: @ 0x0805CB04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r4, r1, #0
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #4
	ldr r1, _0805CB64
	movs r2, #0
	mov r8, r2
	movs r6, #0
	mov sl, r2
	ldr r2, _0805CB68
	mov r9, r2
	adds r5, r0, r1
_0805CB28:
	ldrh r1, [r5, #0]
	strh r1, [r4, #0]
	ldrh r0, [r5, #2]
	strh r0, [r4, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #2
	bne _0805CB44
	strb r6, [r4, #8]
	mov r0, sl
	strh r0, [r4, #4]
	strb r6, [r4, #6]
	strb r6, [r4, #7]
	strb r6, [r4, #9]
_0805CB44:
	ldrh r0, [r4, #0]
	cmp r0, r9
	bne _0805CB70
	bl sub_080008C8
	adds r1, r0, #0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0805CB6C
	adds r0, r4, #0
	movs r1, #0x14
	adds r2, r7, #0
	bl sub_0805C4FC
	b _0805CB70
_0805CB64: .4byte gUnk_084EB7E8
_0805CB68: .4byte 0x0000FFFF
_0805CB6C:
	strh r1, [r4, #0]
	strh r1, [r4, #2]
_0805CB70:
	adds r5, #4
	movs r2, #1
	add r8, r2
	adds r4, #0x10
	mov r0, r8
	cmp r0, #0xb
	bls _0805CB28
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0805CB04
