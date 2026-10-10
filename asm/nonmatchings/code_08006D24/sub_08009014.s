	thumb_func_start sub_08009014
sub_08009014: @ 0x08009014
	push {r4, lr}
	ldr r0, _08009030
	ldr r4, [r0, #0]
	cmp r4, #0
	beq _0800902A
_0800901E:
	adds r0, r4, #0
	bl sub_08007AA4
	ldr r4, [r4, #4]
	cmp r4, #0
	bne _0800901E
_0800902A:
	pop {r4}
	pop {r0}
	bx r0
_08009030: .4byte gUnk_030028C0
	thumb_func_end sub_08009014
