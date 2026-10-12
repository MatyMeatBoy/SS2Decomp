	thumb_func_start sub_08002658
sub_08002658: @ 0x08002658
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r2, r0, #0
	ldr r0, _0800268C
	ldr r1, _08002690
	str r1, [r0, #0xc]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r1, r2, r3
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r2, #0
	str r2, [r0, #0]
	str r2, [r0, #0x18]
	movs r1, #1
	str r1, [r0, #8]
	str r2, [r0, #0x24]
	movs r1, #0
	bl sub_08000274
	pop {r0}
	bx r0
	.2byte 0x0000
_0800268C: .4byte gUnk_030027E0
_08002690: .4byte sub_0800232C
	thumb_func_end sub_08002658
