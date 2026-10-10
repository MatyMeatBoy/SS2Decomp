	thumb_func_start sub_0800A34C
sub_0800A34C: @ 0x0800A34C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl sub_0800CB9C
	cmp r0, #0
	beq _0800A35E
	b _0800A6D8
_0800A35E:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0800A370
	bl sub_0800D028
	cmp r0, #0
	beq _0800A370
	b _0800A776
_0800A370:
	cmp r5, #0x17
	bls _0800A376
	b _0800A5B0
_0800A376:
	lsls r0, r5, #2
	ldr r1, _0800A380
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800A380: .4byte _0800A384
_0800A384:
	.4byte _0800A3E4
_0800A388: .4byte _0800A5B0
_0800A38C: .4byte _0800A5B0
_0800A390: .4byte _0800A5B0
_0800A394: .4byte _0800A5B0
_0800A398: .4byte _0800A5B0
_0800A39C: .4byte _0800A5B0
_0800A3A0: .4byte _0800A5B0
_0800A3A4: .4byte _0800A5B0
_0800A3A8: .4byte _0800A5B0
_0800A3AC: .4byte _0800A468
_0800A3B0: .4byte _0800A4D0
_0800A3B4: .4byte _0800A4DC
_0800A3B8: .4byte _0800A50E
_0800A3BC: .4byte _0800A504
_0800A3C0: .4byte _0800A516
_0800A3C4: .4byte _0800A516
_0800A3C8: .4byte _0800A538
_0800A3CC: .4byte _0800A54A
_0800A3D0: .4byte _0800A560
_0800A3D4: .4byte _0800A572
_0800A3D8: .4byte _0800A588
_0800A3DC: .4byte _0800A590
_0800A3E0: .4byte _0800A5A0
_0800A3E4:
	movs r0, #0x1a
	bl sub_08057AE8
	cmp r0, #0
	beq _0800A3F0
	b _0800A8CE
_0800A3F0:
	movs r0, #0x34
	bl sub_0805867C
	ldr r0, _0800A40C
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0x14
	bls _0800A402
	b _0800A992
_0800A402:
	lsls r0, r0, #2
	ldr r1, _0800A410
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800A40C: .4byte gUnk_03003170
_0800A410: .4byte _0800A414
_0800A414:
	.4byte _0800A944
_0800A418: .4byte _0800A94C
_0800A41C: .4byte _0800A94C
_0800A420: .4byte _0800A962
_0800A424: .4byte _0800A962
_0800A428: .4byte _0800A94C
_0800A42C: .4byte _0800A94C
_0800A430: .4byte _0800A94C
_0800A434: .4byte _0800A94C
_0800A438: .4byte _0800A94C
_0800A43C: .4byte _0800A94C
_0800A440: .4byte _0800A94C
_0800A444: .4byte _0800A94C
_0800A448: .4byte _0800A94C
_0800A44C: .4byte _0800A954
_0800A450: .4byte _0800A94C
_0800A454: .4byte _0800A94C
_0800A458: .4byte _0800A94C
_0800A45C: .4byte _0800A94C
_0800A460: .4byte _0800A94C
_0800A464: .4byte _0800A962
_0800A468:
	bl sub_0800CDC0
	cmp r0, #0
	beq _0800A4C2
	cmp r4, #0
	beq _0800A4AC
	ldr r0, _0800A488
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0x11
	beq _0800A4C2
	cmp r0, #0x11
	bgt _0800A48C
	cmp r0, #0xe
	beq _0800A4A2
	b _0800A894
_0800A488: .4byte gUnk_03003170
_0800A48C:
	cmp r0, #0x12
	beq _0800A498
	cmp r0, #0x14
	beq _0800A496
	b _0800A894
_0800A496:
	b _0800A812
_0800A498:
	bl sub_08056E50
	cmp r0, #0
	bne _0800A4C2
	b _0800A856
_0800A4A2:
	bl sub_08056E50
	cmp r0, #0
	bne _0800A4C2
	b _0800A894
_0800A4AC:
	ldr r0, _0800A4CC
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0x12
	beq _0800A4B8
	b _0800A992
_0800A4B8:
	bl sub_08056E50
	cmp r0, #0
	bne _0800A4C2
	b _0800A856
_0800A4C2:
	movs r0, #0x1e
	bl sub_08058688
	b _0800A992
	.2byte 0x0000
_0800A4CC: .4byte gUnk_03003170
_0800A4D0:
	ldr r0, _0800A4D8
	bl sub_08058688
	b _0800A992
