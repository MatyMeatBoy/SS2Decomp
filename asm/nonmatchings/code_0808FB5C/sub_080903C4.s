	thumb_func_start sub_080903C4
sub_080903C4: @ 0x080903C4
	push {lr}
	adds r1, r0, #0
	ldr r0, _080903DC
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _080903E0
	adds r0, r1, #0
	bl sub_0802704C
	b _0809042C
	.2byte 0x0000
_080903DC: .4byte gUnk_03005CF4
_080903E0:
	bl sub_08056E90
	cmp r0, #0
	beq _0809042C
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _080903F8
_080903F4:
	bl sub_080003F0
_080903F8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080903F4
	bl sub_0800BB40
	ldr r0, _08090420
	ldr r1, [r0, #0]
	ldr r0, _08090424
	adds r3, r1, r0
	ldr r2, _08090428
	ldr r0, [r1, #0x40]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #1
	b _0809042E
_08090420: .4byte gUnk_03005CF4
_08090424: .4byte 0x0000071C
_08090428: .4byte gUnk_0851810C
_0809042C:
	movs r0, #0
_0809042E:
	pop {r1}
	bx r1
	thumb_func_end sub_080903C4
