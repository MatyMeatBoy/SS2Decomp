	thumb_func_start sub_0801E0AC
sub_0801E0AC: @ 0x0801E0AC
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	cmp r0, #7
	bne _0801E0BA
	movs r0, #8
_0801E0BA:
	bx lr
	thumb_func_end sub_0801E0AC
