	thumb_func_start sub_0805700C
sub_0805700C: @ 0x0805700C
	push {r4, lr}
	movs r2, #0
	movs r1, #0
	ldr r0, _08057034
	ldr r0, [r0, #0]
	movs r4, #1
	ldr r3, [r0, #4]
_0805701A:
	adds r0, r4, #0
	lsls r0, r1
	ands r0, r3
	cmp r0, #0
	beq _08057026
	adds r2, #1
_08057026:
	adds r1, #1
	cmp r1, #0x16
	bls _0805701A
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
_08057034: .4byte gUnk_03004210
	thumb_func_end sub_0805700C
