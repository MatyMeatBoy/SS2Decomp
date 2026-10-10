	thumb_func_start sub_08058B74
sub_08058B74: @ 0x08058B74
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	ldr r0, _08058BAC
	str r3, [r0, #0]
	ldr r0, _08058BB0
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08058B98
	adds r0, r3, #0
	bl sub_08006CB4
_08058B98:
	subs r0, r5, #1
	lsls r6, r0, #0x10
	orrs r6, r4
	ldr r7, _08058BB4
	ldr r0, _08058BB8
	ldr r0, [r0, #0]
	ldr r1, _08058BBC
	adds r4, r0, r1
	movs r5, #0
	b _08058BC4
_08058BAC: .4byte gUnk_03005CF8
_08058BB0: .4byte gUnk_030027D0
_08058BB4: .4byte sub_0805AA68
_08058BB8: .4byte gUnk_03005CF4
_08058BBC: .4byte 0x00000E34
_08058BC0:
	adds r5, #1
	adds r4, #0x28
_08058BC4:
	cmp r5, #0x1d
	bhi _08058C02
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08058BC0
	b _08058BD8
_08058BD4:
	bl sub_080003F0
_08058BD8:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08058BD4
	movs r0, #0x3c
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08000274
_08058C02:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08058B74
