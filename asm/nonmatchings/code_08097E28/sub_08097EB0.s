	thumb_func_start sub_08097EB0
sub_08097EB0: @ 0x08097EB0
	push {r4, lr}
	ldr r4, _08097ED0
	strh r3, [r4, #0]
	ldr r3, _08097ED4
	strh r2, [r3, #0]
	ldr r3, _08097ED8
	movs r2, #0
	strh r2, [r3, #0]
	ldr r2, _08097EDC
	str r0, [r2, #0]
	ldr r0, _08097EE0
	strh r1, [r0, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08097ED0: .4byte gUnk_030002B8
_08097ED4: .4byte gUnk_030002B6
_08097ED8: .4byte gUnk_030002BA
_08097EDC: .4byte gUnk_030002B0
_08097EE0: .4byte gUnk_030002B4
	thumb_func_end sub_08097EB0
