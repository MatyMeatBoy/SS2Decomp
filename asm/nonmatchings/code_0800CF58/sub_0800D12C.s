	thumb_func_start sub_0800D12C
sub_0800D12C: @ 0x0800D12C
	ldr r0, _0800D13C
	ldr r1, [r0, #0]
	movs r2, #0x80
	lsls r2, r2, #0xd
	orrs r1, r2
	str r1, [r0, #0]
	bx lr
	.2byte 0x0000
_0800D13C: .4byte gUnk_03003478
	thumb_func_end sub_0800D12C
