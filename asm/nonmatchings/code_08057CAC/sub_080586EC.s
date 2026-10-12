	thumb_func_start sub_080586EC
sub_080586EC: @ 0x080586EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r1, #0
	mov r8, r2
	cmp r4, #0
	beq _08058738
	subs r4, #1
	ldr r2, _08058744
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne _0805871C
	adds r6, r2, #0
	adds r5, r1, #0
_08058710:
	bl sub_080003F0
	ldr r0, [r6, #0]
	ands r0, r5
	cmp r0, #0
	beq _08058710
_0805871C:
	ldr r1, _08058748
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	subs r0, r0, r4
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r1, r1, r0
	str r7, [r1, #0x30]
	mov r0, r8
	str r0, [r1, #0x34]
	movs r0, #0
	str r0, [r1, #0x38]
	str r0, [r1, #0x3c]
_08058738:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08058744: .4byte gUnk_030056FC
_08058748: .4byte gUnk_030056F4
	thumb_func_end sub_080586EC
