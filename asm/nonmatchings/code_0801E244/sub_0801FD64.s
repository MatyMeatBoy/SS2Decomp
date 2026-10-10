	thumb_func_start sub_0801FD64
sub_0801FD64: @ 0x0801FD64
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x86
	lsls r0, r0, #1
	adds r7, r4, r0
	adds r6, r4, #0
	adds r6, #0xdc
	ldr r1, [r7, #0]
	ldr r0, [r6, #0]
	cmp r1, r0
	beq _0801FDCA
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0801FDCA
	adds r2, r4, #0
	adds r2, #0x69
	ldrb r1, [r2, #0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _0801FDCA
	cmp r1, #0
	beq _0801FDCA
	adds r0, r4, #0
	adds r0, #0x62
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldrb r0, [r2, #0]
	muls r0, r1, r0
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0801FDB6
	movs r1, #1
_0801FDB6:
	adds r2, r4, #0
	adds r2, #0x8a
	ldrh r0, [r2, #0]
	adds r0, r1, r0
	strh r0, [r2, #0]
	ldr r0, [r6, #0]
	str r0, [r7, #0]
	adds r0, r4, #0
	adds r0, #0xe0
	str r5, [r0, #0]
_0801FDCA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0801FD64
