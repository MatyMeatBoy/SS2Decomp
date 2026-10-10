	thumb_func_start sub_08006B70
sub_08006B70: @ 0x08006B70
	push {lr}
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	cmp r0, #1
	beq _08006B90
	cmp r0, #1
	blo _08006B88
	cmp r0, #2
	beq _08006B98
	cmp r0, #3
	beq _08006BA0
	b _08006BA2
_08006B88:
	ldr r3, _08006B8C
	b _08006BA2
_08006B8C: .4byte gUnk_030075C0
_08006B90:
	ldr r3, _08006B94
	b _08006BA2
_08006B94: .4byte gUnk_03007600
_08006B98:
	ldr r3, _08006B9C
	b _08006BA2
_08006B9C: .4byte gUnk_03007640
_08006BA0:
	ldr r3, _08006BB0
_08006BA2:
	adds r0, r3, #0
	movs r1, #0xf
	bl m4aMPlayVolumeControl
	pop {r0}
	bx r0
	.2byte 0x0000
_08006BB0: .4byte gUnk_03007690
	thumb_func_end sub_08006B70
