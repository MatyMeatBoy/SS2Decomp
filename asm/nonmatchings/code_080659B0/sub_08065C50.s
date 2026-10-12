	thumb_func_start sub_08065C50
sub_08065C50: @ 0x08065C50
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08065C68
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08065C96
	movs r0, #0x3c
	str r0, [r4, #8]
	b _08065C70
	.2byte 0x0000
_08065C68: .4byte gUnk_03002840
_08065C6C:
	bl sub_080003F0
_08065C70:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _08065C6C
	ldr r0, _08065C9C
	ldr r1, _08065CA0
	str r1, [r0, #0xc]
	ldr r1, [r0, #0x20]
	ldr r2, _08065CA4
	adds r1, r1, r2
	str r1, [r0, #0x10]
	movs r1, #0
	str r1, [r0, #0x24]
	adds r1, r5, #0
	bl sub_08000274
_08065C96:
	pop {r4, r5}
	pop {r0}
	bx r0
_08065C9C: .4byte gUnk_03002840
_08065CA0: .4byte sub_08064E14
_08065CA4: .4byte 0x00000BFC
	thumb_func_end sub_08065C50
