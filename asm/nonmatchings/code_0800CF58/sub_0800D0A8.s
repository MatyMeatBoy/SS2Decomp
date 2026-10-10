	thumb_func_start sub_0800D0A8
sub_0800D0A8: @ 0x0800D0A8
	push {r4, lr}
	ldr r1, _0800D0B4
	ldr r0, _0800D0B8
	str r0, [r1, #0xc]
	adds r4, r1, #0
	b _0800D0C0
_0800D0B4: .4byte gUnk_03003480
_0800D0B8: .4byte sub_0800BEC0
_0800D0BC:
	bl sub_080003F0
_0800D0C0:
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _0800D0BC
	ldr r0, _0800D0EC
	ldr r1, [r0, #0x20]
	ldr r2, _0800D0F0
	adds r1, r1, r2
	str r1, [r0, #0x10]
	movs r1, #0x64
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0x24]
	bl sub_08000274
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_0800D0EC: .4byte gUnk_03003480
_0800D0F0: .4byte 0x000007FC
	thumb_func_end sub_0800D0A8
