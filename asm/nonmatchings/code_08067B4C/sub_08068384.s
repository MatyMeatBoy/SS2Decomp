	thumb_func_start sub_08068384
sub_08068384: @ 0x08068384
	push {r4, r5, r6, r7, lr}
	bl sub_08002164
	adds r4, r0, #0
	movs r0, #0
	cmp r0, r4
	bhs _080683BC
	ldr r1, _080683C4
	mov ip, r1
	ldr r7, _080683C8
	movs r6, #1
	negs r6, r6
	movs r5, #0
_0806839E:
	movs r2, #0
	lsls r1, r0, #2
	adds r3, r0, #1
	adds r0, r1, r0
	lsls r0, r0, #3
	adds r1, r1, r7
	add r0, ip
_080683AC:
	stm r0!, {r6}
	str r5, [r1, #0]
	adds r2, #1
	cmp r2, #9
	bls _080683AC
	adds r0, r3, #0
	cmp r0, r4
	blo _0806839E
_080683BC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080683C4: .4byte gUnk_03006260
_080683C8: .4byte gUnk_03006210
	thumb_func_end sub_08068384
