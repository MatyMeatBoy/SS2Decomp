	thumb_func_start sub_0800BCA0
sub_0800BCA0: @ 0x0800BCA0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r2, #0
	beq _0800BCBC
	ldr r0, _0800BCB8
	ldr r3, [r0, #0x6c]
	asrs r1, r4, #0xb
	asrs r2, r5, #0xb
	adds r0, #0x74
	b _0800BCC6
	.2byte 0x0000
_0800BCB8: .4byte gUnk_03003170
_0800BCBC:
	ldr r0, _0800BCD8
	ldr r3, [r0, #0x68]
	asrs r1, r4, #0xb
	asrs r2, r5, #0xb
	adds r0, #0x70
_0800BCC6:
	ldrh r0, [r0, #0]
	muls r0, r2, r0
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r0, [r0, #0]
	pop {r4, r5}
	pop {r1}
	bx r1
_0800BCD8: .4byte gUnk_03003170
	thumb_func_end sub_0800BCA0
