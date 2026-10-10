	thumb_func_start sub_08050688
sub_08050688: @ 0x08050688
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080506BC
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_08002164
	cmp r0, #1
	bne _080506C0
	movs r5, #0
	b _080506EE
_080506BC: .4byte gUnk_03003CE0
_080506C0:
	bl sub_080020F4
	cmp r0, #1
	beq _080506E2
	cmp r0, #1
	bgt _080506D2
	cmp r0, #0
	beq _080506DC
	b _080506EE
_080506D2:
	cmp r0, #2
	beq _080506E6
	cmp r0, #3
	beq _080506EC
	b _080506EE
_080506DC:
	movs r5, #0xc
	negs r5, r5
	b _080506EE
_080506E2:
	movs r5, #0xc
	b _080506EE
_080506E6:
	movs r5, #0x24
	negs r5, r5
	b _080506EE
_080506EC:
	movs r5, #0x24
_080506EE:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_08028D98
	movs r0, #0x12
	movs r1, #0xf0
	movs r2, #0xa0
	bl sub_080289C0
	str r0, [sp, #0x18]
	movs r1, #0
	bl sub_0802939C
	ldr r2, _08050730
	movs r0, #1
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	movs r4, #1
	negs r5, r5
	add r0, sp, #0xc
	mov r8, r0
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x1c]
	mov r2, sp
	adds r2, #0x14
	str r2, [sp, #0x20]
	b _0805073E
_08050730: .4byte 0x0000270F
_08050734:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0805074A
_0805073E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08050734
_0805074A:
	bl sub_0800CC98
	cmp r0, #0
	bne _0805078C
	bl sub_0801AB24
	cmp r0, #1
	beq _08050770
	cmp r0, #1
	bgt _08050764
	cmp r0, #0
	beq _0805076A
	b _08050784
_08050764:
	cmp r0, #2
	beq _08050778
	b _08050784
_0805076A:
	bl sub_080576A8
	b _08050784
_08050770:
	movs r0, #6
	bl sub_0801AB50
	b _08050784
_08050778:
	movs r0, #6
	bl sub_0801AB90
	b _08050784
_08050780:
	bl sub_080003F0
_08050784:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08050780
_0805078C:
	movs r1, #0xd9
	ldr r0, _080507A8
	str r1, [r0, #0]
	ldr r0, _080507AC
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080507A4
	movs r0, #0xd9
	bl sub_08006CB4
_080507A4:
	movs r4, #0x14
	b _080507BA
_080507A8: .4byte gUnk_03005CF8
_080507AC: .4byte gUnk_030027D0
_080507B0:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080507C6
_080507BA:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080507B0
_080507C6:
	movs r3, #0x11
	mov sl, r3
	ldr r0, _0805082C
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	lsls r5, r5, #0x10
	ldr r0, _08050830
	mov r9, r0
_080507E2:
	add r0, sp, #8
	adds r1, r7, #0
	asrs r2, r5, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	mov r0, r8
	adds r1, r6, #0
	mov r3, r9
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0xc]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	add r4, sl
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _080507E2
	ldr r0, _08050834
	ldr r0, [r0, #0]
	movs r1, #8
	ldr r0, [r0, #0x38]
	ands r0, r1
	cmp r0, #0
	bne _08050864
	b _0805083C
	.2byte 0x0000
_0805082C: .4byte gUnk_03003170
_08050830: .4byte 0xFFC00000
_08050834: .4byte gUnk_03005CF4
_08050838:
	bl sub_080003F0
_0805083C:
	bl sub_0805F184
	cmp r0, #0
	bne _08050838
	b _0805084A
_08050846:
	bl sub_080003F0
_0805084A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08050846
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0805085C
	b _08050880
	.2byte 0x0000
_0805085C: .4byte 0x00140066
_08050860:
	bl sub_080003F0
_08050864:
	bl sub_0805F184
	cmp r0, #0
	bne _08050860
	b _08050872
_0805086E:
	bl sub_080003F0
_08050872:
	bl sub_0805EF90
	cmp r0, #0
	bne _0805086E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080508A0
_08050880:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r3, r0, #0
	ldr r0, _080508A4
	ldr r2, [r0, #0]
	movs r1, #8
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	adds r4, r3, #0
	b _080508AC
_080508A0: .4byte 0x00140067
_080508A4: .4byte gUnk_03005CF4
_080508A8:
	bl sub_080003F0
_080508AC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080508A8
	movs r0, #0x22
	mov r9, r0
	ldr r0, _08050990
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r4, #0
	mov r8, r4
	movs r7, #0
_080508D0:
	ldr r0, [sp, #0x1c]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x20]
	adds r1, r5, #0
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	add r4, r9
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _080508D0
	ldr r0, _08050994
	ldr r0, [r0, #0]
	ldr r2, _08050998
	adds r1, r0, r2
	movs r2, #0
_08050912:
	ldr r0, [r1, #0]
	ldr r3, [sp, #0x18]
	cmp r0, r3
	beq _08050928
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08050912
	bl sub_080003F0
	movs r1, #0
_08050928:
	cmp r1, #0
	beq _08050930
	movs r0, #4
	strh r0, [r1, #0x36]
_08050930:
	movs r0, #1
	movs r1, #0xf0
	movs r2, #0x90
	movs r3, #0
	bl sub_08028AAC
	movs r1, #0xb
	ldr r0, _0805099C
	str r1, [r0, #0]
	ldr r0, _080509A0
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08050954
	movs r0, #0xb
	bl sub_08006CB4
_08050954:
	ldr r0, _08050994
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2, #4]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080509A4
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08050990: .4byte gUnk_03003170
_08050994: .4byte gUnk_03005CF4
_08050998: .4byte 0x000007A4
_0805099C: .4byte gUnk_03005CF8
_080509A0: .4byte gUnk_030027D0
_080509A4: .4byte gUnk_03003CE0
	thumb_func_end sub_08050688
