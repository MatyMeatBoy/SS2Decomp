	thumb_func_start sub_080257D4
sub_080257D4: @ 0x080257D4
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	adds r6, r1, #0
	ldr r7, _08025810
	lsls r4, r6, #2
	adds r0, r4, r6
	lsls r0, r0, #3
	mov r8, r0
	ldr r5, _08025814
	add r5, r8
	ldr r0, [r7, #0]
	adds r0, r0, r5
	bl sub_08000470
	cmp r0, #0
	beq _08025802
	ldr r0, [r7, #0]
	adds r0, r0, r5
	bl sub_080003A8
_08025802:
	ldr r0, [r7, #0]
	ldr r1, _08025818
	adds r0, r0, r1
	add r0, r8
	ldr r1, _0802581C
	str r1, [r0, #0]
	b _08025824
_08025810: .4byte gUnk_03005CF4
_08025814: .4byte 0x000017BC
_08025818: .4byte 0x000017C8
_0802581C: .4byte sub_080245CC
_08025820:
	bl sub_080003F0
_08025824:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	ldr r0, _0802587C
	ldr r3, [r0, #0]
	adds r0, r4, r6
	lsls r2, r0, #3
	ldr r5, _08025880
	adds r0, r3, r5
	adds r0, r0, r2
	str r1, [r0, #0]
	cmp r1, #0
	beq _08025820
	ldr r4, _08025884
	adds r0, r3, r4
	adds r0, r0, r2
	movs r5, #0xff
	lsls r5, r5, #2
	adds r1, r1, r5
	str r1, [r0, #0]
	ldr r1, _08025888
	adds r0, r3, r1
	adds r0, r0, r2
	movs r1, #0x46
	str r1, [r0, #0]
	adds r4, #0x14
	adds r0, r3, r4
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0, #0]
	ldr r5, _0802588C
	adds r0, r2, r5
	adds r0, r3, r0
	mov r1, r9
	bl sub_08000274
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0802587C: .4byte gUnk_03005CF4
_08025880: .4byte 0x000017DC
_08025884: .4byte 0x000017CC
_08025888: .4byte 0x000017C4
_0802588C: .4byte 0x000017BC
	thumb_func_end sub_080257D4
