	thumb_func_start sub_08000AF0
sub_08000AF0: @ 0x08000AF0
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r0, r1, #0
	lsls r3, r3, #5
	ldr r5, _08000B2C
	adds r3, r3, r5
	lsls r2, r2, #3
	ldr r1, _08000B30
	ands r2, r1
	adds r1, r3, #0
	bl CpuFastSet
	ldr r4, _08000B34
	ldrh r0, [r4, #0]
	cmp r0, #0
	bne _08000B24
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r5, #0
	bl sub_08001348
	ldrh r0, [r4, #0]
	adds r0, #1
	strh r0, [r4, #0]
_08000B24:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08000B2C: .4byte gUnk_03001F40
_08000B30: .4byte 0x001FFFFF
_08000B34: .4byte gUnk_03001310
	thumb_func_end sub_08000AF0