_0800A4D8: .4byte 0x00000187
_0800A4DC:
	cmp r4, #0
	bne _0800A4E2
	b _0800A992
_0800A4E2:
	ldr r0, _0800A4FC
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0800A4EE
	b _0800A992
_0800A4EE:
	ldr r0, _0800A500
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0800A4F8
	b _0800A980
_0800A4F8:
	b _0800A98C
	.2byte 0x0000
_0800A4FC: .4byte gUnk_03003170
_0800A500: .4byte gUnk_030056FC
_0800A504:
	movs r0, #0xc3
	lsls r0, r0, #1
	bl sub_08058688
	b _0800A992
_0800A50E:
	cmp r4, #0
	beq _0800A514
	b _0800A86A
_0800A514:
	b _0800A98C
_0800A516:
	bl sub_0800CDC0
	cmp r0, #0
	bne _0800A52C
	ldr r0, _0800A528
	bl sub_08058688
	b _0800A992
	.2byte 0x0000
_0800A528: .4byte 0x0000018D
_0800A52C:
	bl sub_08056E50
	cmp r0, #0
	beq _0800A536
	b _0800A886
_0800A536:
	b _0800A894
_0800A538:
	bl sub_0800CDC0
	cmp r0, #0
	bne _0800A52C
	movs r0, #0xc7
	lsls r0, r0, #1
	bl sub_08058688
	b _0800A992
_0800A54A:
	bl sub_0800CDC0
	cmp r0, #0
	bne _0800A52C
	ldr r0, _0800A55C
	bl sub_08058688
	b _0800A992
	.2byte 0x0000
_0800A55C: .4byte 0x0000018F
_0800A560:
	bl sub_0800CDC0
	cmp r0, #0
	bne _0800A52C
	movs r0, #0xc8
	lsls r0, r0, #1
	bl sub_08058688
	b _0800A992
_0800A572:
	bl sub_0800CDC0
	cmp r0, #0
	bne _0800A52C
	ldr r0, _0800A584
	bl sub_08058688
	b _0800A992
	.2byte 0x0000
_0800A584: .4byte 0x00000191
_0800A588:
	movs r0, #3
	bl sub_08058688
	b _0800A992
_0800A590:
	bl sub_0800CDC0
	cmp r0, #0
	bne _0800A52C
	movs r0, #5
	bl sub_08058688
	b _0800A992
_0800A5A0:
	bl sub_0800CDC0
	cmp r0, #0
	bne _0800A52C
	movs r0, #2
	bl sub_08058688
	b _0800A992
_0800A5B0:
	bl sub_0800CDC0
	cmp r0, #0
	bne _0800A60E
	ldr r1, _0800A5CC
	adds r0, r1, #0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #1
	beq _0800A5D0
	cmp r0, #7
	beq _0800A5F6
	b _0800A606
	.2byte 0x0000
_0800A5CC: .4byte gUnk_03003170
_0800A5D0:
	adds r0, r1, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _0800A606
	bl sub_08056E50
	cmp r0, #0
	bne _0800A606
	movs r0, #7
	bl sub_08058524
	cmp r0, #0
	beq _0800A5EE
	b _0800A980
_0800A5EE:
	movs r0, #0xc4
	bl sub_08058688
	b _0800A992
_0800A5F6:
	adds r0, r1, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _0800A606
	cmp r4, #0
	bne _0800A606
	b _0800A992
_0800A606:
	adds r0, r5, #0
	bl sub_08058688
	b _0800A992
_0800A60E:
	cmp r4, #0
	beq _0800A6C4
	cmp r5, #6
	beq _0800A658
	cmp r5, #6
	bhi _0800A620
	cmp r5, #5
	beq _0800A62A
	b _0800A644
_0800A620:
	cmp r5, #8
	beq _0800A678
	cmp r5, #9
	beq _0800A6A0
	b _0800A644
_0800A62A:
	ldr r0, _0800A640
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0xc
	bne _0800A644
	bl sub_08056E50
	cmp r0, #0
	beq _0800A63E
	b _0800A992
_0800A63E:
	b _0800A980
_0800A640: .4byte gUnk_03003170
_0800A644:
	ldr r0, _0800A654
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800A652
	b _0800A886
_0800A652:
	b _0800A894
_0800A654: .4byte gUnk_030056FC
_0800A658:
	ldr r0, _0800A674
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #5
	bne _0800A644
	bl sub_08056E50
	cmp r0, #0
	bne _0800A66C
	b _0800A980
