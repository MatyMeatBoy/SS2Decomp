	thumb_func_start sub_080012AC
sub_080012AC: @ 0x080012AC
	push {lr}
	ldr r0, _080012CC
	ldr r0, [r0, #0]
	bl _call_via_r0
	ldr r0, _080012D0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r1, #0
	strh r2, [r0, #0]
	ldr r1, _080012D4
	ldrh r0, [r1, #0]
	orrs r0, r2
	strh r0, [r1, #0]
	pop {r0}
	bx r0
_080012CC: .4byte gUnk_03002360
_080012D0: .4byte 0x04000202
_080012D4: .4byte gUnk_03007FF8
	thumb_func_end sub_080012AC
