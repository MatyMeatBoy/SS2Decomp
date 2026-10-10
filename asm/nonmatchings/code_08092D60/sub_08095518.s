	thumb_func_start sub_08095518
sub_08095518: @ 0x08095518
	push {r4, lr}
	sub sp, #8
	lsls r4, r1, #0x18
	movs r0, #0xff
	lsls r0, r0, #0x18
	adds r4, r4, r0
	lsrs r4, r4, #0x18
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
	movs r0, #2
	movs r1, #0
	bl sub_08000990
	cmp r4, #0
	bne _0809555E
	movs r0, #0xa0
	lsls r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #8
	movs r2, #0
	bl sub_080009C0
	b _0809556A
_0809555E:
	movs r0, #0xa0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #0
	bl sub_080009C0
_0809556A:
	ldr r1, _080955C4
	ldr r0, [sp, #4]
	ands r0, r1
	ldr r1, _080955C8
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #2
	add r1, sp, #4
	bl sub_08000AA8
	movs r0, #5
	movs r1, #0x1c
	bl sub_080921E4
	bl sub_080955CC
	movs r0, #0
	movs r1, #0
	bl sub_080955EC
	movs r0, #0xf8
	movs r1, #0xf8
	bl sub_080955F8
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	bl sub_08095604
	movs r0, #1
	bl sub_0800CBF8
	movs r0, #1
	bl sub_0800CC48
	movs r0, #1
	bl sub_08098010
	bl sub_08000940
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080955C4: .4byte 0xFFFF0000
_080955C8: .4byte 0x00007C82
	thumb_func_end sub_08095518
