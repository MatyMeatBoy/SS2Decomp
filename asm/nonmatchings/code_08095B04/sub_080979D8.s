	thumb_func_start sub_080979D8
sub_080979D8: @ 0x080979D8
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r7, [sp, #0x14]
	subs r1, r2, r4
	lsls r1, r1, #8
	subs r0, r3, r5
	lsls r0, r0, #8
	lsrs r6, r0, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	beq _08097A1C
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	ldr r2, _08097A18
	adds r1, r0, #0
	adds r1, #0x40
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	str r1, [r7, #0]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	b _08097A2A
	.2byte 0x0000
_08097A18: .4byte gUnk_080B9704
_08097A1C:
	str r0, [r7, #0]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r7, #4]
	cmp r3, r5
	bge _08097A2C
	ldr r0, _08097A34
_08097A2A:
	str r0, [r7, #4]
_08097A2C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08097A34: .4byte 0xFFFFFF00
	thumb_func_end sub_080979D8
