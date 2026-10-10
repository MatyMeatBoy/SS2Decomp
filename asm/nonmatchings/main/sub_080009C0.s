	thumb_func_start sub_080009C0
sub_080009C0: @ 0x080009C0
	push {r4, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	movs r3, #0xf8
	lsls r3, r3, #0x15
	ands r3, r0
	lsrs r3, r3, #0x10
	ldr r4, _080009F4
	ldrh r0, [r4, #0]
	orrs r3, r0
	movs r0, #0xe0
	lsls r0, r0, #0x18
	ands r0, r1
	lsrs r1, r0, #0x10
	orrs r1, r3
	strh r1, [r4, #0]
	cmp r2, #0
	beq _080009EC
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r1, [r0, #0]
_080009EC:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080009F4: .4byte gUnk_0300129C
	thumb_func_end sub_080009C0
