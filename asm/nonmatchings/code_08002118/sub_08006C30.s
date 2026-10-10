	thumb_func_start sub_08006C30
sub_08006C30: @ 0x08006C30
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08006C60
	adds r1, r4, #0
	bl sub_080B73A0
	ldr r0, _08006C64
	adds r1, r4, #0
	bl sub_080B73A0
	ldr r0, _08006C68
	adds r1, r4, #0
	bl sub_080B73A0
	ldr r0, _08006C6C
	adds r1, r4, #0
	bl sub_080B73A0
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08006C60: .4byte gUnk_030075C0
_08006C64: .4byte gUnk_03007600
_08006C68: .4byte gUnk_03007640
_08006C6C: .4byte gUnk_03007690
	thumb_func_end sub_08006C30
