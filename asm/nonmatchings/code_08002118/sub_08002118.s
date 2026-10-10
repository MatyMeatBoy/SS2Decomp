	thumb_func_start sub_08002118
sub_08002118: @ 0x08002118
	adds r3, r0, #0
	ldr r0, _08002130
	ldr r0, [r0, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08002140
	ldr r0, _08002134
	ldr r0, [r0, #0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	b _08002142
_08002130: .4byte gUnk_030027D0
_08002134: .4byte 0x04000128
_08002138:
	ldr r0, _0800213C
	b _08002162
_0800213C: .4byte gUnk_03002710
_08002140:
	movs r0, #0
_08002142:
	movs r1, #0
	ldr r2, _08002154
_08002146:
	cmp r3, r1
	bne _08002158
	cmp r1, r0
	beq _08002138
	adds r0, r2, #0
	b _08002162
	.2byte 0x0000
_08002154: .4byte gUnk_03002770
_08002158:
	adds r2, #0x18
	adds r1, #1
	cmp r1, #3
	bls _08002146
	movs r0, #0
_08002162:
	bx lr
	thumb_func_end sub_08002118
