	thumb_func_start sub_08097C6C
sub_08097C6C: @ 0x08097C6C
	push {r4, lr}
	ldr r4, _08097C9C
	ldr r2, [r4, #0]
	cmp r2, #0
	beq _08097C96
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08097C8C
	ldr r0, _08097CA0
	ldr r1, [r0, #0]
	ldr r0, _08097CA4
	ldrh r0, [r0, #0]
	strh r0, [r1, #0x18]
	adds r0, r2, #0
	bl sub_080003A8
_08097C8C:
	ldr r0, [r4, #0]
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
_08097C96:
	pop {r4}
	pop {r0}
	bx r0
_08097C9C: .4byte gUnk_03000298
_08097CA0: .4byte gUnk_030034E0
_08097CA4: .4byte gUnk_0300029C
	thumb_func_end sub_08097C6C
