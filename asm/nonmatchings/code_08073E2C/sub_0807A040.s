	thumb_func_start sub_0807A040
sub_0807A040: @ 0x0807A040
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, _0807A060
	str r4, [sp, #0]
	bl sub_08074398
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
_0807A060: .4byte 0x7FFFFFFF
	thumb_func_end sub_0807A040
