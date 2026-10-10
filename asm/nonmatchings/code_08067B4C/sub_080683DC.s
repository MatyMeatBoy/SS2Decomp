	thumb_func_start sub_080683DC
sub_080683DC: @ 0x080683DC
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	bl sub_08002164
	mov ip, r0
	movs r5, #0
	movs r4, #0
	cmp r5, ip
	bhs _08068440
	ldr r0, _08068414
	mov r9, r0
	ldr r1, _08068418
	mov r8, r1
_080683FC:
	movs r3, #0
	lsls r0, r4, #2
	mov r2, r9
	adds r1, r0, r2
	ldr r1, [r1, #0]
	adds r2, r0, #0
	adds r6, r4, #1
	cmp r3, r1
	bhi _0806843A
	adds r0, r2, r4
	lsls r0, r0, #3
	b _08068430
_08068414: .4byte gUnk_03006210
_08068418: .4byte gUnk_03006260
_0806841C:
	adds r3, #1
	mov r1, r9
	adds r0, r2, r1
	ldr r0, [r0, #0]
	cmp r3, r0
	bhi _0806843A
	lsls r0, r3, #2
	adds r1, r2, r4
	lsls r1, r1, #3
	adds r0, r0, r1
_08068430:
	add r0, r8
	ldr r0, [r0, #0]
	cmp r0, r7
	bne _0806841C
	adds r5, #1
_0806843A:
	adds r4, r6, #0
	cmp r4, ip
	blo _080683FC
_08068440:
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_080683DC
