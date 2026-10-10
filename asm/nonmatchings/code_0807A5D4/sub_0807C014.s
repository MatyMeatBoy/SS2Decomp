	thumb_func_start sub_0807C014
sub_0807C014: @ 0x0807C014
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r0, _0807C084
	mov r8, r0
	mov r9, r8
_0807C026:
	movs r5, #1
	negs r5, r5
	movs r6, #0x19
	movs r3, #0
	mov r1, r9
	ldr r0, [r1, #0]
	movs r7, #0xaa
	lsls r7, r7, #1
	adds r2, r0, r7
	adds r1, r0, #0
_0807C03A:
	movs r7, #0xa8
	lsls r7, r7, #1
	adds r0, r1, r7
	ldrh r0, [r0, #0]
	cmp r0, #0xa
	bne _0807C050
	ldr r0, [r2, #0]
	cmp r0, r5
	bhs _0807C050
	adds r6, r3, #0
	adds r5, r0, #0
_0807C050:
	adds r2, #0x10
	adds r1, #0x10
	adds r3, #1
	cmp r3, #0x18
	bls _0807C03A
	cmp r6, #0x18
	bhi _0807C0A2
	cmp r5, r4
	blo _0807C088
	mov r1, r8
	ldr r0, [r1, #0]
	lsls r1, r6, #4
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r1, [r0, #0]
	subs r1, r1, r4
	str r1, [r0, #0]
	cmp r1, #0
	bne _0807C106
	adds r0, r6, #0
	bl sub_0805D580
	b _0807C106
	.2byte 0x0000
_0807C084: .4byte gUnk_030034E0
_0807C088:
	mov r7, r9
	ldr r0, [r7, #0]
	lsls r1, r6, #4
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	subs r4, r4, r0
	adds r0, r6, #0
	bl sub_0805D580
	b _0807C026
_0807C0A2:
	movs r6, #0x4b
	ldr r0, _0807C0BC
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	cmp r0, #4
	beq _0807C0C0
	mov r7, r8
	ldr r0, [r7, #0]
	movs r2, #0xb8
	lsls r2, r2, #2
	adds r1, r0, r2
	b _0807C0C6
	.2byte 0x0000
_0807C0BC: .4byte gUnk_03006440
_0807C0C0:
	movs r7, #0x82
	lsls r7, r7, #1
	adds r1, r1, r7
_0807C0C6:
	movs r3, #0
_0807C0C8:
	ldrh r0, [r1, #0]
	cmp r0, #0xa
	bne _0807C0DA
	ldr r0, [r1, #4]
	cmp r0, r5
	bhs _0807C0DA
	adds r6, r3, #0
	adds r5, r0, #0
	mov sl, r1
_0807C0DA:
	adds r3, #1
	adds r1, #0x10
	cmp r3, #0x4a
	bls _0807C0C8
	cmp r6, #0x4b
	beq _0807C106
	cmp r5, r4
	bhs _0807C0F8
	mov r1, sl
	ldr r0, [r1, #4]
	subs r4, r4, r0
	movs r0, #0
	str r0, [r1, #4]
	strh r0, [r1, #0]
	b _0807C026
_0807C0F8:
	mov r2, sl
	ldr r0, [r2, #4]
	subs r0, r0, r4
	str r0, [r2, #4]
	cmp r0, #0
	bne _0807C106
	strh r0, [r2, #0]
_0807C106:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0807C014
