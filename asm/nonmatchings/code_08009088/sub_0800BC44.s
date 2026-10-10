	thumb_func_start sub_0800BC44
sub_0800BC44: @ 0x0800BC44
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	lsrs r4, r4, #3
	lsrs r3, r3, #3
	cmp r2, #0
	beq _0800BC60
	ldr r1, _0800BC5C
	ldr r2, [r1, #0x6c]
	adds r1, #0x74
	b _0800BC66
	.2byte 0x0000
_0800BC5C: .4byte gUnk_03003170
_0800BC60:
	ldr r1, _0800BC84
	ldr r2, [r1, #0x68]
	adds r1, #0x70
_0800BC66:
	ldrh r1, [r1, #0]
	muls r1, r3, r1
	adds r1, r4, r1
	lsls r1, r1, #1
	adds r1, r2, r1
	ldr r1, [r1, #0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1e
	cmp r1, #1
	beq _0800BC92
	cmp r1, #1
	bgt _0800BC88
	cmp r1, #0
	beq _0800BC8E
	b _0800BC98
_0800BC84: .4byte gUnk_03003170
_0800BC88:
	cmp r1, #2
	beq _0800BC96
	b _0800BC98
_0800BC8E:
	movs r0, #2
	b _0800BC98
_0800BC92:
	movs r0, #1
	b _0800BC98
_0800BC96:
	movs r0, #3
_0800BC98:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_0800BC44
