	thumb_func_start sub_08006BC0
sub_08006BC0: @ 0x08006BC0
	push {lr}
	ldr r0, _08006BE0
	movs r1, #0
	str r1, [r0, #0]
	ldr r0, _08006BE4
	str r1, [r0, #0]
	bl sub_08000940
	bl sub_080B733C
	bl sub_08006BF8
_08006BD8:
	bl sub_080003F0
	b _08006BD8
	.2byte 0x0000
_08006BE0: .4byte gUnk_03002870
_08006BE4: .4byte gUnk_030028AC
	thumb_func_end sub_08006BC0
