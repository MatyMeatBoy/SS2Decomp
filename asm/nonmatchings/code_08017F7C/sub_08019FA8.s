	thumb_func_start sub_08019FA8
sub_08019FA8: @ 0x08019FA8
	movs r2, #0
	ldr r3, _08019FB4
	ldrh r0, [r3, #0]
	movs r1, #1
	b _08019FC6
	.2byte 0x0000
_08019FB4: .4byte gUnk_03005724
_08019FB8:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #1
	bhi _08019FD4
	ldrh r0, [r3, #0]
	asrs r0, r2
_08019FC6:
	ands r0, r1
	cmp r0, #0
	bne _08019FB8
	cmp r2, #1
	bhi _08019FD4
	movs r0, #1
	b _08019FD6
_08019FD4:
	movs r0, #0
_08019FD6:
	bx lr
	thumb_func_end sub_08019FA8
