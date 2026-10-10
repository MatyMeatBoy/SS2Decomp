	thumb_func_start sub_08033520
sub_08033520: @ 0x08033520
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803354C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802949C
	b _08033554
_0803354C: .4byte gUnk_03003CE0
_08033550:
	bl sub_080003F0
_08033554:
	bl sub_0805F184
	cmp r0, #0
	bne _08033550
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033578
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033580
	.2byte 0x0000
_08033578: .4byte 0x001404EB
_0803357C:
	bl sub_080003F0
_08033580:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803357C
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	beq _080335BC
	ldr r0, _080335B0
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080335A6
	movs r0, #0x32
	bl sub_08006D08
_080335A6:
	ldr r0, _080335B4
	movs r1, #0
	bl sub_08068070
	b _080335BC
_080335B0: .4byte gUnk_030027D0
_080335B4: .4byte sub_08045764
_080335B8:
	bl sub_080003F0
_080335BC:
	bl sub_0805F184
	cmp r0, #0
	bne _080335B8
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080335E0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080335E8
	.2byte 0x0000
_080335E0: .4byte 0x001404EC
_080335E4:
	bl sub_080003F0
_080335E8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080335E4
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	beq _08033616
	ldr r0, _08033644
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803360E
	movs r0, #0x32
	bl sub_08006D08
_0803360E:
	ldr r0, _08033648
	movs r1, #1
	bl sub_08068070
_08033616:
	adds r0, r5, #0
	bl sub_08029788
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803364C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08033644: .4byte gUnk_030027D0
_08033648: .4byte sub_08045764
_0803364C: .4byte gUnk_03003CE0
	thumb_func_end sub_08033520
