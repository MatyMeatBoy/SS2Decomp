	thumb_func_start sub_0805AE34
sub_0805AE34: @ 0x0805AE34
	push {r4, lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _0805AE8C
	ldrh r0, [r1, #0]
	cmp r0, #2
	bne _0805AE8C
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _0805AE8C
	ldrh r0, [r1, #2]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r4, r0, #0
	bl sub_0801DE60
	adds r1, r4, #0
	adds r1, #0xae
	ldrh r1, [r1, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0805AE8C
	adds r1, r4, #0
	adds r1, #0x9b
	ldrb r0, [r1, #0]
	cmp r0, #9
	beq _0805AE88
	adds r4, #0xac
	bl sub_0801D028
	ldrh r1, [r4, #0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bhi _0805AE8C
_0805AE88:
	movs r0, #1
	b _0805AE8E
_0805AE8C:
	movs r0, #0
_0805AE8E:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_0805AE34
