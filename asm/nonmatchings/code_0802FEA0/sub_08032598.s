	thumb_func_start sub_08032598
sub_08032598: @ 0x08032598
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r1, #8
	bl sub_0802939C
	movs r6, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _080325C0
	ldr r0, _080325BC
	ldr r0, [r0, #0]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r0, r1
	b _080325CA
	.2byte 0x0000
_080325BC: .4byte gUnk_03005CF4
_080325C0:
	ldr r0, _080326B0
	ldr r0, [r0, #0]
	movs r2, #0xdc
	lsls r2, r2, #1
	adds r0, r0, r2
_080325CA:
	ldrb r0, [r0, #0]
	asrs r4, r0, #1
	ands r4, r6
	bl sub_08002164
	cmp r0, #1
	beq _080325DA
	b _08032764
_080325DA:
	cmp r4, #0
	beq _080325E0
	b _08032764
_080325E0:
	add r6, sp, #4
	movs r4, #0x6f
_080325E4:
	adds r0, r5, #0
	movs r1, #2
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xb4
	movs r2, #0xb2
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #3
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xa5
	movs r2, #0xa8
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #4
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xa5
	movs r2, #0x99
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #5
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xb4
	movs r2, #0x8f
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #6
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xc8
	movs r2, #0x8f
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #7
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xd7
	movs r2, #0x99
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #0
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xd7
	movs r2, #0xa8
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #1
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xc8
	movs r2, #0xb2
	movs r3, #0x14
	bl sub_08028AAC
	subs r4, #1
	cmp r4, #0
	bge _080325E4
	adds r0, r5, #0
	movs r1, #0
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0x10
	bl sub_0802939C
	bl sub_0800CE30
	cmp r0, #0
	beq _080326B4
	ldr r0, _080326B0
	ldr r1, [r0, #0]
	movs r0, #0xe2
	lsls r0, r0, #1
	adds r1, r1, r0
	b _080326BE
	.2byte 0x0000
_080326B0: .4byte gUnk_03005CF4
_080326B4:
	ldr r0, _080326E4
	ldr r1, [r0, #0]
	movs r2, #0xdc
	lsls r2, r2, #1
	adds r1, r1, r2
_080326BE:
	ldrb r2, [r1, #0]
	movs r0, #2
	orrs r0, r2
	strb r0, [r1, #0]
	movs r1, #6
	movs r2, #0x59
	mov r0, sp
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r1, #0
	adds r2, r6, #0
	movs r3, #0
_080326D6:
	adds r0, r2, r1
	strb r3, [r0, #0]
	adds r1, #1
	cmp r1, #0xb
	bls _080326D6
	b _080326EC
	.2byte 0x0000
_080326E4: .4byte gUnk_03005CF4
_080326E8:
	bl sub_080003F0
_080326EC:
	movs r0, #0xc0
	lsls r0, r0, #8
	movs r1, #0xbc
	lsls r1, r1, #8
	mov r2, sp
	bl sub_08067B9C
	cmp r0, #0
	beq _080326E8
	adds r0, r5, #0
	movs r1, #0xbe
	movs r2, #0xb2
	movs r3, #0x1e
	bl sub_08028AAC
	movs r4, #0x3c
	b _08032718
_0803270E:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08032724
_08032718:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803270E
_08032724:
	adds r0, r5, #0
	movs r1, #0x11
	bl sub_0802939C
	movs r4, #0x64
	b _0803273A
_08032730:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08032746
_0803273A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08032730
_08032746:
	adds r0, r5, #0
	movs r1, #2
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #8
	bl sub_0802939C
	adds r0, r5, #0
	movs r1, #0xb4
	movs r2, #0xb2
	movs r3, #0xa
	bl sub_08028AAC
	b _08032778
_08032764:
	adds r0, r5, #0
	movs r1, #2
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xb4
	movs r2, #0xb2
	movs r3, #0x14
	bl sub_08028AAC
_08032778:
	movs r7, #1
	movs r6, #1
_0803277C:
	adds r0, r5, #0
	movs r1, #3
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xa5
	movs r2, #0xa8
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #4
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xa5
	movs r2, #0x99
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #5
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xb4
	movs r2, #0x8f
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #6
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xc8
	movs r2, #0x8f
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #7
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xd7
	movs r2, #0x99
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #0
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xd7
	movs r2, #0xa8
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #1
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xc8
	movs r2, #0xb2
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #2
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xb4
	movs r2, #0xb2
	movs r3, #0x14
	bl sub_08028AAC
	bl sub_0800CE30
	cmp r0, #0
	beq _0803283C
	ldr r0, _08032838
	ldr r0, [r0, #0]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r4, r0, #1
	ands r4, r6
	b _0803284C
	.2byte 0x0000
_08032838: .4byte gUnk_03005CF4
_0803283C:
	ldr r0, _080328F4
	ldr r0, [r0, #0]
	movs r2, #0xdc
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	asrs r4, r0, #1
	ands r4, r7
_0803284C:
	bl sub_08002164
	cmp r0, #1
	bne _0803277C
	cmp r4, #0
	bne _0803277C
	adds r0, r5, #0
	movs r1, #3
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xa5
	movs r2, #0xa8
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #4
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xa5
	movs r2, #0x99
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #5
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xb4
	movs r2, #0x8f
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #6
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xc8
	movs r2, #0x8f
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #7
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xd7
	movs r2, #0x99
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #0
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xd7
	movs r2, #0xa8
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #1
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xc8
	movs r2, #0xb2
	movs r3, #0x14
	bl sub_08028AAC
	ldr r7, _080328F8
	ldr r0, _080328F4
	ldr r0, [r0, #0]
	ldr r1, _080328FC
	adds r4, r0, r1
	movs r6, #0
	b _08032904
	.2byte 0x0000
_080328F4: .4byte gUnk_03005CF4
_080328F8: .4byte sub_08032598
_080328FC: .4byte 0x00000E34
_08032900:
	adds r6, #1
	adds r4, #0x28
_08032904:
	cmp r6, #0x1d
	bhi _08032942
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08032900
	b _08032918
_08032914:
	bl sub_080003F0
_08032918:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08032914
	movs r0, #0x3c
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08000274
_08032942:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08032598
