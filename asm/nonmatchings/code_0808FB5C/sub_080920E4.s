	thumb_func_start sub_080920E4
sub_080920E4: @ 0x080920E4
	push {r4, r5, lr}
	ldr r4, _08092118
	ldr r0, _0809211C
	str r0, [r4, #0xc]
	movs r5, #0
	str r5, [r4, #0x24]
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _08092120
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x40
	str r0, [r4, #8]
	str r5, [r4, #0]
	str r5, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08000274
	pop {r4, r5}
	pop {r0}
	bx r0
_08092118: .4byte gUnk_030001C0
_0809211C: .4byte sub_080904A4
_08092120: .4byte 0x000007FC
	thumb_func_end sub_080920E4
