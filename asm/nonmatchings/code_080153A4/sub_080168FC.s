	thumb_func_start sub_080168FC
sub_080168FC: @ 0x080168FC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r2, _0801690C
	ldrh r0, [r2, #0]
	movs r1, #1
	b _0801691E
	.2byte 0x0000
_0801690C: .4byte gUnk_03005724
_08016910:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #1
	bhi _08016928
	ldrh r0, [r2, #0]
	asrs r0, r4
_0801691E:
	ands r0, r1
	cmp r0, #0
	bne _08016910
	cmp r4, #1
	bls _08016940
_08016928:
	bl sub_08002204
	cmp r0, #0
	beq _0801693A
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	movs r2, #1
	bl sub_080571A4
_0801693A:
	movs r0, #1
	negs r0, r0
	b _080169BA
_08016940:
	ldr r0, _08016968
	ldr r0, [r0, #0]
	lsls r2, r4, #3
	adds r2, r2, r0
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	str r0, [r2, #0]
	str r1, [r2, #4]
	ldr r0, _0801696C
	ldr r1, [r0, #0]
	lsls r2, r4, #2
	adds r0, r2, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08016970
	str r1, [r0, #0xc]
	adds r5, r2, #0
	adds r6, r4, #0
	adds r6, #0x96
	b _08016978
_08016968: .4byte gUnk_030042E8
_0801696C: .4byte gUnk_030056F0
_08016970: .4byte sub_0801681C
_08016974:
	bl sub_080003F0
_08016978:
	movs r0, #0x80
	lsls r0, r0, #2
	bl sub_08001494
	adds r2, r0, #0
	ldr r0, _080169C0
	ldr r1, [r0, #0]
	adds r0, r5, r4
	lsls r0, r0, #3
	adds r1, r0, r1
	str r2, [r1, #0x20]
	cmp r2, #0
	beq _08016974
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r0, r2, r3
	str r0, [r1, #0x10]
	str r6, [r1, #8]
	movs r0, #0
	str r0, [r1, #0x18]
	str r0, [r1, #0]
	str r0, [r1, #0x24]
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08000274
	ldr r2, _080169C4
	movs r0, #1
	lsls r0, r4
	ldrh r1, [r2, #0]
	orrs r0, r1
	strh r0, [r2, #0]
	movs r0, #0
_080169BA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080169C0: .4byte gUnk_030056F0
_080169C4: .4byte gUnk_03005724
	thumb_func_end sub_080168FC
