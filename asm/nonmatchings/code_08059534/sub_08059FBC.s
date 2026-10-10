	thumb_func_start sub_08059FBC
sub_08059FBC: @ 0x08059FBC
	push {lr}
	bl sub_0800CC98
	cmp r0, #0
	bne _0805A000
	bl sub_0801AB24
	cmp r0, #1
	beq _08059FE4
	cmp r0, #1
	bgt _08059FD8
	cmp r0, #0
	beq _08059FDE
	b _08059FF8
_08059FD8:
	cmp r0, #2
	beq _08059FEC
	b _08059FF8
_08059FDE:
	bl sub_080576A8
	b _08059FF8
_08059FE4:
	movs r0, #6
	bl sub_0801AB50
	b _08059FF8
_08059FEC:
	movs r0, #6
	bl sub_0801AB90
	b _08059FF8
_08059FF4:
	bl sub_080003F0
_08059FF8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08059FF4
_0805A000:
	pop {r0}
	bx r0
	thumb_func_end sub_08059FBC
