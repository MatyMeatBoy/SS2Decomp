	thumb_func_start sub_0809D848
sub_0809D848: @ 0x0809D848
	push {lr}
	bl sub_0800048C
	ldr r1, [r0, #8]
	subs r1, #0x46
	str r1, [r0, #8]
	ldr r2, _0809D870
	ldr r0, _0809D874
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	movs r1, #1
	ldrh r0, [r0, #0]
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	pop {r0}
	bx r0
	.2byte 0x0000
_0809D870: .4byte gUnk_030056FC
_0809D874: .4byte gUnk_03000300
	thumb_func_end sub_0809D848
