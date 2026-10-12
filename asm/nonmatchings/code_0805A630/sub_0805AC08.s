	thumb_func_start sub_0805AC08
sub_0805AC08: @ 0x0805AC08
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	ldrh r0, [r0, #0]
	ldr r1, _0805AC20
	mov r8, r1
	cmp r0, #0xa
	bne _0805ACC0
	movs r7, #1
	negs r7, r7
	b _0805AC66
_0805AC20: .4byte gUnk_030034E0
_0805AC24:
	adds r7, r3, #0
	mov r5, r8
	ldr r2, [r5, #0]
	adds r4, r2, #0
	adds r4, #0x6a
	ldrh r1, [r4, #0]
	lsls r0, r1, #4
	subs r0, r0, r1
	cmp r0, #0x18
	bgt _0805ACC0
	lsls r0, r3, #4
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r2, r2, r0
	movs r0, #0xa
	strh r0, [r2, #0]
	ldr r1, [r2, #4]
	mov r5, ip
	ldr r0, [r5, #4]
	adds r0, r1, r0
	ldr r1, _0805ACEC
	cmp r0, r1
	bls _0805ACFC
	str r1, [r2, #4]
	ldr r2, _0805ACF0
	adds r1, r0, r2
	str r1, [r5, #4]
	ldrh r1, [r4, #0]
	lsls r0, r1, #4
	subs r0, r0, r1
	cmp r3, r0
	bge _0805ACC0
_0805AC66:
	adds r4, r7, #0
	cmp r7, #0
	bge _0805AC6E
	movs r4, #0
_0805AC6E:
	lsls r0, r4, #4
	movs r3, #0xb8
	lsls r3, r3, #2
	adds r0, r0, r3
	mov r5, r8
	ldr r1, [r5, #0]
	adds r3, r1, r0
	movs r5, #1
	negs r5, r5
	adds r2, r4, #0
	adds r1, #0x6a
	ldrh r1, [r1, #0]
	lsls r0, r1, #4
	subs r0, r0, r1
	cmp r4, r0
	bge _0805ACAE
	ldr r6, _0805ACEC
	adds r1, r0, #0
_0805AC92:
	ldrh r0, [r3, #0]
	cmp r0, #0xa
	bne _0805ACA6
	ldr r0, [r3, #4]
	cmp r5, r0
	bge _0805ACA6
	cmp r0, r6
	beq _0805ACA6
	adds r4, r2, #0
	adds r5, r0, #0
_0805ACA6:
	adds r2, #1
	adds r3, #0x10
	cmp r2, r1
	blt _0805AC92
_0805ACAE:
	adds r3, r4, #0
	cmp r5, #0
	bge _0805ACB8
	movs r3, #1
	negs r3, r3
_0805ACB8:
	cmp r7, r3
	beq _0805ACC0
	cmp r3, #0
	bge _0805AC24
_0805ACC0:
	movs r2, #0
	ldr r0, _0805ACF4
	ldr r0, [r0, #0]
	movs r3, #0xb8
	lsls r3, r3, #2
	adds r1, r0, r3
_0805ACCC:
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _0805ACF8
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _0805ACCC
	movs r3, #1
	negs r3, r3
_0805ACDE:
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	bne _0805AD00
	movs r0, #0
	b _0805AD0C
	.2byte 0x0000
_0805ACEC: .4byte 0x000186A0
_0805ACF0: .4byte 0xFFFE7960
_0805ACF4: .4byte gUnk_030034E0
_0805ACF8:
	adds r3, r2, #0
	b _0805ACDE
_0805ACFC:
	str r0, [r2, #4]
	b _0805AD0A
_0805AD00:
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	mov r1, ip
	bl sub_0805D028
_0805AD0A:
	movs r0, #1
_0805AD0C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0805AC08
