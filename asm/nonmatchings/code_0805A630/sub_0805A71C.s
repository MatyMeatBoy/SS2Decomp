	thumb_func_start sub_0805A71C
sub_0805A71C: @ 0x0805A71C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r1, #0
	ldr r0, _0805A760
	ldr r5, [r0, #0]
	movs r4, #0x80
	lsls r4, r4, #0xb
	movs r3, #0
_0805A730:
	movs r0, #1
	lsls r0, r1
	ands r0, r5
	cmp r0, #0
	beq _0805A768
	ldr r2, _0805A764
	adds r0, r3, r2
	ldr r0, [r0, #0]
	cmp r0, r7
	bne _0805A768
	adds r0, r2, #4
	adds r0, r3, r0
	ldr r0, [r0, #0]
	cmp r0, r6
	bne _0805A768
	adds r0, r2, #0
	adds r0, #8
	adds r0, r3, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0805A768
	lsrs r0, r4, #0x10
	b _0805A778
	.2byte 0x0000
_0805A760: .4byte gUnk_03005CFC
_0805A764: .4byte gUnk_03005D00
_0805A768:
	movs r0, #0x80
	lsls r0, r0, #9
	adds r4, r4, r0
	adds r3, #0xc
	adds r1, #1
	cmp r1, #2
	bls _0805A730
	subs r0, #1
_0805A778:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0805A71C