_0800A66C:
	movs r0, #6
	bl sub_08058688
	b _0800A992
_0800A674: .4byte gUnk_03003170
_0800A678:
	ldr r0, _0800A69C
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0x12
	beq _0800A644
	cmp r0, #0
	bne _0800A688
	b _0800A992
_0800A688:
	bl sub_08056E50
	cmp r0, #0
	bne _0800A692
	b _0800A980
_0800A692:
	movs r0, #8
	bl sub_08058688
	b _0800A992
	.2byte 0x0000
_0800A69C: .4byte gUnk_03003170
_0800A6A0:
	ldr r0, _0800A6C0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #4
	beq _0800A6AE
	cmp r0, #0xc
	bne _0800A644
_0800A6AE:
	bl sub_08056E50
	cmp r0, #0
	bne _0800A6B8
	b _0800A980
_0800A6B8:
	movs r0, #9
	bl sub_08058688
	b _0800A992
_0800A6C0: .4byte gUnk_03003170
_0800A6C4:
	ldr r0, _0800A6D4
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #8
	beq _0800A6D0
	b _0800A992
_0800A6D0:
	b _0800A52C
	.2byte 0x0000
_0800A6D4: .4byte gUnk_03003170
_0800A6D8:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0800A6E8
	bl sub_0800D028
	cmp r0, #0
	bne _0800A776
_0800A6E8:
	bl sub_0800CDC0
	cmp r0, #0
	bne _0800A6F2
	b _0800A89C
_0800A6F2:
	cmp r4, #0
	beq _0800A720
	bl sub_08056E50
	cmp r0, #0
	bne _0800A720
	bl sub_0800CDC0
	cmp r0, #0
	beq _0800A720
	ldr r0, _0800A71C
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800A720
	cmp r6, #0xd
	beq _0800A718
	b _0800A98C
_0800A718:
	b _0800A886
	.2byte 0x0000
_0800A71C: .4byte gUnk_030056FC
_0800A720:
	subs r0, r5, #5
	cmp r0, #8
	bls _0800A728
	b _0800A874
_0800A728:
	lsls r0, r0, #2
	ldr r1, _0800A734
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0800A734: .4byte _0800A738
_0800A738:
	.4byte _0800A75C
_0800A73C: .4byte _0800A78C
_0800A740: .4byte _0800A874
_0800A744: .4byte _0800A7A4
_0800A748: .4byte _0800A7D0
_0800A74C: .4byte _0800A804
_0800A750: .4byte _0800A874
_0800A754: .4byte _0800A874
_0800A758: .4byte _0800A864
_0800A75C:
	ldr r0, _0800A780
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0xc
	bne _0800A784
	cmp r4, #0
	bne _0800A76C
	b _0800A992
_0800A76C:
	bl sub_08056E50
	cmp r0, #0
	bne _0800A776
	b _0800A980
_0800A776:
	movs r0, #0x40
	bl sub_08058688
	b _0800A992
	.2byte 0x0000
_0800A780: .4byte gUnk_03003170
_0800A784:
	cmp r4, #0
	bne _0800A78A
	b _0800A98C
_0800A78A:
	b _0800A644
_0800A78C:
	ldr r0, _0800A7A0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #5
	bne _0800A798
	b _0800A98C
_0800A798:
	cmp r4, #0
	bne _0800A79E
	b _0800A992
_0800A79E:
	b _0800A644
_0800A7A0: .4byte gUnk_03003170
_0800A7A4:
	ldr r0, _0800A7B4
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0xd
	beq _0800A7B8
	cmp r0, #0x12
	beq _0800A7CA
	b _0800A992
_0800A7B4: .4byte gUnk_03003170
_0800A7B8:
	cmp r4, #0
	bne _0800A7BE
	b _0800A992
_0800A7BE:
	bl sub_08056E50
	cmp r0, #0
	beq _0800A7C8
	b _0800A98C
_0800A7C8:
	b _0800A980
_0800A7CA:
	cmp r4, #0
	beq _0800A894
	b _0800A644
_0800A7D0:
	cmp r4, #0
	bne _0800A7D6
	b _0800A992
_0800A7D6:
	ldr r0, _0800A7EC
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0xc
	beq _0800A7F8
	cmp r0, #0xc
	bgt _0800A7F0
	cmp r0, #4
	beq _0800A7F8
	b _0800A992
	.2byte 0x0000
_0800A7EC: .4byte gUnk_03003170
_0800A7F0:
	cmp r0, #0x10
	bne _0800A7F6
	b _0800A644
