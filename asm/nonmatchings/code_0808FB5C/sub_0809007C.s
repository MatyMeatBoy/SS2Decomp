	thumb_func_start sub_0809007C
sub_0809007C: @ 0x0809007C
	push {r4, r5, lr}
	adds r1, r0, #0
	ldr r5, _080900BC
	ldr r0, [r5, #0]
	ldrh r4, [r0, #0x10]
	cmp r4, #0
	bne _080900C4
	adds r0, r1, #0
	bl sub_0802704C
	bl sub_0800CDC0
	cmp r0, #0
	beq _08090114
	ldr r0, [r5, #0]
	strh r4, [r0, #0xc]
	ldr r1, _080900C0
	adds r0, r1, #0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	adds r1, #0x90
	ldrh r1, [r1, #0]
	bl sub_08023F98
	movs r4, #0
_080900AE:
	bl sub_080003F0
	adds r4, #1
	cmp r4, #0x77
	bls _080900AE
	b _08090114
	.2byte 0x0000
_080900BC: .4byte gUnk_03005CF4
_080900C0: .4byte gUnk_03003170
_080900C4:
	bl sub_08056E90
	cmp r0, #0
	beq _08090114
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _080900DC
_080900D8:
	bl sub_080003F0
_080900DC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080900D8
	bl sub_0800BB40
	ldr r0, _08090108
	ldr r1, [r0, #0]
	ldr r0, _0809010C
	adds r3, r1, r0
	ldr r2, _08090110
	ldr r0, [r1, #0x40]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #1
	strh r0, [r1, #0x30]
	strh r0, [r1, #0x24]
	b _08090116
_08090108: .4byte gUnk_03005CF4
_0809010C: .4byte 0x0000071C
_08090110: .4byte gUnk_08513680
_08090114:
	movs r0, #0
_08090116:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_0809007C
