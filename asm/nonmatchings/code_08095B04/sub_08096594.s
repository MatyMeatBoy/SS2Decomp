	thumb_func_start sub_08096594
sub_08096594: @ 0x08096594
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	bl sub_08002164
	adds r5, r0, #0
	movs r3, #0
	cmp r3, r5
	bhs _08096632
	ldr r0, _080965C8
	adds r0, r6, r0
	ldrb r0, [r0, #0]
	ldr r7, _080965CC
	movs r6, #1
	ands r6, r0
_080965B2:
	cmp r6, #0
	beq _080965D8
	cmp r3, #1
	beq _080965EA
	cmp r3, #1
	blo _080965EE
	cmp r3, #2
	beq _080965D0
	cmp r3, #3
	beq _080965F8
	b _080965FE
_080965C8: .4byte gUnk_03000290
_080965CC: .4byte gUnk_03003CE0
_080965D0:
	movs r4, #1
	cmp r5, #4
	bne _080965FE
	b _080965FC
_080965D8:
	cmp r3, #1
	beq _080965EE
	cmp r3, #1
	blo _080965EA
	cmp r3, #2
	beq _080965F2
	cmp r3, #3
	beq _080965FC
	b _080965FE
_080965EA:
	movs r4, #0
	b _080965FE
_080965EE:
	subs r4, r5, #1
	b _080965FE
_080965F2:
	movs r4, #2
	cmp r5, #4
	bne _080965FE
_080965F8:
	movs r4, #1
	b _080965FE
_080965FC:
	movs r4, #2
_080965FE:
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r4, r0
	adds r2, r0, r7
	ldr r1, [r2, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809662C
	ldr r0, _0809663C
	ands r1, r0
	cmp r1, #0
	bne _0809662C
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xb
	bne _08096632
_0809662C:
	adds r3, #1
	cmp r3, r5
	blo _080965B2
_08096632:
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_0809663C: .4byte 0x00040002
	thumb_func_end sub_08096594
