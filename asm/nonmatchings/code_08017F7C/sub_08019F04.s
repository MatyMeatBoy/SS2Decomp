	thumb_func_start sub_08019F04
sub_08019F04: @ 0x08019F04
	push {r4, r5, r6, r7, lr}
	ldr r0, _08019F50
	ldr r0, [r0, #0]
	adds r0, #0x5a
	movs r1, #1
	strh r1, [r0, #0]
	ldr r0, _08019F54
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r7, _08019F58
	movs r4, #1
	movs r6, #4
	ldr r5, _08019F5C
_08019F1E:
	adds r1, r4, #0
	lsls r1, r3
	ldr r0, [r7, #0]
	ands r0, r1
	cmp r0, #0
	beq _08019F3C
	adds r0, r2, #0
	adds r0, #0x7a
	ldrh r1, [r0, #0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08019F3C
	adds r0, r2, r5
	strb r4, [r0, #0]
_08019F3C:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _08019F1E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08019F50: .4byte gUnk_03005CF4
_08019F54: .4byte gUnk_030056F4
_08019F58: .4byte gUnk_030056FC
_08019F5C: .4byte 0x00000201
	thumb_func_end sub_08019F04
