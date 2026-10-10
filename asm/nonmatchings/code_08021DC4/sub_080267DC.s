	thumb_func_start sub_080267DC
sub_080267DC: @ 0x080267DC
	push {r4, r5, lr}
	ldr r4, _0802683C
	ldr r5, _08026840
	ldr r0, [r4, #0]
	adds r0, r0, r5
	bl sub_08000470
	cmp r0, #0
	beq _080267F6
	ldr r0, [r4, #0]
	adds r0, r0, r5
	bl sub_080003A8
_080267F6:
	ldr r0, [r4, #0]
	ldr r1, _08026844
	adds r0, r0, r1
	ldr r1, _08026848
	str r1, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r2, r0, #0
	ldr r0, [r4, #0]
	ldr r3, _0802684C
	adds r1, r0, r3
	str r2, [r1, #0]
	subs r3, #0x10
	adds r1, r0, r3
	movs r3, #0xff
	lsls r3, r3, #2
	adds r2, r2, r3
	str r2, [r1, #0]
	ldr r1, _08026850
	adds r2, r0, r1
	movs r1, #0x46
	str r1, [r2, #0]
	movs r3, #0xbf
	lsls r3, r3, #5
	adds r2, r0, r3
	ldr r1, _08026854
	str r1, [r2, #0]
	adds r0, r0, r5
	bl sub_08000274
	pop {r4, r5}
	pop {r0}
	bx r0
_0802683C: .4byte gUnk_03005CF4
_08026840: .4byte 0x000017BC
_08026844: .4byte 0x000017C8
_08026848: .4byte sub_080263B4
_0802684C: .4byte 0x000017DC
_08026850: .4byte 0x000017C4
_08026854: .4byte sub_0805A6A0
	thumb_func_end sub_080267DC
