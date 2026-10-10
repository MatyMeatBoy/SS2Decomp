	thumb_func_start sub_080A803C
sub_080A803C: @ 0x080A803C
	push {r4, lr}
	ldr r4, _080A8088
	ldr r0, [r4, #0]
	bl sub_08000470
	cmp r0, #0
	bne _080A8052
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _080A8080
_080A8052:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	ldr r1, [r4, #0]
	str r0, [r1, #0x20]
	cmp r0, #0
	beq _080A8080
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, _080A808C
	str r0, [r1, #0xc]
	movs r0, #0
	str r0, [r1, #0x24]
	movs r0, #0x40
	str r0, [r1, #8]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_08000274
_080A8080:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A8088: .4byte gUnk_03000410
_080A808C: .4byte sub_080A705C
	thumb_func_end sub_080A803C
