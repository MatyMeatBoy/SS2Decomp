	thumb_func_start sub_08059968
sub_08059968: @ 0x08059968
	push {r4, r5, lr}
	adds r4, r0, #0
	lsrs r5, r4, #3
	movs r0, #7
	ands r4, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _0805998C
	ldr r0, _08059984
	ldr r2, [r0, #0]
	ldr r0, _08059988
	b _08059992
	.2byte 0x0000
_08059984: .4byte gUnk_03005CF4
_08059988: .4byte 0x000001C3
_0805998C:
	ldr r0, _080599A8
	ldr r2, [r0, #0]
	ldr r0, _080599AC
_08059992:
	adds r2, r2, r0
	adds r2, r2, r5
	movs r1, #1
	lsls r1, r4
	ldrb r0, [r2, #0]
	bics r0, r1
	strb r0, [r2, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_080599A8: .4byte gUnk_03005CF4
_080599AC: .4byte 0x000001B7
	thumb_func_end sub_08059968
