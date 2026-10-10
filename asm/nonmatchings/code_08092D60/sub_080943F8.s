	thumb_func_start sub_080943F8
sub_080943F8: @ 0x080943F8
	push {lr}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #0]
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
	ldr r1, _08094484
	ldr r0, [sp, #4]
	ands r0, r1
	ldr r1, _08094488
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #1
	add r1, sp, #4
	bl sub_08000AA8
	movs r0, #4
	movs r1, #0x1c
	bl sub_080921E4
	ldr r1, _0809448C
	add r0, sp, #4
	strh r1, [r0, #0]
	movs r0, #0
	add r1, sp, #4
	bl sub_08000AA8
	movs r0, #3
	movs r1, #0x18
	bl sub_080921E4
	movs r0, #0
	bl sub_0800CBF8
	movs r0, #2
	bl sub_0800CC48
	movs r0, #2
	bl sub_08098010
	bl sub_080944B4
	bl sub_08094530
	bl sub_08000940
	add sp, #8
	pop {r0}
	bx r0
	.2byte 0x0000
_08094484: .4byte 0xFFFF0000
_08094488: .4byte 0x00001C02
_0809448C: .4byte 0x00001801
	thumb_func_end sub_080943F8
