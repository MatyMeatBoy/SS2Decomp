	thumb_func_start sub_08000FD4
sub_08000FD4: @ 0x08000FD4
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _08001030
	ldrh r1, [r2, #0]
	movs r0, #3
	ands r0, r1
	ldr r6, _08001034
	ldr r5, _08001038
	cmp r0, #0
	beq _08000FF6
	movs r3, #3
_08000FEC:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000FEC
_08000FF6:
	ldr r1, _0800103C
	movs r0, #0
	strh r0, [r6, #0]
	strh r0, [r1, #0]
	ldrh r0, [r5, #0]
	bics r0, r4
	strh r0, [r5, #0]
	subs r1, #8
	strh r0, [r1, #0]
	ldr r2, _08001030
	ldrh r1, [r2, #0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08001020
	movs r3, #3
_08001016:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08001016
_08001020:
	ldr r1, _0800103C
	movs r0, #1
	strh r0, [r6, #0]
	strh r0, [r1, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08001030: .4byte 0x04000004
_08001034: .4byte gUnk_03000000
_08001038: .4byte gUnk_03000002
_0800103C: .4byte 0x04000208
	thumb_func_end sub_08000FD4
