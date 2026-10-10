	thumb_func_start sub_0803B69C
sub_0803B69C: @ 0x0803B69C
	push {r4, r5, lr}
	adds r5, r0, #0
_0803B6A0:
	adds r0, r5, #0
	movs r1, #8
	bl sub_0802939C
	adds r0, r5, #0
	movs r1, #0xa
	negs r1, r1
	movs r2, #0
	movs r3, #0x96
	lsls r3, r3, #2
	bl sub_08028D98
	adds r0, r5, #0
	movs r1, #8
	bl sub_08029174
	adds r0, r5, #0
	movs r1, #4
	negs r1, r1
	movs r2, #0
	movs r3, #0xa
	bl sub_08028D98
	adds r0, r5, #0
	movs r1, #9
	bl sub_0802939C
	movs r4, #0x64
	b _0803B6E4
_0803B6DA:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803B6F0
_0803B6E4:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803B6DA
_0803B6F0:
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0802926C
	movs r4, #0x1e
	b _0803B706
_0803B6FC:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803B712
_0803B706:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803B6FC
_0803B712:
	adds r0, r5, #0
	movs r1, #0xe
	movs r2, #0
	movs r3, #0x14
	bl sub_08028D98
	b _0803B6A0
	thumb_func_end sub_0803B69C
