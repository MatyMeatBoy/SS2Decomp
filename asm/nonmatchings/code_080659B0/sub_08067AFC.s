	thumb_func_start sub_08067AFC
sub_08067AFC: @ 0x08067AFC
	push {r4, lr}
	ldr r4, _08067B28
	ldr r0, _08067B2C
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x65
	str r0, [r4, #8]
	ldr r0, _08067B30
	str r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08000274
	movs r4, #0
	b _08067B3C
_08067B28: .4byte gUnk_03006310
_08067B2C: .4byte sub_08066898
_08067B30: .4byte sub_08068670
_08067B34:
	adds r0, r4, #0
	bl sub_08067A68
	adds r4, #1
_08067B3C:
	bl sub_08002164
	cmp r4, r0
	blo _08067B34
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08067AFC
