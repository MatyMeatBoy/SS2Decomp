	thumb_func_start sub_08022630
sub_08022630: @ 0x08022630
	push {r4, lr}
	ldr r4, _08022684
	ldr r0, _08022688
	bl sub_08001494
	str r0, [r4, #0]
	movs r1, #0xbd
	lsls r1, r1, #5
	adds r0, r0, r1
	ldr r1, _0802268C
	str r1, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_08001494
	adds r2, r0, #0
	ldr r0, [r4, #0]
	ldr r3, _08022690
	adds r1, r0, r3
	str r2, [r1, #0]
	subs r3, #0x10
	adds r1, r0, r3
	ldr r3, _08022694
	adds r2, r2, r3
	str r2, [r1, #0]
	ldr r1, _08022698
	adds r2, r0, r1
	movs r1, #0x46
	str r1, [r2, #0]
	ldr r3, _0802269C
	adds r2, r0, r3
	movs r1, #0
	str r1, [r2, #0]
	strh r1, [r0, #4]
	str r1, [r0, #0x54]
	ldr r1, _080226A0
	adds r0, r0, r1
	bl sub_08000274
	pop {r4}
	pop {r0}
	bx r0
_08022684: .4byte gUnk_03005CF4
_08022688: .4byte 0x00001E78
_0802268C: .4byte sub_080226A4
_08022690: .4byte 0x000017B4
_08022694: .4byte 0x000007FC
_08022698: .4byte 0x0000179C
_0802269C: .4byte 0x000017B8
_080226A0: .4byte 0x00001794
	thumb_func_end sub_08022630
