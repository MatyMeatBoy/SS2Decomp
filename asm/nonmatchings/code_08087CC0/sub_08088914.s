	thumb_func_start sub_08088914
sub_08088914: @ 0x08088914
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08001494
	ldr r1, _08088940
	str r0, [r1, #0x20]
	ldr r2, _08088944
	adds r0, r0, r2
	str r0, [r1, #0x10]
	movs r0, #0x64
	str r0, [r1, #8]
	movs r0, #0
	str r0, [r1, #0x24]
	ldr r0, _08088948
	str r0, [r1, #0xc]
	adds r0, r1, #0
	movs r1, #0
	bl sub_08000274
	pop {r0}
	bx r0
_08088940: .4byte gUnk_03006450
_08088944: .4byte 0x00000FFC
_08088948: .4byte sub_08086860
	thumb_func_end sub_08088914
