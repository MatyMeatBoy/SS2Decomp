	thumb_func_start sub_08000D8C
sub_08000D8C: @ 0x08000D8C
	push {r4, r5, r6, lr}
	ldr r2, _08000E30
	ldrh r1, [r2, #0]
	movs r0, #3
	ands r0, r1
	ldr r5, _08000E34
	ldr r4, _08000E38
	ldr r6, _08000E3C
	cmp r0, #0
	beq _08000DAC
	movs r3, #3
_08000DA2:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000DA2
_08000DAC:
	ldr r1, _08000E40
	movs r0, #0
	strh r0, [r5, #0]
	strh r0, [r1, #0]
	ldrh r1, [r4, #0]
	movs r0, #4
	orrs r0, r1
	strh r0, [r4, #0]
	ldr r1, _08000E44
	strh r0, [r1, #0]
	ldr r2, _08000E30
	ldrh r1, [r2, #0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08000DD8
	movs r3, #3
_08000DCE:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000DCE
_08000DD8:
	ldr r1, _08000E40
	movs r0, #1
	strh r0, [r5, #0]
	strh r0, [r1, #0]
	ldr r2, _08000E30
	ldrh r1, [r2, #0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08000DF8
	movs r3, #3
_08000DEE:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000DEE
_08000DF8:
	ldr r1, _08000E40
	movs r0, #0
	strh r0, [r5, #0]
	strh r0, [r1, #0]
	ldrh r1, [r6, #0]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r6, #0]
	ldr r2, _08000E30
	strh r0, [r2, #0]
	ldrh r1, [r2, #0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08000E22
	movs r3, #3
_08000E18:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000E18
_08000E22:
	ldr r1, _08000E40
	movs r0, #1
	strh r0, [r5, #0]
	strh r0, [r1, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08000E30: .4byte 0x04000004
_08000E34: .4byte gUnk_03000000
_08000E38: .4byte gUnk_03000002
_08000E3C: .4byte gUnk_03000004
_08000E40: .4byte 0x04000208
_08000E44: .4byte 0x04000200
	thumb_func_end sub_08000D8C
