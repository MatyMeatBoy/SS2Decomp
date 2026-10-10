	thumb_func_start sub_0800CBCC
sub_0800CBCC: @ 0x0800CBCC
	push {r4, lr}
	bl sub_08002164
	ldr r4, _0800CBE8
	ldr r1, [r4, #0]
	cmp r0, r1
	bhi _0800CBE0
	bl sub_08002164
	str r0, [r4, #0]
_0800CBE0:
	ldr r0, [r4, #0]
	pop {r4}
	pop {r1}
	bx r1
_0800CBE8: .4byte gUnk_03003474
	thumb_func_end sub_0800CBCC
