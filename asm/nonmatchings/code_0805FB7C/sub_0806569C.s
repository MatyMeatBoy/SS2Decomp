	thumb_func_start sub_0806569C
sub_0806569C: @ 0x0806569C
	push {lr}
	ldr r0, _080656AC
	bl sub_08000470
	cmp r0, #0
	bne _080656B0
	movs r0, #0
	b _080656B2
_080656AC: .4byte gUnk_03006000
_080656B0:
	movs r0, #1
_080656B2:
	pop {r1}
	bx r1
	thumb_func_end sub_0806569C
