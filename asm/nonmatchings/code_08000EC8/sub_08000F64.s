	thumb_func_start sub_08000F64
sub_08000F64: @ 0x08000F64
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _08000FC0
	ldrh r1, [r2, #0]
	movs r0, #3
	ands r0, r1
	ldr r6, _08000FC4
	ldr r4, _08000FC8
	cmp r0, #0
	beq _08000F86
	movs r3, #3
_08000F7C:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000F7C
_08000F86:
	ldr r1, _08000FCC
	movs r0, #0
	strh r0, [r6, #0]
	strh r0, [r1, #0]
	ldrh r1, [r4, #0]
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r4, #0]
	ldr r1, _08000FD0
	strh r0, [r1, #0]
	ldr r2, _08000FC0
	ldrh r1, [r2, #0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08000FB2
	movs r3, #3
_08000FA8:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000FA8
_08000FB2:
	ldr r1, _08000FCC
	movs r0, #1
	strh r0, [r6, #0]
	strh r0, [r1, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08000FC0: .4byte 0x04000004
_08000FC4: .4byte gUnk_03000000
_08000FC8: .4byte gUnk_03000002
_08000FCC: .4byte 0x04000208
_08000FD0: .4byte 0x04000200
	thumb_func_end sub_08000F64
