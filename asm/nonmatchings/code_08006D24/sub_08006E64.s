	thumb_func_start sub_08006E64
sub_08006E64: @ 0x08006E64
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08006E7C
	str r0, [r1, #0]
	cmp r0, #0
	bne _08006E78
	ldr r0, _08006E80
	bl m4aMPlayStop
_08006E78:
	pop {r0}
	bx r0
_08006E7C: .4byte gUnk_030028AC
_08006E80: .4byte gUnk_030075C0
	thumb_func_end sub_08006E64
