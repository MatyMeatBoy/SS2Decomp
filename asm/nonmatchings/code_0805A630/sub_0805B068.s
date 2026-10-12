	thumb_func_start sub_0805B068
sub_0805B068: @ 0x0805B068
	push {r4, r5, lr}
	movs r5, #0
	ldrh r1, [r0, #0]
	cmp r1, #3
	beq _0805B096
	cmp r1, #3
	bgt _0805B07C
	cmp r1, #2
	beq _0805B086
	b _0805B0B6
_0805B07C:
	cmp r1, #4
	beq _0805B09E
	cmp r1, #5
	beq _0805B0A6
	b _0805B0B6
_0805B086:
	ldrh r0, [r0, #2]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r0, #0xa0
	b _0805B0B4
_0805B096:
	ldrh r0, [r0, #2]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	b _0805B0AC
_0805B09E:
	ldrh r0, [r0, #2]
	movs r1, #0xd0
	lsls r1, r1, #0xc
	b _0805B0AC
_0805B0A6:
	ldrh r0, [r0, #2]
	movs r1, #0xe0
	lsls r1, r1, #0xc
_0805B0AC:
	orrs r0, r1
	bl sub_08007290
	adds r0, #0x9c
_0805B0B4:
	ldr r5, [r0, #0]
_0805B0B6:
	movs r4, #0xa
	b _0805B0BC
_0805B0BA:
	subs r4, #1
_0805B0BC:
	adds r0, r4, #0
	bl sub_08057C34
	cmp r0, #0
	bne _0805B0CA
	cmp r4, #1
	bhi _0805B0BA
_0805B0CA:
	bl sub_0800CE30
	cmp r0, #0
	beq _0805B0D6
	lsrs r0, r5, #1
	b _0805B0E8
_0805B0D6:
	cmp r4, #5
	bls _0805B0DC
	movs r4, #5
_0805B0DC:
	adds r0, r5, #0
	muls r0, r4, r0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
_0805B0E8:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_0805B068