_0800A7F6:
	b _0800A992
_0800A7F8:
	bl sub_08056E50
	cmp r0, #0
	beq _0800A802
	b _0800A98C
_0800A802:
	b _0800A980
_0800A804:
	cmp r4, #0
	beq _0800A840
	ldr r0, _0800A828
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0x14
	bne _0800A830
_0800A812:
	ldr r0, _0800A82C
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800A886
	movs r0, #0xc
	bl sub_08058688
	b _0800A992
	.2byte 0x0000
_0800A828: .4byte gUnk_03003170
_0800A82C: .4byte gUnk_030056FC
_0800A830:
	cmp r0, #0x12
	beq _0800A84C
	bl sub_08056E50
	cmp r0, #0
	beq _0800A83E
	b _0800A98C
_0800A83E:
	b _0800A894
_0800A840:
	ldr r0, _0800A860
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0x12
	beq _0800A84C
	b _0800A992
_0800A84C:
	bl sub_08056E50
	cmp r0, #0
	beq _0800A856
	b _0800A98C
_0800A856:
	movs r0, #0x1f
	bl sub_08058688
	b _0800A992
	.2byte 0x0000
_0800A860: .4byte gUnk_03003170
_0800A864:
	cmp r4, #0
	bne _0800A86A
	b _0800A992
_0800A86A:
	movs r0, #0xca
	lsls r0, r0, #1
	bl sub_08058688
	b _0800A992
_0800A874:
	cmp r4, #0
	bne _0800A87A
	b _0800A992
_0800A87A:
	ldr r0, _0800A890
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800A894
_0800A886:
	movs r0, #0xd
	bl sub_08058688
	b _0800A992
	.2byte 0x0000
_0800A890: .4byte gUnk_030056FC
_0800A894:
	movs r0, #0xb
	bl sub_08058688
	b _0800A992
_0800A89C:
	ldr r5, _0800A8B0
	adds r0, r5, #0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0800A8B4
	cmp r0, #0xc
	beq _0800A96A
	b _0800A98C
	.2byte 0x0000
_0800A8B0: .4byte gUnk_03003170
_0800A8B4:
	bl sub_0800CF48
	cmp r0, #0
	bne _0800A98C
	bl sub_08057314
	cmp r0, #0
	bne _0800A98C
	movs r0, #0x1a
	bl sub_08057AE8
	cmp r0, #0
	beq _0800A8D8
_0800A8CE:
	movs r0, #0xc4
	lsls r0, r0, #1
	bl sub_08058688
	b _0800A992
_0800A8D8:
	adds r0, r5, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0x14
	bhi _0800A992
	lsls r0, r0, #2
	ldr r1, _0800A8EC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800A8EC: .4byte _0800A8F0
_0800A8F0:
	.4byte _0800A944
_0800A8F4: .4byte _0800A94C
_0800A8F8: .4byte _0800A94C
_0800A8FC: .4byte _0800A962
_0800A900: .4byte _0800A962
_0800A904: .4byte _0800A94C
_0800A908: .4byte _0800A94C
_0800A90C: .4byte _0800A94C
_0800A910: .4byte _0800A94C
_0800A914: .4byte _0800A94C
_0800A918: .4byte _0800A94C
_0800A91C: .4byte _0800A94C
_0800A920: .4byte _0800A94C
_0800A924: .4byte _0800A94C
_0800A928: .4byte _0800A954
_0800A92C: .4byte _0800A94C
_0800A930: .4byte _0800A94C
_0800A934: .4byte _0800A94C
_0800A938: .4byte _0800A94C
_0800A93C: .4byte _0800A94C
_0800A940: .4byte _0800A962
_0800A944:
	movs r0, #0xa
	bl sub_08058688
	b _0800A992
_0800A94C:
	movs r0, #0xdb
	bl sub_08058688
	b _0800A992
_0800A954:
	movs r0, #0xdb
	bl sub_080586B4
	movs r0, #0x34
	bl sub_0805865C
	b _0800A992
_0800A962:
	movs r0, #0xda
	bl sub_08058688
	b _0800A992
_0800A96A:
	cmp r4, #0
	beq _0800A992
	adds r0, r5, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0800A992
	ldr r0, _0800A988
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0800A98C
_0800A980:
	movs r0, #0xa5
	bl sub_08058688
	b _0800A992
_0800A988: .4byte gUnk_030056FC
_0800A98C:
	movs r0, #0
	bl sub_080586B4
_0800A992:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_0800A34C
