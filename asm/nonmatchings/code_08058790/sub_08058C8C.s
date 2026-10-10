	thumb_func_start sub_08058C8C
sub_08058C8C: @ 0x08058C8C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800CB9C
	cmp r0, #0
	bne _08058CB8
	ldr r0, _08058CB0
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08058CBE
	ldr r0, _08058CB4
	str r4, [r0, #0]
	adds r0, r4, #0
	bl sub_08006CB4
	b _08058CBE
_08058CB0: .4byte gUnk_030027D0
_08058CB4: .4byte gUnk_03005CF8
_08058CB8:
	movs r0, #0
	bl sub_080586B4
_08058CBE:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08058C8C
