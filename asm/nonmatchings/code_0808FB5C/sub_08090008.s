	thumb_func_start sub_08090008
sub_08090008: @ 0x08090008
	push {lr}
	adds r1, r0, #0
	ldr r0, _08090020
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _08090024
	adds r0, r1, #0
	bl sub_0802704C
	b _08090074
	.2byte 0x0000
_08090020: .4byte gUnk_03005CF4
_08090024:
	bl sub_08056E90
	cmp r0, #0
	beq _08090074
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0809003C
_08090038:
	bl sub_080003F0
_0809003C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08090038
	bl sub_0800BB40
	ldr r0, _08090068
	ldr r1, [r0, #0]
	ldr r0, _0809006C
	adds r3, r1, r0
	ldr r2, _08090070
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
	b _08090076
_08090068: .4byte gUnk_03005CF4
_0809006C: .4byte 0x0000071C
_08090070: .4byte gUnk_08512670
_08090074:
	movs r0, #0
_08090076:
	pop {r1}
	bx r1
	thumb_func_end sub_08090008
