	thumb_func_start sub_0803145C
sub_0803145C: @ 0x0803145C
	push {r4, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0803148C
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _08031494
	ldr r0, _08031490
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _0803149C
_0803148C: .4byte gUnk_03003CE0
_08031490: .4byte gUnk_03005CF4
_08031494:
	ldr r0, _080314AC
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
_0803149C:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r0, r0, #2
	ands r0, r4
	cmp r0, #0
	bne _08031508
	b _080314B4
	.2byte 0x0000
_080314AC: .4byte gUnk_03005CF4
_080314B0:
	bl sub_080003F0
_080314B4:
	bl sub_0805F184
	cmp r0, #0
	bne _080314B0
	b _080314C2
_080314BE:
	bl sub_080003F0
_080314C2:
	bl sub_0805EF90
	cmp r0, #0
	bne _080314BE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080314E4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080314EC
_080314E4: .4byte 0x0014016F
_080314E8:
	bl sub_080003F0
_080314EC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08031556
	bl sub_0800CDF8
	cmp r0, #0
	beq _080314E8
	bl sub_0805EFBC
	b _08031556
_08031504:
	bl sub_080003F0
_08031508:
	bl sub_0805F184
	cmp r0, #0
	bne _08031504
	b _08031516
_08031512:
	bl sub_080003F0
_08031516:
	bl sub_0805EF90
	cmp r0, #0
	bne _08031512
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08031538
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08031540
_08031538: .4byte 0x00140170
_0803153C:
	bl sub_080003F0
_08031540:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08031556
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803153C
	bl sub_0805EFBC
_08031556:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803157C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_0803157C: .4byte gUnk_03003CE0
	thumb_func_end sub_0803145C
