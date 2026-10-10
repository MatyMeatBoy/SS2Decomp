	thumb_func_start sub_08027B50
sub_08027B50: @ 0x08027B50
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r4, _08027B6C
	ldr r1, [r4, #0]
	ldrh r0, [r1, #0x10]
	cmp r0, #0
	bne _08027B70
	adds r0, r2, #0
	bl sub_0802704C
	bl sub_0800CD9C
	b _08027C0C
	.2byte 0x0000
_08027B6C: .4byte gUnk_03005CF4
_08027B70:
	ldrh r0, [r1, #4]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08027C0C
	movs r0, #0
	movs r1, #2
	movs r2, #0
	bl sub_08026CD0
	bl sub_0800CDAC
	ldr r1, [r4, #0]
	ldrh r2, [r1, #4]
	ldr r0, _08027BAC
	ands r0, r2
	strh r0, [r1, #4]
	movs r0, #3
	strh r0, [r1, #0x36]
	ldr r0, _08027BB0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #0xf
	beq _08027BB4
	cmp r0, #0x10
	beq _08027BC4
	bl sub_08057BD0
	b _08027BD6
_08027BAC: .4byte 0x0000FFEF
_08027BB0: .4byte gUnk_03003170
_08027BB4:
	movs r0, #0xf
	bl sub_08057BD0
	movs r0, #0x10
	bl sub_08057C6C
	movs r0, #0xf
	b _08027BD2
_08027BC4:
	movs r0, #0x10
	bl sub_08057BD0
	movs r0, #0xf
	bl sub_08057C6C
	movs r0, #0x10
_08027BD2:
	bl sub_08057CAC
_08027BD6:
	bl sub_080020F4
	ldr r5, _08027C14
	movs r4, #0xa6
	lsls r4, r4, #1
	adds r2, r0, #0
	muls r2, r4, r2
	adds r0, r5, #0
	adds r0, #0x30
	adds r2, r2, r0
	ldr r0, [r2, #0]
	movs r1, #3
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #0
	strh r1, [r0, #0x20]
	ldr r0, _08027C18
	ldr r0, [r0, #0]
	strh r1, [r0, #0x10]
	movs r1, #1
	strh r1, [r0, #0x30]
	strh r1, [r0, #0x24]
_08027C0C:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
_08027C14: .4byte gUnk_03003CE0
_08027C18: .4byte gUnk_03005CF4
	thumb_func_end sub_08027B50
