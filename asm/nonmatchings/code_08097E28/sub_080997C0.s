	thumb_func_start sub_080997C0
sub_080997C0: @ 0x080997C0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _080997D4
	ldr r4, [r0, #0]
	movs r5, #0
	b _080997DC
	.2byte 0x0000
_080997D4: .4byte gUnk_030002D8
_080997D8:
	adds r5, #1
	adds r4, #0x28
_080997DC:
	cmp r5, #0x3f
	bhi _0809982E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080997D8
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _080997D8
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _0809982E
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	bl sub_0800CE30
	cmp r0, #1
	bne _08099818
	ldr r0, _08099814
	b _0809981A
	.2byte 0x0000
_08099814: .4byte sub_08099468
_08099818:
	ldr r0, _08099834
_0809981A:
	str r0, [r4, #0xc]
	movs r0, #0
	str r0, [r4, #0x24]
	movs r0, #0x46
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_08000274
_0809982E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08099834: .4byte sub_0809919C
	thumb_func_end sub_080997C0
