	thumb_func_start sub_08000968
sub_08000968: @ 0x08000968
	push {lr}
	movs r0, #0x18
	bl sub_080010AC
	ldr r2, _0800098C
	ldrb r0, [r2, #0]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r2, #0]
	strh r0, [r1, #0]
	bl sub_08006C14
	pop {r0}
	bx r0
	.2byte 0x0000
_0800098C: .4byte gUnk_0300129C
	thumb_func_end sub_08000968
