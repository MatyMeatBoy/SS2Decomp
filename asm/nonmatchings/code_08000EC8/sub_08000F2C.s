	thumb_func_start sub_08000F2C
sub_08000F2C: @ 0x08000F2C
	push {r4, lr}
	ldr r2, _08000F58
	ldrh r1, [r2, #0]
	movs r0, #3
	ands r0, r1
	ldr r4, _08000F5C
	cmp r0, #0
	beq _08000F48
	movs r3, #3
_08000F3E:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000F3E
_08000F48:
	ldr r1, _08000F60
	movs r0, #1
	strh r0, [r4, #0]
	strh r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08000F58: .4byte 0x04000004
_08000F5C: .4byte gUnk_03000000
_08000F60: .4byte 0x04000208
	thumb_func_end sub_08000F2C
