	thumb_func_start sub_08026338
sub_08026338: @ 0x08026338
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _0802639C
	ldr r6, _080263A0
	ldr r0, [r4, #0]
	adds r0, r0, r6
	bl sub_08000470
	cmp r0, #0
	beq _08026354
	ldr r0, [r4, #0]
	adds r0, r0, r6
	bl sub_080003A8
_08026354:
	ldr r0, [r4, #0]
	ldr r1, _080263A4
	adds r0, r0, r1
	ldr r1, _080263A8
	str r1, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r2, r0, #0
	ldr r0, [r4, #0]
	ldr r3, _080263AC
	adds r1, r0, r3
	str r2, [r1, #0]
	subs r3, #0x10
	adds r1, r0, r3
	movs r3, #0xff
	lsls r3, r3, #2
	adds r2, r2, r3
	str r2, [r1, #0]
	ldr r1, _080263B0
	adds r2, r0, r1
	movs r1, #0x46
	str r1, [r2, #0]
	movs r3, #0xbf
	lsls r3, r3, #5
	adds r2, r0, r3
	movs r1, #0
	str r1, [r2, #0]
	adds r0, r0, r6
	adds r1, r5, #0
	bl sub_08000274
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0802639C: .4byte gUnk_03005CF4
_080263A0: .4byte 0x000017BC
_080263A4: .4byte 0x000017C8
_080263A8: .4byte sub_08025890
_080263AC: .4byte 0x000017DC
_080263B0: .4byte 0x000017C4
	thumb_func_end sub_08026338
