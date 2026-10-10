	thumb_func_start sub_08000C50
sub_08000C50: @ 0x08000C50
	push {r4, r5, r6, lr}
	ldr r2, _08000CF4
	ldrh r1, [r2, #0]
	movs r0, #3
	ands r0, r1
	ldr r5, _08000CF8
	ldr r4, _08000CFC
	ldr r6, _08000D00
	cmp r0, #0
	beq _08000C70
	movs r3, #3
_08000C66:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000C66
_08000C70:
	ldr r1, _08000D04
	movs r0, #0
	strh r0, [r5, #0]
	strh r0, [r1, #0]
	ldrh r1, [r4, #0]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4, #0]
	ldr r1, _08000D08
	strh r0, [r1, #0]
	ldr r2, _08000CF4
	ldrh r1, [r2, #0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08000C9C
	movs r3, #3
_08000C92:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000C92
_08000C9C:
	ldr r1, _08000D04
	movs r0, #1
	strh r0, [r5, #0]
	strh r0, [r1, #0]
	ldr r2, _08000CF4
	ldrh r1, [r2, #0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08000CBC
	movs r3, #3
_08000CB2:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000CB2
_08000CBC:
	ldr r1, _08000D04
	movs r0, #0
	strh r0, [r5, #0]
	strh r0, [r1, #0]
	ldrh r1, [r6, #0]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r6, #0]
	ldr r2, _08000CF4
	strh r0, [r2, #0]
	ldrh r1, [r2, #0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08000CE6
	movs r3, #3
_08000CDC:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08000CDC
_08000CE6:
	ldr r1, _08000D04
	movs r0, #1
	strh r0, [r5, #0]
	strh r0, [r1, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08000CF4: .4byte 0x04000004
_08000CF8: .4byte gUnk_03000000
_08000CFC: .4byte gUnk_03000002
_08000D00: .4byte gUnk_03000004
_08000D04: .4byte 0x04000208
_08000D08: .4byte 0x04000200
	thumb_func_end sub_08000C50
