	thumb_func_start sub_080135C4
sub_080135C4: @ 0x080135C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x144
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	bl sub_08002118
	ldr r7, _08013650
	movs r1, #0xa6
	lsls r1, r1, #1
	mov r2, r9
	muls r2, r1, r2
	mov r8, r2
	movs r6, #0xa2
	lsls r6, r6, #1
	adds r1, r7, r6
	add r1, r8
	str r0, [r1, #0]
	mov r0, r9
	bl sub_08002238
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r7, r2
	add r1, r8
	str r0, [r1, #0]
	mov r6, r8
	adds r6, r6, r7
	mov sl, r6
	mov r0, r9
	strh r0, [r6, #0]
	bl sub_080020F4
	cmp r9, r0
	beq _08013658
	movs r0, #0xd
	strh r0, [r6, #0x20]
	ldr r5, _08013654
	mov r1, r9
	lsls r6, r1, #2
	adds r4, r6, r1
	lsls r4, r4, #3
	adds r0, r5, #0
	adds r0, #8
	adds r0, r4, r0
	movs r1, #0x32
	str r1, [r0, #0]
	movs r0, #0xd0
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [sp, #0x140]
	adds r5, #0x20
	adds r4, r4, r5
	str r0, [r4, #0]
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r7, r2
	add r0, r8
	movs r7, #0
	str r7, [r0, #0]
	movs r0, #0xfe
	mov r1, sl
	strb r0, [r1, #2]
	mov r8, r6
	b _080136B6
_08013650: .4byte gUnk_03003CE0
_08013654: .4byte gUnk_030034F0
_08013658:
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r7, r2
	add r0, r8
	ldr r4, _08013780
	ldr r1, [r4, #0]
	str r1, [r0, #0]
	movs r0, #0
	mov r6, sl
	strh r0, [r6, #0x20]
	ldr r3, _08013784
	mov r1, r9
	lsls r5, r1, #2
	adds r2, r5, r1
	lsls r2, r2, #3
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	movs r1, #0x31
	str r1, [r0, #0]
	ldr r6, _08013788
	str r6, [sp, #0x140]
	adds r3, #0x20
	adds r2, r2, r3
	movs r0, #0
	str r0, [r2, #0]
	movs r0, #0xa
	bl sub_08001494
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r1, r7, r2
	add r1, r8
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	adds r1, r7, #2
	add r1, r8
	movs r2, #0xa
	bl sub_080B8578
	ldr r1, [r4, #0]
	ldrh r0, [r1, #0xa]
	mov r6, sl
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0xc]
	strh r0, [r6, #0xe]
	mov r8, r5
_080136B6:
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_08001494
	ldr r5, _0801378C
	movs r1, #0xa6
	lsls r1, r1, #1
	mov r4, r9
	muls r4, r1, r4
	adds r1, r5, #0
	adds r1, #0xac
	adds r1, r4, r1
	str r0, [r1, #0]
	movs r0, #0xa0
	lsls r0, r0, #1
	bl sub_08001494
	adds r5, #0x34
	adds r4, r4, r5
	str r0, [r4, #0]
	movs r6, #0
	movs r5, #0
	add r7, sp, #0x13c
_080136E4:
	ldr r0, [r4, #0]
	adds r0, r5, r0
	ldr r1, _08013790
	strh r1, [r0, #0]
	movs r0, #0
	strh r0, [r7, #0]
	ldr r1, [r4, #0]
	adds r1, r1, r5
	adds r1, #8
	add r0, sp, #0x13c
	ldr r2, _08013794
	bl sub_080B8578
	adds r5, #0x28
	adds r6, #1
	cmp r6, #7
	bls _080136E4
	ldr r1, _0801378C
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r7, r9
	muls r7, r0, r7
	adds r0, r7, #0
	adds r4, r0, r1
	movs r1, #0x9b
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r5, #0
	strh r5, [r0, #0]
	bl sub_080020F4
	cmp r9, r0
	bne _08013740
	adds r1, r4, #0
	adds r1, #0x10
	mov r0, sp
	movs r2, #0x9e
	lsls r2, r2, #1
	bl sub_080B96A4
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_0801E024
_08013740:
	ldr r3, _08013784
	mov r0, r8
	add r0, r9
	lsls r0, r0, #3
	adds r1, r3, #0
	adds r1, #0xc
	adds r1, r0, r1
	ldr r2, _08013798
	str r2, [r1, #0]
	adds r1, r3, #0
	adds r1, #0x10
	adds r1, r0, r1
	ldr r6, [sp, #0x140]
	ldr r7, _0801379C
	adds r2, r6, r7
	str r2, [r1, #0]
	adds r1, r3, #0
	adds r1, #0x24
	adds r1, r0, r1
	str r5, [r1, #0]
	adds r0, r0, r3
	adds r1, r4, #0
	bl sub_08000274
	add sp, #0x144
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08013780: .4byte gUnk_030034E0
_08013784: .4byte gUnk_030034F0
_08013788: .4byte gUnk_03003590
_0801378C: .4byte gUnk_03003CE0
_08013790: .4byte 0x0000FFFF
_08013794: .4byte 0x01000010
_08013798: .4byte sub_0800D368
_0801379C: .4byte 0x0000067C
	thumb_func_end sub_080135C4
