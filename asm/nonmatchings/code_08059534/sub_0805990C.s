	thumb_func_start sub_0805990C
sub_0805990C: @ 0x0805990C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsrs r5, r4, #3
	movs r0, #7
	ands r4, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _08059930
	ldr r0, _08059928
	ldr r1, [r0, #0]
	ldr r0, _0805992C
	b _08059936
	.2byte 0x0000
_08059928: .4byte gUnk_03005CF4
_0805992C: .4byte 0x000001C3
_08059930:
	ldr r0, _0805994C
	ldr r1, [r0, #0]
	ldr r0, _08059950
_08059936:
	adds r1, r1, r0
	adds r1, r1, r5
	movs r0, #1
	lsls r0, r4
	ldrb r2, [r1, #0]
	orrs r0, r2
	strb r0, [r1, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805994C: .4byte gUnk_03005CF4
_08059950: .4byte 0x000001B7
	thumb_func_end sub_0805990C
