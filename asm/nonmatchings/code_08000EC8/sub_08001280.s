	thumb_func_start sub_08001280
sub_08001280: @ 0x08001280
	push {lr}
	ldr r0, _080012A0
	ldr r0, [r0, #0]
	bl sub_080B8F24
	ldr r0, _080012A4
	movs r1, #0x80
	lsls r1, r1, #4
	adds r2, r1, #0
	strh r2, [r0, #0]
	ldr r1, _080012A8
	ldrh r0, [r1, #0]
	orrs r0, r2
	strh r0, [r1, #0]
	pop {r0}
	bx r0
_080012A0: .4byte gUnk_03002354
_080012A4: .4byte 0x04000202
_080012A8: .4byte gUnk_03007FF8
	thumb_func_end sub_08001280
