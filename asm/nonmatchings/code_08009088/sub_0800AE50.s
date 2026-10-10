	thumb_func_start sub_0800AE50
sub_0800AE50: @ 0x0800AE50
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r2, #0
	beq _0800AE90
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	ldr r1, _0800AE8C
	lsls r0, r0, #2
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bl sub_08007290
	adds r2, r0, #0
	adds r2, #0x10
	movs r1, #0x10
	ldrsh r3, [r0, r1]
	movs r1, #2
	ldrsh r0, [r2, r1]
	adds r1, r3, #0
	muls r1, r0, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x10
	adds r2, r2, r0
	b _0800AEC4
	.2byte 0x0000
_0800AE8C: .4byte gUnk_0847846C
_0800AE90:
	ldr r1, _0800AEAC
	adds r0, r1, #0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #8
	bne _0800AEBC
	adds r0, r1, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0x12
	bne _0800AEB0
	movs r3, #0x5a
	b _0800AEC2
	.2byte 0x0000
_0800AEAC: .4byte gUnk_03003170
_0800AEB0:
	cmp r0, #2
	beq _0800AEB8
	cmp r0, #0xc
	bne _0800AEBC
_0800AEB8:
	movs r3, #0x3c
	b _0800AEC2
_0800AEBC:
	adds r0, r1, #0
	adds r0, #0x78
	ldrh r3, [r0, #0]
_0800AEC2:
	ldr r2, [r1, #0x68]
_0800AEC4:
	asrs r0, r4, #0xb
	asrs r1, r5, #0xb
	muls r1, r3, r1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r0, [r2, #0]
	lsls r1, r0, #0x14
	lsrs r1, r1, #0x1c
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	lsls r0, r0, #4
	orrs r0, r1
	ldrb r1, [r2, #0]
	cmp r1, #1
	bne _0800AEE8
	orrs r0, r1
	b _0800AEEC
_0800AEE8:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0800AEEC:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_0800AE50
