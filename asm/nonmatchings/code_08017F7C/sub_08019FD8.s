	thumb_func_start sub_08019FD8
sub_08019FD8: @ 0x08019FD8
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r3, r1, #3
	subs r3, r3, r1
	lsls r3, r3, #3
	adds r0, r0, r3
	str r0, [sp, #0]
	ldr r0, _0801A030
	ldr r5, [r0, #0]
	ldrh r3, [r5, #8]
	lsls r3, r3, #0x10
	ldr r4, _0801A034
	mov r6, sp
	ldr r0, [sp, #4]
	ands r0, r4
	orrs r0, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x10
	ldr r3, _0801A038
	ands r0, r3
	orrs r0, r1
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _0801A03C
	ands r0, r3
	orrs r0, r1
	str r0, [sp, #4]
	ldrh r0, [r5, #8]
	adds r0, #1
	adds r0, r0, r2
	strh r0, [r5, #8]
	mov r0, sp
	bl sub_0806603C
	ldrb r1, [r6, #4]
	ldrh r0, [r6, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000
_0801A030: .4byte gUnk_03005CF4
_0801A034: .4byte 0x0000FFFF
_0801A038: .4byte 0xFFFF00FF
_0801A03C: .4byte 0xFFFFFF00
	thumb_func_end sub_08019FD8
