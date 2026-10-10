	thumb_func_start sub_08068590
sub_08068590: @ 0x08068590
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _080685E8
	ldr r0, [r1, #0]
	subs r0, #1
	str r0, [r1, #0]
	cmp r0, #0
	bge _080685A6
	movs r0, #0
	str r0, [r1, #0]
_080685A6:
	ldr r0, _080685EC
	ldr r7, [r0, #0]
	movs r6, #0
	ldr r0, [r1, #0]
	cmp r6, r0
	bhs _080685D2
	adds r5, r7, #0
	adds r5, #0x88
	adds r4, r7, #0
	mov r8, r1
_080685BA:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x88
	bl memcpy
	adds r5, #0x88
	adds r4, #0x88
	adds r6, #1
	mov r1, r8
	ldr r0, [r1, #0]
	cmp r6, r0
	blo _080685BA
_080685D2:
	lsls r0, r6, #4
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, r0, r7
	movs r1, #0
	str r1, [r0, #4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080685E8: .4byte gUnk_03006338
_080685EC: .4byte gUnk_03006300
	thumb_func_end sub_08068590
