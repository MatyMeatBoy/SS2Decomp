	thumb_func_start sub_08000990
sub_08000990: @ 0x08000990
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r4, _080009BC
	movs r2, #7
	ands r0, r2
	ldrb r3, [r4, #0]
	movs r2, #8
	negs r2, r2
	ands r2, r3
	orrs r2, r0
	strb r2, [r4, #0]
	cmp r1, #0
	beq _080009B6
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r4, #0]
	strh r0, [r1, #0]
_080009B6:
	pop {r4}
	pop {r0}
	bx r0
_080009BC: .4byte gUnk_0300129C
	thumb_func_end sub_08000990
