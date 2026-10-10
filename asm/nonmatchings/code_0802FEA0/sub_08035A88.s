	thumb_func_start sub_08035A88
sub_08035A88: @ 0x08035A88
	push {r4, r5, lr}
	adds r5, r0, #0
_08035A8C:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08029174
	movs r4, #0xf0
	b _08035AA2
_08035A98:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08035AAE
_08035AA2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08035A98
_08035AAE:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08029174
	movs r4, #0xf0
	b _08035AC4
_08035ABA:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08035AD0
_08035AC4:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08035ABA
_08035AD0:
	adds r0, r5, #0
	movs r1, #2
	bl sub_08029174
	movs r4, #0xb4
	b _08035AE6
_08035ADC:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08035AF2
_08035AE6:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08035ADC
_08035AF2:
	adds r0, r5, #0
	movs r1, #3
	bl sub_08029174
	movs r4, #0x3c
	b _08035B08
_08035AFE:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08035A8C
_08035B08:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08035AFE
	b _08035A8C
	thumb_func_end sub_08035A88
