	thumb_func_start sub_08001B14
sub_08001B14: @ 0x08001B14
	push {r4, r5, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08001B28
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _08001B2C
	movs r0, #1
	b _08001B48
_08001B28: .4byte gUnk_03000018
_08001B2C:
	bl sub_08000EF4
	ldr r0, _08001B50
	ldr r2, [r0, #0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08000F2C
	adds r0, r4, #0
_08001B48:
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000
_08001B50: .4byte ProgramFlashSector
	thumb_func_end sub_08001B14
