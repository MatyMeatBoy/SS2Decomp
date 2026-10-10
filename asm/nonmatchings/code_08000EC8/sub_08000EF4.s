	thumb_func_start sub_08000EF4
sub_08000EF4: @ 0x08000EF4
	push {r4, lr}
	ldr r2, _08000F20
	ldrh r1, [r2, #0]
	movs r0, #3
	ands r0, r1
	ldr r4, _08000F24
	cmp r0, #0
	beq _08000F10
	movs r3, #3
_08000F06:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000F06
_08000F10:
	ldr r1, _08000F28
	movs r0, #0
	strh r0, [r4, #0]
	strh r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08000F20: .4byte 0x04000004
_08000F24: .4byte gUnk_03000000
_08000F28: .4byte 0x04000208
	thumb_func_end sub_08000EF4
