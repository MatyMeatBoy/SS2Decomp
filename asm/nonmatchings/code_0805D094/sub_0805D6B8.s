	thumb_func_start sub_0805D6B8
sub_0805D6B8: @ 0x0805D6B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _0805D6D0
	ldr r4, [r0, #0]
	movs r6, #0
	b _0805D6D8
_0805D6D0: .4byte gUnk_03005D60
_0805D6D4:
	adds r6, #1
	adds r4, #0x28
_0805D6D8:
	cmp r6, #5
	bhi _0805D70C
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _0805D6D4
	movs r0, #0x34
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _0805D718
	str r1, [r4, #0xc]
	ldr r1, _0805D71C
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	bl sub_08000274
_0805D70C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805D718: .4byte sub_0805B688
_0805D71C: .4byte 0x000007FC
	thumb_func_end sub_0805D6B8
