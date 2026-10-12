	thumb_func_start sub_08058844
sub_08058844: @ 0x08058844
	push {r4, lr}
	movs r2, #0
	movs r1, #0
	ldr r0, _0805886C
	ldr r0, [r0, #0]
	movs r4, #0xc1
	lsls r4, r4, #4
	adds r3, r0, r4
_08058854:
	adds r0, r3, r1
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0805885E
	adds r2, #1
_0805885E:
	adds r1, #1
	cmp r1, #0x90
	bls _08058854
	cmp r2, #0x91
	beq _08058870
	movs r0, #0
	b _08058872
_0805886C: .4byte gUnk_030034E0
_08058870:
	movs r0, #1
_08058872:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08058844
