	thumb_func_start sub_08059A94
sub_08059A94: @ 0x08059A94
	push {r4, lr}
	adds r4, r0, #0
	subs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _08059AB8
	ldr r0, _08059AB4
	ldr r2, [r0, #0]
	adds r2, #0x80
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
	b _08059AC6
_08059AB4: .4byte gUnk_03005CF4
_08059AB8:
	ldr r0, _08059ACC
	ldr r2, [r0, #0]
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_08059AC6:
	pop {r4}
	pop {r0}
	bx r0
_08059ACC: .4byte gUnk_03005CF4
	thumb_func_end sub_08059A94
