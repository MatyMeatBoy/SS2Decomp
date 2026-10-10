	thumb_func_start sub_0802A590
sub_0802A590: @ 0x0802A590
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r0, r5, #5
	bl sub_08001494
	mov r8, r0
	lsls r4, r4, #5
	ldr r0, _0802A63C
	adds r4, r4, r0
	lsls r2, r5, #3
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r2, r0
	adds r0, r4, #0
	mov r1, r8
	bl CpuSet
	lsls r5, r5, #4
	mov r9, r5
	mov r5, r8
	movs r6, #0
	cmp r6, r9
	bhs _0802A624
_0802A5CE:
	ldr r2, [r5, #0]
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1b
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x1b
	adds r0, r0, r1
	lsls r2, r2, #0x11
	lsrs r2, r2, #0x1b
	adds r0, r0, r2
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	ldrb r1, [r4, #0]
	movs r3, #0x20
	negs r3, r3
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0]
	lsls r3, r0, #5
	ldrh r1, [r4, #0]
	ldr r7, _0802A640
	adds r2, r7, #0
	ands r1, r2
	orrs r1, r3
	strh r1, [r4, #0]
	lsls r0, r0, #2
	ldrb r1, [r4, #1]
	movs r3, #0x7d
	negs r3, r3
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #1]
	adds r6, #1
	adds r4, #2
	adds r5, #2
	cmp r6, r9
	blo _0802A5CE
_0802A624:
	bl sub_08000B38
	mov r0, r8
	bl sub_08001538
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0802A63C: .4byte gUnk_03001F40
_0802A640: .4byte 0xFFFFFC1F
	thumb_func_end sub_0802A590
