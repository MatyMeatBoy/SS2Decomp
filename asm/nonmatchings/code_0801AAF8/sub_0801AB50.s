	thumb_func_start sub_0801AB50
sub_0801AB50: @ 0x0801AB50
	push {lr}
	ldr r2, _0801AB80
	movs r3, #1
	negs r3, r3
	adds r1, r3, #0
	strh r1, [r2, #0]
	ldr r1, _0801AB84
	strh r0, [r1, #0]
	ldr r1, _0801AB88
	movs r0, #0
	strh r0, [r1, #0]
	movs r0, #0x64
	bl sub_08000420
	ldr r2, _0801AB8C
	ldrh r0, [r2, #0]
	movs r1, #4
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strh r0, [r2, #0]
	pop {r0}
	bx r0
_0801AB80: .4byte gUnk_03000026
_0801AB84: .4byte gUnk_03000020
_0801AB88: .4byte gUnk_03000022
_0801AB8C: .4byte gUnk_03000028
	thumb_func_end sub_0801AB50
