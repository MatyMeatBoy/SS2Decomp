	thumb_func_start sub_0801ABE8
sub_0801ABE8: @ 0x0801ABE8
	push {lr}
	ldr r2, _0801AC14
	movs r1, #1
	strh r1, [r2, #0]
	ldr r1, _0801AC18
	strh r0, [r1, #0]
	ldr r1, _0801AC1C
	movs r0, #0
	strh r0, [r1, #0]
	movs r0, #0x64
	bl sub_08000420
	ldr r2, _0801AC20
	ldrh r0, [r2, #0]
	movs r1, #0xc
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strh r0, [r2, #0]
	pop {r0}
	bx r0
_0801AC14: .4byte gUnk_03000026
_0801AC18: .4byte gUnk_03000020
_0801AC1C: .4byte gUnk_03000022
_0801AC20: .4byte gUnk_03000028
	thumb_func_end sub_0801ABE8
