	thumb_func_start sub_08092EB4
sub_08092EB4: @ 0x08092EB4
	push {r4, lr}
	sub sp, #8
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08000A34
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #0
	bl sub_080009F8
	movs r0, #0
	movs r1, #0
	bl sub_08000990
	movs r0, #0x98
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #0
	bl sub_080009C0
	ldr r1, _08092F48
	ldr r0, [sp, #4]
	ands r0, r1
	ldr r1, _08092F4C
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl sub_08000AA8
	movs r0, #0xa
	movs r1, #0x18
	bl sub_080921E4
	ldr r1, _08092F50
	add r0, sp, #4
	strh r1, [r0, #0]
	movs r0, #1
	add r1, sp, #4
	bl sub_08000AA8
	movs r0, #0xb
	movs r1, #0x1c
	bl sub_080921E4
	ldr r0, _08092F54
	strh r4, [r0, #2]
	strh r4, [r0, #0]
	strh r4, [r0, #6]
	strh r4, [r0, #4]
	movs r0, #1
	bl sub_0800CBF8
	movs r0, #1
	bl sub_0800CC48
	movs r0, #1
	bl sub_08098010
	bl sub_080933A0
	bl sub_08000940
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08092F48: .4byte 0xFFFF0000
_08092F4C: .4byte 0x00001802
_08092F50: .4byte 0x00001C41
_08092F54: .4byte gUnk_03001250
	thumb_func_end sub_08092EB4
