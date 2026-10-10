	thumb_func_start sub_08000B68
sub_08000B68: @ 0x08000B68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	cmp r1, #0
	beq _08000BAA
	cmp r0, #1
	beq _08000B94
	cmp r0, #1
	bgt _08000B80
	cmp r0, #0
	beq _08000B8A
	b _08000BAA
_08000B80:
	cmp r2, #2
	beq _08000B9C
	cmp r2, #3
	beq _08000BA4
	b _08000BAA
_08000B8A:
	ldr r0, _08000B90
	b _08000BA6
	.2byte 0x0000
_08000B90: .4byte 0x04000008
_08000B94:
	ldr r0, _08000B98
	b _08000BA6
_08000B98: .4byte 0x0400000A
_08000B9C:
	ldr r0, _08000BA0
	b _08000BA6
_08000BA0: .4byte 0x0400000C
_08000BA4:
	ldr r0, _08000BAC
_08000BA6:
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
_08000BAA:
	bx lr
_08000BAC: .4byte 0x0400000E
	thumb_func_end sub_08000B68
