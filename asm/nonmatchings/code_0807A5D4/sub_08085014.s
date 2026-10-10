	thumb_func_start sub_08085014
sub_08085014: @ 0x08085014
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	cmp r5, #7
	bls _08085020
	movs r5, #7
_08085020:
	ldr r1, _0808505C
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r4, #0
	cmp r4, r5
	bhs _0808504A
	ldr r0, _08085060
	adds r1, r6, #5
	lsls r1, r1, #6
	movs r7, #0xe0
	lsls r7, r7, #8
	adds r2, r7, #0
	orrs r3, r2
	adds r0, #0x2c
	adds r1, r1, r0
_08085040:
	strh r3, [r1, #0]
	adds r1, #2
	adds r4, #1
	cmp r4, r5
	blo _08085040
_0808504A:
	cmp r5, #0
	beq _08085056
	adds r0, r6, #5
	movs r1, #1
	bl sub_0801A664
_08085056:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0808505C: .4byte 0x0000016B
_08085060: .4byte gUnk_03005740
	thumb_func_end sub_08085014
