	thumb_func_start sub_0801A70C
sub_0801A70C: @ 0x0801A70C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r1, _0801A754
	movs r0, #0
	strh r0, [r1, #0]
	movs r0, #4
	bl sub_08007164
	adds r5, r0, #0
	movs r4, #0
	cmp r4, r5
	bhs _0801A73A
	movs r6, #0x80
	lsls r6, r6, #0xb
	ldr r7, _0801A758
_0801A72A:
	adds r0, r4, #0
	orrs r0, r6
	bl sub_08007290
	stm r7!, {r0}
	adds r4, #1
	cmp r4, r5
	blo _0801A72A
_0801A73A:
	ldr r0, _0801A75C
	ldr r1, _0801A760
	movs r3, #1
	negs r3, r3
	movs r2, #0
	str r2, [sp, #0]
	bl sub_08065158
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0801A754: .4byte gUnk_03005C54
_0801A758: .4byte gUnk_03005CA0
_0801A75C: .4byte gUnk_03005C60
_0801A760: .4byte 0x0005004A
	thumb_func_end sub_0801A70C
