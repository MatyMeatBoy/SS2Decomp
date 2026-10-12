	thumb_func_start sub_0809AE88
sub_0809AE88: @ 0x0809AE88
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _0809AE98
	ldr r4, [r0, #0]
	movs r6, #0
	b _0809AEA0
	.2byte 0x0000
_0809AE98: .4byte gUnk_030002E4
_0809AE9C:
	adds r6, #1
	adds r4, #0x28
_0809AEA0:
	cmp r6, #4
	bhi _0809AEDC
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0809AE9C
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _0809AE9C
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _0809AEDC
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0809AEE4
	str r0, [r4, #0xc]
	str r5, [r4, #0x24]
	movs r0, #0x46
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08000274
_0809AEDC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0809AEE4: .4byte sub_0809A834
	thumb_func_end sub_0809AE88
