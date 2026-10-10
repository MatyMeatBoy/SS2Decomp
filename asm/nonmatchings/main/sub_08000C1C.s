	thumb_func_start sub_08000C1C
sub_08000C1C: @ 0x08000C1C
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1, #0]
	ldr r1, _08000C44
	mov r0, sp
	str r0, [r1, #0]
	ldr r2, _08000C48
	str r2, [r1, #4]
	ldr r0, _08000C4C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x14]
	strh r0, [r2, #0x10]
	strh r0, [r2, #0x24]
	strh r0, [r2, #0x20]
	add sp, #4
	bx lr
_08000C44: .4byte 0x040000D4
_08000C48: .4byte gUnk_03001250
_08000C4C: .4byte 0x81000002
	thumb_func_end sub_08000C1C
