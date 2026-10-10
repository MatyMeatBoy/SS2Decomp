	thumb_func_start sub_08058688
sub_08058688: @ 0x08058688
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _080586AC
	ldr r4, [r0, #0]
	str r2, [r0, #0]
	ldr r0, _080586B0
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080586A4
	adds r0, r2, #0
	bl sub_08006CB4
_080586A4:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
_080586AC: .4byte gUnk_03005CF8
_080586B0: .4byte gUnk_030027D0
	thumb_func_end sub_08058688
