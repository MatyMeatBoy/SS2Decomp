	thumb_func_start sub_0805A7C4
sub_0805A7C4: @ 0x0805A7C4
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	mov r8, r1
	mov r9, r2
	ldr r0, _0805A7E4
	ldr r0, [r0, #0]
	ldr r1, _0805A7E8
	adds r4, r0, r1
	movs r5, #0
	adds r1, #0x48
	adds r6, r0, r1
	b _0805A7F4
	.2byte 0x0000
_0805A7E4: .4byte gUnk_03005CF4
_0805A7E8: .4byte 0x000007A4
_0805A7EC:
	adds r5, #1
	adds r4, #0x70
	adds r6, r4, #0
	adds r6, #0x48
_0805A7F4:
	cmp r5, #0xe
	bhi _0805A864
	adds r0, r6, #0
	bl sub_08000470
	cmp r0, #0
	bne _0805A7EC
	ldr r0, _0805A858
	ldr r2, [r0, #0]
	movs r3, #1
	adds r1, r3, #0
	lsls r1, r5
	ldr r0, [r2, #0x54]
	orrs r0, r1
	str r0, [r2, #0x54]
	ldr r0, [r2, #0x4c]
	str r0, [r4, #0]
	ldr r0, [r2, #0x4c]
	adds r0, #1
	str r0, [r2, #0x4c]
	str r7, [r4, #4]
	str r3, [r4, #0x3c]
	mov r1, r8
	lsls r0, r1, #8
	str r0, [r4, #8]
	mov r1, r9
	lsls r0, r1, #8
	str r0, [r4, #0xc]
	movs r0, #0x3c
	str r0, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x68]
	ldr r1, _0805A85C
	str r1, [r4, #0x54]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x58]
	ldr r0, _0805A860
	str r0, [r4, #0x6c]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08000274
	ldr r0, [r4, #0]
	b _0805A866
	.2byte 0x0000
_0805A858: .4byte gUnk_03005CF4
_0805A85C: .4byte sub_080284F4
_0805A860: .4byte sub_0805A780
_0805A864:
	movs r0, #0
_0805A866:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0805A7C4
