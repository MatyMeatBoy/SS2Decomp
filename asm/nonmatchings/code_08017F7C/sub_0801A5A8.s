	thumb_func_start sub_0801A5A8
sub_0801A5A8: @ 0x0801A5A8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsls r2, r5, #6
	lsrs r1, r1, #0x17
	ldr r0, _0801A620
	adds r1, r1, r0
	adds r2, r2, r1
	movs r0, #0xf0
	lsls r0, r0, #0x14
	adds r3, r3, r0
	lsrs r3, r3, #0x18
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq _0801A60C
	lsls r6, r3, #0xc
	adds r7, r1, #0
_0801A5D0:
	ldrb r0, [r4, #0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	adds r0, r0, r1
	orrs r0, r6
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, #1
	cmp r1, #0xa
	bne _0801A602
	adds r0, r5, #0
	movs r1, #1
	bl sub_0801A664
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r0, [r4, #0]
	orrs r0, r6
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, #1
	lsls r0, r5, #6
	adds r2, r0, r7
_0801A602:
	strh r1, [r2, #0]
	adds r2, #2
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne _0801A5D0
_0801A60C:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0801A664
	ldr r1, _0801A624
	movs r0, #1
	strh r0, [r1, #0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0801A620: .4byte gUnk_03005740
_0801A624: .4byte gUnk_03005C94
	thumb_func_end sub_0801A5A8
