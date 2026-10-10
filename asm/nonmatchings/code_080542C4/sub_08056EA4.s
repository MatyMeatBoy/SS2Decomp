	thumb_func_start sub_08056EA4
sub_08056EA4: @ 0x08056EA4
	push {r4, lr}
	ldr r4, _08056EC8
	ldr r0, [r4, #0]
	ldr r1, _08056ECC
	adds r0, r0, r1
	bl sub_08000470
	cmp r0, #0
	beq _08056EC0
	ldr r0, [r4, #0]
	ldr r1, _08056ECC
	adds r0, r0, r1
	bl sub_080003A8
_08056EC0:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08056EC8: .4byte gUnk_03005CF4
_08056ECC: .4byte 0x000017E4
	thumb_func_end sub_08056EA4
