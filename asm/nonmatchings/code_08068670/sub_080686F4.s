	thumb_func_start sub_080686F4
sub_080686F4: @ 0x080686F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08068720
	ldr r0, [r0, #0]
	cmp r0, #0x31
	bhi _0806871A
	bl sub_0805CFA0
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	bne _08068724
	ldrh r0, [r4, #0x10]
	cmp r0, #0xa
	bne _0806871A
	bl sub_0805D348
	cmp r0, #0
	bne _08068724
_0806871A:
	movs r0, #0
	b _0806874A
	.2byte 0x0000
_08068720: .4byte gUnk_03006338
_08068724:
	ldr r3, _08068750
	ldr r2, _08068754
	ldr r1, [r2, #0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [r3, #0]
	adds r1, r1, r0
	movs r3, #1
	str r3, [r1, #4]
	movs r0, #0x99
	strb r0, [r1, #0]
	ldrh r0, [r4, #0xc]
	str r0, [r1, #8]
	strb r3, [r1, #1]
	ldr r0, [r2, #0]
	adds r0, #1
	str r0, [r2, #0]
	movs r0, #1
_0806874A:
	pop {r4}
	pop {r1}
	bx r1
_08068750: .4byte gUnk_03006300
_08068754: .4byte gUnk_03006338
	thumb_func_end sub_080686F4
