	thumb_func_start sub_08092CB8
sub_08092CB8: @ 0x08092CB8
	push {r4, lr}
	sub sp, #0xc
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
	ldr r1, _08092D54
	ldr r0, [sp, #8]
	ands r0, r1
	ldr r1, _08092D58
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #1
	add r1, sp, #8
	bl sub_08000AA8
	movs r0, #1
	movs r1, #0x18
	bl sub_080921E4
	ldr r1, _08092D5C
	add r0, sp, #8
	strh r1, [r0, #0]
	movs r0, #0
	add r1, sp, #8
	bl sub_08000AA8
	movs r0, #2
	movs r1, #0x1c
	bl sub_080921E4
	str r4, [sp, #0]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
	movs r0, #1
	bl sub_0800CBF8
	movs r0, #1
	bl sub_0800CC48
	movs r0, #1
	bl sub_08098010
	bl sub_08092DC4
	bl sub_08092D60
	bl sub_08000940
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
_08092D54: .4byte 0xFFFF0000
_08092D58: .4byte 0x00001803
_08092D5C: .4byte 0x00001C02
	thumb_func_end sub_08092CB8
