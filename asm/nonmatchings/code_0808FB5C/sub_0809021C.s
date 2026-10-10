	thumb_func_start sub_0809021C
sub_0809021C: @ 0x0809021C
	push {lr}
	adds r1, r0, #0
	ldr r0, _08090234
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _08090238
	adds r0, r1, #0
	bl sub_0802704C
	b _08090288
	.2byte 0x0000
_08090234: .4byte gUnk_03005CF4
_08090238:
	bl sub_08056E90
	cmp r0, #0
	beq _08090288
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _08090250
_0809024C:
	bl sub_080003F0
_08090250:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0809024C
	bl sub_0800BB40
	ldr r0, _0809027C
	ldr r1, [r0, #0]
	ldr r0, _08090280
	adds r3, r1, r0
	ldr r2, _08090284
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
	b _0809028A
_0809027C: .4byte gUnk_03005CF4
_08090280: .4byte 0x0000071C
_08090284: .4byte gUnk_08515FCC
_08090288:
	movs r0, #0
_0809028A:
	pop {r1}
	bx r1
	thumb_func_end sub_0809021C
