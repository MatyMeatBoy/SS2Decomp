	thumb_func_start sub_08058A80
sub_08058A80: @ 0x08058A80
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	movs r4, #0
	movs r7, #1
	ldr r6, _08058AA4
_08058A8A:
	bl sub_0800CE30
	cmp r0, #0
	beq _08058AA8
	adds r0, r7, #0
	lsls r0, r4
	ldr r1, [r6, #0]
	adds r1, #0x88
	ldr r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq _08058ABA
	b _08058AC0
_08058AA4: .4byte gUnk_03005CF4
_08058AA8:
	adds r0, r7, #0
	lsls r0, r4
	ldr r1, [r6, #0]
	adds r1, #0x84
	ldr r1, [r1, #0]
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _08058ABC
_08058ABA:
	movs r1, #0
_08058ABC:
	cmp r1, #0
	beq _08058AC2
_08058AC0:
	adds r5, #1
_08058AC2:
	adds r4, #1
	cmp r4, #0xa
	bls _08058A8A
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08058A80
