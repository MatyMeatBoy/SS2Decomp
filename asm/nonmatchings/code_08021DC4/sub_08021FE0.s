	thumb_func_start sub_08021FE0
sub_08021FE0: @ 0x08021FE0
	push {r4, r5, lr}
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r3, [r0, #0]
	ldr r2, [r1, #0]
	subs r3, r3, r2
	ldr r0, [r0, #4]
	ldr r1, [r1, #4]
	subs r0, r0, r1
	asrs r2, r0, #8
	asrs r3, r3, #8
	cmp r3, #0
	bge _08021FFC
	negs r3, r3
_08021FFC:
	ldrh r0, [r4, #0]
	ldrh r1, [r5, #0]
	adds r0, r0, r1
	asrs r0, r0, #1
	cmp r3, r0
	bgt _0802201E
	cmp r2, #0
	bge _0802200E
	negs r2, r2
_0802200E:
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	adds r0, r0, r1
	asrs r0, r0, #1
	cmp r2, r0
	bgt _0802201E
	movs r0, #1
	b _08022020
_0802201E:
	movs r0, #0
_08022020:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_08021FE0
