	thumb_func_start sub_0800663C
sub_0800663C: @ 0x0800663C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_08001494
	adds r2, r0, #0
	ldr r0, _08006658
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _08006664
	ldr r1, _0800665C
	ldr r0, _08006660
	b _08006668
_08006658: .4byte gUnk_03002838
_0800665C: .4byte gUnk_03003480
_08006660: .4byte sub_0800608C
_08006664:
	ldr r1, _08006688
	ldr r0, _0800668C
_08006668:
	str r0, [r1, #0xc]
	ldr r3, _08006690
	adds r0, r2, r3
	str r0, [r1, #0x10]
	str r2, [r1, #0x20]
	movs r0, #0xa
	str r0, [r1, #8]
	movs r0, #0
	str r0, [r1, #0x24]
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08000274
	pop {r4}
	pop {r0}
	bx r0
_08006688: .4byte gUnk_03003480
_0800668C: .4byte sub_08005B88
_08006690: .4byte 0x00001FFC
	thumb_func_end sub_0800663C
