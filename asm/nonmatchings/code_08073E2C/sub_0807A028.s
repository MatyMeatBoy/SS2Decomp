	thumb_func_start sub_0807A028
sub_0807A028: @ 0x0807A028
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0807A03C
	bl sub_08073EE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
_0807A03C: .4byte 0x7FFFFFFF
	thumb_func_end sub_0807A028
