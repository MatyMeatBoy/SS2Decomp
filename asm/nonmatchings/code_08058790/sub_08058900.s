	thumb_func_start sub_08058900
sub_08058900: @ 0x08058900
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800CE30
	cmp r0, #0
	bne _0805891C
	ldr r0, _08058918
	ldr r0, [r0, #0]
	lsls r1, r4, #2
	adds r0, #0xa8
	b _08058924
	.2byte 0x0000
_08058918: .4byte gUnk_03005CF4
_0805891C:
	ldr r0, _08058930
	ldr r0, [r0, #0]
	lsls r1, r4, #2
	adds r0, #0xf8
_08058924:
	adds r0, r0, r1
	ldr r0, [r0, #0]
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000
_08058930: .4byte gUnk_03005CF4
	thumb_func_end sub_08058900
