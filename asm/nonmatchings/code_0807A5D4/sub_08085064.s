	thumb_func_start sub_08085064
sub_08085064: @ 0x08085064
	push {lr}
	adds r3, r0, #0
	cmp r3, #9
	bhi _08085098
	movs r1, #0
	cmp r1, r3
	bhs _08085082
	ldr r0, _08085090
	ldr r2, _08085094
	adds r0, #0xe8
_08085078:
	strh r2, [r0, #0]
	adds r0, #2
	adds r1, #1
	cmp r1, r3
	blo _08085078
_08085082:
	cmp r3, #0
	beq _080850B4
	movs r0, #3
	movs r1, #1
	bl sub_0801A664
	b _080850B4
_08085090: .4byte gUnk_03005740
_08085094: .4byte 0x0000E16B
_08085098:
	ldr r1, _080850B8
	adds r2, r1, #0
	adds r2, #0xe8
	ldr r0, _080850BC
	strh r0, [r2, #0]
	adds r1, #0xea
	subs r0, #1
	strh r0, [r1, #0]
	movs r0, #0x18
	movs r1, #3
	adds r2, r3, #0
	movs r3, #0
	bl sub_0805FB7C
_080850B4:
	pop {r0}
	bx r0
_080850B8: .4byte gUnk_03005740
_080850BC: .4byte 0x0000E16B
	thumb_func_end sub_08085064
