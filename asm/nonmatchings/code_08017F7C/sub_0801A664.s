	thumb_func_start sub_0801A664
sub_0801A664: @ 0x0801A664
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	movs r5, #0
	movs r6, #0
	cmp r5, r7
	bhs _0801A6AE
_0801A672:
	ldr r1, _0801A688
	adds r2, r4, r6
	adds r2, r2, r1
	ldrb r1, [r2, #0]
	cmp r1, #0
	bne _0801A68C
	movs r1, #1
	strb r1, [r2, #0]
	adds r5, #1
	b _0801A6A8
	.2byte 0x0000
_0801A688: .4byte gUnk_03005C40
_0801A68C:
	cmp r5, #0
	beq _0801A6A6
	lsls r0, r4, #6
	ldr r1, _0801A6CC
	adds r3, r0, r1
	ldr r1, _0801A6D0
	adds r0, r0, r1
	lsls r2, r5, #6
	adds r1, r3, #0
	bl sub_08001348
	adds r4, r4, r5
	movs r5, #0
_0801A6A6:
	adds r4, #1
_0801A6A8:
	adds r6, #1
	cmp r6, r7
	blo _0801A672
_0801A6AE:
	cmp r5, #0
	beq _0801A6C4
	lsls r0, r4, #6
	ldr r1, _0801A6CC
	adds r3, r0, r1
	ldr r1, _0801A6D0
	adds r0, r0, r1
	lsls r2, r5, #6
	adds r1, r3, #0
	bl sub_08001348
_0801A6C4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_0801A6CC: .4byte 0x0600E000
_0801A6D0: .4byte gUnk_03005740
	thumb_func_end sub_0801A664
