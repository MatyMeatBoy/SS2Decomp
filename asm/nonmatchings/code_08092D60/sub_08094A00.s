	thumb_func_start sub_08094A00
sub_08094A00: @ 0x08094A00
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
	ldr r1, _08094AA8
	ldr r0, [sp, #8]
	ands r0, r1
	ldr r1, _08094AAC
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #0
	add r1, sp, #8
	bl sub_08000AA8
	movs r0, #8
	movs r1, #0x18
	bl sub_080921E4
	ldr r1, _08094AB0
	add r0, sp, #8
	strh r1, [r0, #0]
	movs r0, #1
	add r1, sp, #8
	bl sub_08000AA8
	movs r0, #9
	movs r1, #0x1c
	bl sub_080921E4
	ldr r0, _08094AB4
	strh r4, [r0, #2]
	strh r4, [r0, #0]
	strh r4, [r0, #6]
	strh r4, [r0, #4]
	str r4, [sp, #0]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_0800903C
	movs r0, #2
	bl sub_0800CBF8
	movs r0, #2
	bl sub_0800CC48
	movs r0, #2
	bl sub_08098010
	bl sub_08094E84
	bl sub_08094EE4
	bl sub_08000940
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08094AA8: .4byte 0xFFFF0000
_08094AAC: .4byte 0x00001801
_08094AB0: .4byte 0x00001C02
_08094AB4: .4byte gUnk_03001250
	thumb_func_end sub_08094A00
