	thumb_func_start sub_080B8E3C
sub_080B8E3C: @ 0x080B8E3C
	push {lr}
	adds r2, r0, #0
	ldr r0, _080B8E48
	ldr r0, [r0, #0]
	ldr r1, [r0, #4]
	b _080B8E4E
_080B8E48: .4byte gUnk_030076E0
_080B8E4C:
	subs r1, #1
_080B8E4E:
	cmp r1, #0
	beq _080B8E5A
	ldrb r0, [r2, #0]
	adds r2, #1
	cmp r0, #0xff
	beq _080B8E4C
_080B8E5A:
	adds r0, r1, #0
	pop {r1}
	bx r1
	thumb_func_end sub_080B8E3C
