	thumb_func_start sub_0801AA8C
sub_0801AA8C: @ 0x0801AA8C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r5, _0801AAD0
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r3, _0801AAD4
	ldr r2, _0801AAD8
	cmp r0, #1
	bne _0801AAA8
	ldrh r1, [r3, #0]
	ldrh r0, [r2, #0]
	cmp r1, r0
	bhi _0801AAC8
_0801AAA8:
	movs r0, #1
	strh r0, [r5, #0]
	strh r4, [r2, #0]
	movs r0, #0
	strh r0, [r3, #0]
	movs r0, #0x64
	bl sub_08000420
	ldr r2, _0801AADC
	ldrh r0, [r2, #0]
	movs r1, #2
	orrs r0, r1
	movs r1, #0x29
	negs r1, r1
	ands r0, r1
	strh r0, [r2, #0]
_0801AAC8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_0801AAD0: .4byte gUnk_03000026
_0801AAD4: .4byte gUnk_03000022
_0801AAD8: .4byte gUnk_03000020
_0801AADC: .4byte gUnk_03000028
	thumb_func_end sub_0801AA8C
