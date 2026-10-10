	thumb_func_start sub_08033198
sub_08033198: @ 0x08033198
	push {r4, lr}
	sub sp, #0x28
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080331D0
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	bl sub_080020F4
	cmp r0, #0
	beq _080331C0
	b _080334A8
_080331C0:
	bl sub_0800CE30
	cmp r0, #0
	beq _080331DC
	ldr r0, _080331D4
	ldr r0, [r0, #0]
	ldr r1, _080331D8
	b _080331E2
_080331D0: .4byte gUnk_03003CE0
_080331D4: .4byte gUnk_03005CF4
_080331D8: .4byte 0x000001C3
_080331DC:
	ldr r0, _080331F4
	ldr r0, [r0, #0]
	ldr r1, _080331F8
_080331E2:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _080331F0
	b _08033454
_080331F0:
	b _08033200
	.2byte 0x0000
_080331F4: .4byte gUnk_03005CF4
_080331F8: .4byte 0x000001B7
_080331FC:
	bl sub_080003F0
_08033200:
	bl sub_0805F184
	cmp r0, #0
	bne _080331FC
	b _0803320E
_0803320A:
	bl sub_080003F0
_0803320E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803320A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033230
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033238
_08033230: .4byte 0x00140224
_08033234:
	bl sub_080003F0
_08033238:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803324E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08033234
	bl sub_0805EFBC
_0803324E:
	bl sub_0805CFA0
	movs r1, #1
	cmp r0, #0
	bge _0803325A
	movs r1, #0
_0803325A:
	cmp r1, #0
	bgt _08033260
	b _080333FE
_08033260:
	bl sub_0800CE30
	cmp r0, #0
	bne _08033332
	ldr r0, _080332B4
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803327A
	movs r0, #0x33
	bl sub_08006D08
_0803327A:
	movs r1, #1
	movs r2, #8
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	add r1, sp, #0xc
	movs r2, #0
_0803328A:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _0803328A
	movs r4, #0
_08033296:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08033296
	bl sub_0800CE30
	cmp r0, #0
	beq _080332C0
	ldr r0, _080332B8
	ldr r0, [r0, #0]
	ldr r1, _080332BC
	b _080332C6
	.2byte 0x0000
_080332B4: .4byte gUnk_030027D0
_080332B8: .4byte gUnk_03005CF4
_080332BC: .4byte 0x000001C3
_080332C0:
	ldr r0, _080332D4
	ldr r0, [r0, #0]
	ldr r1, _080332D8
_080332C6:
	adds r2, r0, r1
	ldrb r1, [r2, #0]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2, #0]
	b _080332E0
	.2byte 0x0000
_080332D4: .4byte gUnk_03005CF4
_080332D8: .4byte 0x000001B7
_080332DC:
	bl sub_080003F0
_080332E0:
	bl sub_0805F184
	cmp r0, #0
	bne _080332DC
	b _080332EE
_080332EA:
	bl sub_080003F0
_080332EE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080332EA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033310
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033318
_08033310: .4byte 0x00140225
_08033314:
	bl sub_080003F0
_08033318:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08033324
	b _080334F6
_08033324:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08033314
	bl sub_0805EFBC
	b _080334F6
_08033332:
	ldr r0, _0803337C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08033344
	movs r0, #0x33
	bl sub_08006D08
_08033344:
	movs r1, #1
	movs r2, #9
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	add r1, sp, #0xc
	movs r2, #0
_08033354:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _08033354
	movs r4, #0
_08033360:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08033360
	bl sub_0800CE30
	cmp r0, #0
	beq _08033388
	ldr r0, _08033380
	ldr r0, [r0, #0]
	ldr r1, _08033384
	b _0803338E
_0803337C: .4byte gUnk_030027D0
_08033380: .4byte gUnk_03005CF4
_08033384: .4byte 0x000001C3
_08033388:
	ldr r0, _0803339C
	ldr r0, [r0, #0]
	ldr r1, _080333A0
_0803338E:
	adds r2, r0, r1
	ldrb r1, [r2, #0]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2, #0]
	b _080333A8
	.2byte 0x0000
_0803339C: .4byte gUnk_03005CF4
_080333A0: .4byte 0x000001B7
_080333A4:
	bl sub_080003F0
_080333A8:
	bl sub_0805F184
	cmp r0, #0
	bne _080333A4
	b _080333B6
_080333B2:
	bl sub_080003F0
_080333B6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080333B2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080333D8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080333E0
_080333D8: .4byte 0x00140226
_080333DC:
	bl sub_080003F0
_080333E0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080333EC
	b _080334F6
_080333EC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080333DC
	bl sub_0805EFBC
	b _080334F6
_080333FA:
	bl sub_080003F0
_080333FE:
	bl sub_0805F184
	cmp r0, #0
	bne _080333FA
	b _0803340C
_08033408:
	bl sub_080003F0
_0803340C:
	bl sub_0805EF90
	cmp r0, #0
	bne _08033408
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033430
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033438
	.2byte 0x0000
_08033430: .4byte 0x00140227
_08033434:
	bl sub_080003F0
_08033438:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080334F6
	bl sub_0800CDF8
	cmp r0, #0
	beq _08033434
	bl sub_0805EFBC
	b _080334F6
_08033450:
	bl sub_080003F0
_08033454:
	bl sub_0805F184
	cmp r0, #0
	bne _08033450
	b _08033462
_0803345E:
	bl sub_080003F0
_08033462:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803345E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033484
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803348C
_08033484: .4byte 0x00140228
_08033488:
	bl sub_080003F0
_0803348C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080334F6
	bl sub_0800CDF8
	cmp r0, #0
	beq _08033488
	bl sub_0805EFBC
	b _080334F6
_080334A4:
	bl sub_080003F0
_080334A8:
	bl sub_0805F184
	cmp r0, #0
	bne _080334A4
	b _080334B6
_080334B2:
	bl sub_080003F0
_080334B6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080334B2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080334D8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080334E0
_080334D8: .4byte 0x00140229
_080334DC:
	bl sub_080003F0
_080334E0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080334F6
	bl sub_0800CDF8
	cmp r0, #0
	beq _080334DC
	bl sub_0805EFBC
_080334F6:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803351C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x28
	pop {r4}
	pop {r0}
	bx r0
_0803351C: .4byte gUnk_03003CE0
	thumb_func_end sub_08033198
