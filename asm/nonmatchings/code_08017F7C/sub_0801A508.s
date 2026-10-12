	thumb_func_start sub_0801A508
sub_0801A508: @ 0x0801A508
	push {lr}
	ldr r0, _0801A540
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, _0801A544
	strh r1, [r0, #0]
	ldr r1, _0801A548
	movs r0, #0x12
	strh r0, [r1, #0]
	bl sub_0801A558
	ldr r0, _0801A54C
	ldr r1, _0801A550
	movs r2, #0xe0
	lsls r2, r2, #3
	bl CpuFastSet
	movs r1, #0
	ldr r3, _0801A554
	movs r2, #1
_0801A530:
	adds r0, r1, r3
	strb r2, [r0, #0]
	adds r1, #1
	cmp r1, #0x13
	bls _0801A530
	pop {r0}
	bx r0
	.2byte 0x0000
_0801A540: .4byte gUnk_03005C98
_0801A544: .4byte gUnk_03005C94
_0801A548: .4byte gUnk_03005730
_0801A54C: .4byte gUnk_080B9AD0
_0801A550: .4byte 0x0600C000
_0801A554: .4byte gUnk_03005C40
	thumb_func_end sub_0801A508
