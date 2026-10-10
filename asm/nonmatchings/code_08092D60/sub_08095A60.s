	thumb_func_start sub_08095A60
sub_08095A60: @ 0x08095A60
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
	movs r0, #0x80
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #0
	bl sub_080009C0
	movs r0, #1
	bl sub_0800CBF8
	movs r0, #1
	bl sub_0800CC48
	movs r0, #1
	bl sub_08098010
	ldr r0, _08095AD0
	strh r4, [r0, #0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	str r4, [sp, #0]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
	ldr r0, _08095AD4
	strh r4, [r0, #0]
	bl sub_08000940
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_08095AD0: .4byte gUnk_03001250
_08095AD4: .4byte gUnk_03001F40
	thumb_func_end sub_08095A60
