	thumb_func_start sub_0801AB90
sub_0801AB90: @ 0x0801AB90
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r4, _0801ABD8
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, _0801ABDC
	cmp r0, #0
	bge _0801ABAE
	ldrh r1, [r2, #0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0801ABD2
_0801ABAE:
	movs r1, #1
	negs r1, r1
	adds r0, r1, #0
	strh r0, [r4, #0]
	ldr r0, _0801ABE0
	strh r3, [r0, #0]
	strh r3, [r2, #0]
	movs r0, #0x64
	bl sub_08000420
	ldr r2, _0801ABE4
	ldrh r0, [r2, #0]
	movs r1, #0x10
	orrs r0, r1
	movs r1, #9
	negs r1, r1
	ands r0, r1
	strh r0, [r2, #0]
_0801ABD2:
	pop {r4}
	pop {r0}
	bx r0
_0801ABD8: .4byte gUnk_03000026
_0801ABDC: .4byte gUnk_03000022
_0801ABE0: .4byte gUnk_03000020
_0801ABE4: .4byte gUnk_03000028
	thumb_func_end sub_0801AB90
