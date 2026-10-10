	thumb_func_start sub_08001B78
sub_08001B78: @ 0x08001B78
	push {lr}
	bl sub_0801A508
	bl sub_0805F020
	bl sub_0805F134
	bl sub_0801A70C
	bl sub_0801A9BC
	bl sub_0800207C
	bl sub_0806514C
	bl sub_08001AA4
	bl sub_0805F1B0
	bl sub_08092094
	ldr r1, _08001BE0
	movs r0, #0
	str r0, [r1, #0]
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_08006E84
	bl sub_08002658
	bl sub_08002A54
	bl sub_080003F0
	bl sub_080003F0
_08001BD4:
	bl sub_080003F0
	bl sub_08008C1C
	b _08001BD4
	.2byte 0x0000
_08001BE0: .4byte gUnk_03003470
	thumb_func_end sub_08001B78
