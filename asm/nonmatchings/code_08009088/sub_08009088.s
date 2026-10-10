	thumb_func_start sub_08009088
sub_08009088: @ 0x08009088
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	ldr r4, _080090AC
	lsrs r1, r1, #0x14
	orrs r0, r1
	lsrs r2, r2, #0x10
	orrs r0, r2
	lsrs r3, r3, #0xc
	orrs r0, r3
	strh r0, [r4, #0x3c]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080090AC: .4byte gUnk_03001250
	thumb_func_end sub_08009088
