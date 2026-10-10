	thumb_func_start sub_08067A68
sub_08067A68: @ 0x08067A68
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, _08067AB4
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r4, r0, #3
	ldr r0, [r6, #0]
	adds r0, r0, r4
	bl sub_08000470
	adds r7, r0, #0
	cmp r7, #0
	bne _08067AAC
	ldr r0, [r6, #0]
	adds r0, r4, r0
	ldr r1, _08067AB8
	str r1, [r0, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	adds r1, r0, #0
	ldr r0, [r6, #0]
	adds r0, r4, r0
	str r1, [r0, #0x20]
	ldr r2, _08067ABC
	adds r1, r1, r2
	str r1, [r0, #0x10]
	movs r1, #0x65
	str r1, [r0, #8]
	str r7, [r0, #0x24]
	adds r1, r5, #0
	bl sub_08000274
_08067AAC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08067AB4: .4byte gUnk_03006258
_08067AB8: .4byte sub_0806690C
_08067ABC: .4byte 0x00000BFC
	thumb_func_end sub_08067A68
