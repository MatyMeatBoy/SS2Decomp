	thumb_func_start sub_08000940
sub_08000940: @ 0x08000940
	push {lr}
	movs r0, #8
	bl sub_08001040
	ldr r1, _08000964
	ldrb r2, [r1, #0]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1, #0]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r1, #0]
	strh r0, [r2, #0]
	bl sub_08006BF8
	pop {r0}
	bx r0
	.2byte 0x0000
_08000964: .4byte gUnk_0300129C
	thumb_func_end sub_08000940
