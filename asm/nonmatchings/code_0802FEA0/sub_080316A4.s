	thumb_func_start sub_080316A4
sub_080316A4: @ 0x080316A4
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080316D0
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802949C
	b _080316D8
_080316D0: .4byte gUnk_03003CE0
_080316D4:
	bl sub_080003F0
_080316D8:
	bl sub_0805F184
	cmp r0, #0
	bne _080316D4
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080316FC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08031704
	.2byte 0x0000
_080316FC: .4byte 0x0014018B
_08031700:
	bl sub_080003F0
_08031704:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08031700
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _0803180C
	b _0803171E
_0803171A:
	bl sub_080003F0
_0803171E:
	bl sub_0805F184
	cmp r0, #0
	bne _0803171A
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08031740
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08031748
_08031740: .4byte 0x0014018C
_08031744:
	bl sub_080003F0
_08031748:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08031744
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _080317B8
	b _08031762
_0803175E:
	bl sub_080003F0
_08031762:
	bl sub_0805F184
	cmp r0, #0
	bne _0803175E
	b _08031770
_0803176C:
	bl sub_080003F0
_08031770:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803176C
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08031794
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803179C
	.2byte 0x0000
_08031794: .4byte 0x0014018D
_08031798:
	bl sub_080003F0
_0803179C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803185A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08031798
	bl sub_0805EFBC
	b _0803185A
_080317B4:
	bl sub_080003F0
_080317B8:
	bl sub_0805F184
	cmp r0, #0
	bne _080317B4
	b _080317C6
_080317C2:
	bl sub_080003F0
_080317C6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080317C2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080317E8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080317F0
_080317E8: .4byte 0x0014018E
_080317EC:
	bl sub_080003F0
_080317F0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803185A
	bl sub_0800CDF8
	cmp r0, #0
	beq _080317EC
	bl sub_0805EFBC
	b _0803185A
_08031808:
	bl sub_080003F0
_0803180C:
	bl sub_0805F184
	cmp r0, #0
	bne _08031808
	b _0803181A
_08031816:
	bl sub_080003F0
_0803181A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08031816
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803183C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08031844
_0803183C: .4byte 0x0014018E
_08031840:
	bl sub_080003F0
_08031844:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803185A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08031840
	bl sub_0805EFBC
_0803185A:
	adds r0, r5, #0
	bl sub_08029788
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08031888
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
_08031888: .4byte gUnk_03003CE0
	thumb_func_end sub_080316A4
