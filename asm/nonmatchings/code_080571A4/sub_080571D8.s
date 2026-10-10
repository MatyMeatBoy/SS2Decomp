	thumb_func_start sub_080571D8
sub_080571D8: @ 0x080571D8
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r5, #0
	ldr r3, _0805720C
	ldr r4, [r3, #0]
	lsls r3, r0, #2
	adds r3, r3, r0
	adds r1, r1, r3
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r4, r4, r1
	ldrb r0, [r4, #0]
	cmp r0, r2
	bne _08057202
	movs r5, #1
_08057202:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000
_0805720C: .4byte gUnk_03005CF4
	thumb_func_end sub_080571D8
