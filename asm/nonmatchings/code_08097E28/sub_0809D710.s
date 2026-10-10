	thumb_func_start sub_0809D710
sub_0809D710: @ 0x0809D710
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _0809D724
	ldr r4, [r0, #0]
	movs r6, #0
	b _0809D730
_0809D724: .4byte gUnk_030002F8
_0809D728:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r4, #0x28
_0809D730:
	cmp r6, #2
	bhi _0809D76E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0809D728
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _0809D728
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _0809D76E
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0809D778
	str r0, [r4, #0xc]
	str r5, [r4, #0x24]
	movs r0, #0x46
	str r0, [r4, #8]
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	bl sub_08000274
_0809D76E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809D778: .4byte sub_0809C8F4
	thumb_func_end sub_0809D710
