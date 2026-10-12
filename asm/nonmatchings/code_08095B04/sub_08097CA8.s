	thumb_func_start sub_08097CA8
sub_08097CA8: @ 0x08097CA8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r5, _08097CFC
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _08097CF4
	ldr r4, [r0, #8]
	cmp r4, #0
	bne _08097CF4
	movs r0, #0x80
	lsls r0, r0, #2
	bl sub_08001494
	ldr r2, [r5, #0]
	str r0, [r2, #0x20]
	cmp r0, #0
	beq _08097CF4
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldr r0, _08097D00
	str r0, [r2, #0xc]
	str r4, [r2, #0x24]
	movs r0, #0x4c
	str r0, [r2, #8]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	movs r2, #0
	bl sub_08000274
	ldr r1, _08097D04
	ldr r0, _08097D08
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x18]
	strh r0, [r1, #0]
_08097CF4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08097CFC: .4byte gUnk_03000298
_08097D00: .4byte sub_080967D0
_08097D04: .4byte gUnk_0300029C
_08097D08: .4byte gUnk_030034E0
	thumb_func_end sub_08097CA8
