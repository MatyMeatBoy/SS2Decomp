	thumb_func_start sub_0809D620
sub_0809D620: @ 0x0809D620
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0809D630
	ldr r4, [r0, #0]
	movs r5, #0
	b _0809D63C
	.2byte 0x0000
_0809D630: .4byte gUnk_030002F4
_0809D634:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #0x28
_0809D63C:
	cmp r5, #7
	bhi _0809D69C
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0809D634
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0809D634
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _0809D69C
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	bl sub_0800CE30
	cmp r0, #1
	bne _0809D688
	ldr r0, _0809D680
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0809D688
	ldr r0, _0809D684
	b _0809D68A
	.2byte 0x0000
_0809D680: .4byte gUnk_030002E8
_0809D684: .4byte sub_0809C4E8
_0809D688:
	ldr r0, _0809D6A4
_0809D68A:
	str r0, [r4, #0xc]
	movs r0, #0
	str r0, [r4, #0x24]
	movs r0, #0x46
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08000274
_0809D69C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_0809D6A4: .4byte sub_0809C1B4
	thumb_func_end sub_0809D620
