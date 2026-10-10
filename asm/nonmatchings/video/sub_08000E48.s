	thumb_func_start sub_08000E48
sub_08000E48: @ 0x08000E48
	push {r4, r5, r6, lr}
	ldr r2, _08000EB0
	ldrh r1, [r2, #0]
	movs r0, #3
	ands r0, r1
	ldr r5, _08000EB4
	ldr r4, _08000EB8
	ldr r6, _08000EBC
	cmp r0, #0
	beq _08000E68
	movs r3, #3
_08000E5E:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000E5E
_08000E68:
	ldr r1, _08000EC0
	movs r0, #0
	strh r0, [r5, #0]
	strh r0, [r1, #0]
	ldrh r0, [r4, #0]
	movs r1, #4
	bics r0, r1
	strh r0, [r4, #0]
	ldr r1, _08000EC4
	strh r0, [r1, #0]
	ldr r2, _08000EB0
	ldrh r1, [r2, #0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08000E94
	movs r3, #3
_08000E8A:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000E8A
_08000E94:
	ldr r1, _08000EC0
	movs r0, #1
	strh r0, [r5, #0]
	strh r0, [r1, #0]
	movs r0, #0x21
	negs r0, r0
	ldrh r1, [r6, #0]
	ands r0, r1
	strh r0, [r6, #0]
	ldr r1, _08000EB0
	strh r0, [r1, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08000EB0: .4byte 0x04000004
_08000EB4: .4byte gUnk_03000000
_08000EB8: .4byte gUnk_03000002
_08000EBC: .4byte gUnk_03000004
_08000EC0: .4byte 0x04000208
_08000EC4: .4byte 0x04000200
	thumb_func_end sub_08000E48
