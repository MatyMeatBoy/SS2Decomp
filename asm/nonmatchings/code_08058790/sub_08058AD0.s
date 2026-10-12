	thumb_func_start sub_08058AD0
sub_08058AD0: @ 0x08058AD0
	push {r4, lr}
	bl sub_08002164
	adds r3, r0, #0
	movs r2, #0
	cmp r2, r3
	bhs _08058B00
	ldr r0, _08058AF4
	adds r0, #0x64
	movs r4, #0xa6
	lsls r4, r4, #1
_08058AE6:
	ldrh r1, [r0, #0]
	cmp r1, #6
	beq _08058AF0
	cmp r1, #8
	bne _08058AF8
_08058AF0:
	movs r0, #1
	b _08058B02
_08058AF4: .4byte gUnk_03003CE0
_08058AF8:
	adds r0, r0, r4
	adds r2, #1
	cmp r2, r3
	blo _08058AE6
_08058B00:
	movs r0, #0
_08058B02:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08058AD0
