	thumb_func_start sub_08057644
sub_08057644: @ 0x08057644
	push {lr}
	bl sub_0800CC98
	cmp r0, #0
	bne _08057688
	bl sub_0801AB24
	cmp r0, #1
	beq _0805766C
	cmp r0, #1
	bgt _08057660
	cmp r0, #0
	beq _08057666
	b _08057680
_08057660:
	cmp r0, #2
	beq _08057674
	b _08057680
_08057666:
	bl sub_080576A8
	b _08057680
_0805766C:
	movs r0, #6
	bl sub_0801AB50
	b _08057680
_08057674:
	movs r0, #6
	bl sub_0801AB90
	b _08057680
_0805767C:
	bl sub_080003F0
_08057680:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0805767C
_08057688:
	pop {r0}
	bx r0
	thumb_func_end sub_08057644
