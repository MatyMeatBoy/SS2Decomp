	thumb_func_start sub_0809FA64
sub_0809FA64: @ 0x0809FA64
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _0809FA78
	ldr r4, [r0, #0]
	cmp r4, #0
	beq _0809FAC0
	movs r6, #0
	b _0809FA84
	.2byte 0x0000
_0809FA78: .4byte gUnk_03000324
_0809FA7C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r4, #0x28
_0809FA84:
	cmp r6, #3
	bhi _0809FAC0
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0809FA7C
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _0809FA7C
	movs r0, #0x80
	lsls r0, r0, #2
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _0809FAC0
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0809FAC8
	str r0, [r4, #0xc]
	str r5, [r4, #0x24]
	movs r0, #0x40
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08000274
_0809FAC0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0809FAC8: .4byte sub_0809F018
	thumb_func_end sub_0809FA64
