	thumb_func_start sub_08023684
sub_08023684: @ 0x08023684
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	cmp r2, #0
	bne _08023690
	b _08023928
_08023690:
	ldr r1, _080236CC
	ldr r0, [r1, #0]
	strh r6, [r0, #0]
	str r4, [r0, #0x40]
	movs r7, #0
	adds r3, r1, #0
	mov ip, r3
	movs r5, #0
_080236A0:
	mov r1, ip
	ldr r0, [r1, #0]
	lsls r2, r7, #1
	adds r1, r0, #0
	adds r1, #0x22
	adds r1, r1, r2
	strh r5, [r1, #0]
	adds r0, #0xe
	adds r0, r0, r2
	strh r5, [r0, #0]
	adds r7, #1
	cmp r7, #9
	bls _080236A0
	cmp r6, #0x17
	bls _080236C0
	b _08023928
_080236C0:
	lsls r0, r6, #2
	ldr r1, _080236D0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080236CC: .4byte gUnk_03005CF4
_080236D0: .4byte _080236D4
_080236D4:
	.4byte _08023734
_080236D8: .4byte _08023760
_080236DC: .4byte _08023774
_080236E0: .4byte _08023788
_080236E4: .4byte _0802379C
_080236E8: .4byte _080237B0
_080236EC: .4byte _080237C4
_080236F0: .4byte _080237D8
_080236F4: .4byte _080237EC
_080236F8: .4byte _08023800
_080236FC: .4byte _08023814
_08023700: .4byte _08023828
_08023704: .4byte _0802383C
_08023708: .4byte _08023850
_0802370C: .4byte _08023864
_08023710: .4byte _08023878
_08023714: .4byte _0802388C
_08023718: .4byte _080238A0
_0802371C: .4byte _080238B4
_08023720: .4byte _080238C8
_08023724: .4byte _080238DC
_08023728: .4byte _080238F0
_0802372C: .4byte _08023904
_08023730: .4byte _08023918
_08023734:
	bl sub_0800CCDC
	ldr r0, _08023754
	ldr r2, [r0, #0]
	ldr r0, _08023758
	adds r3, r2, r0
	ldr r1, _0802375C
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	movs r0, #0
	strh r0, [r2, #0x36]
	strh r4, [r2, #2]
	b _08023928
	.2byte 0x0000
_08023754: .4byte gUnk_03005CF4
_08023758: .4byte 0x0000071C
_0802375C: .4byte gUnk_084F0AC0
_08023760:
	ldr r1, [r3, #0]
	ldr r2, _0802376C
	adds r1, r1, r2
	ldr r2, _08023770
	b _08023920
	.2byte 0x0000
_0802376C: .4byte 0x0000071C
_08023770: .4byte gUnk_084F26E4
_08023774:
	ldr r1, [r3, #0]
	ldr r0, _08023780
	adds r1, r1, r0
	ldr r2, _08023784
	b _08023920
	.2byte 0x0000
_08023780: .4byte 0x0000071C
_08023784: .4byte gUnk_084F4818
_08023788:
	ldr r1, [r3, #0]
	ldr r2, _08023794
	adds r1, r1, r2
	ldr r2, _08023798
	b _08023920
	.2byte 0x0000
_08023794: .4byte 0x0000071C
_08023798: .4byte gUnk_084F794C
_0802379C:
	ldr r1, [r3, #0]
	ldr r0, _080237A8
	adds r1, r1, r0
	ldr r2, _080237AC
	b _08023920
	.2byte 0x0000
_080237A8: .4byte 0x0000071C
_080237AC: .4byte gUnk_084FA298
_080237B0:
	ldr r1, [r3, #0]
	ldr r2, _080237BC
	adds r1, r1, r2
	ldr r2, _080237C0
	b _08023920
	.2byte 0x0000
_080237BC: .4byte 0x0000071C
_080237C0: .4byte gUnk_084FD06C
_080237C4:
	ldr r1, [r3, #0]
	ldr r0, _080237D0
	adds r1, r1, r0
	ldr r2, _080237D4
	b _08023920
	.2byte 0x0000
_080237D0: .4byte 0x0000071C
_080237D4: .4byte gUnk_0850008C
_080237D8:
	ldr r1, [r3, #0]
	ldr r2, _080237E4
	adds r1, r1, r2
	ldr r2, _080237E8
	b _08023920
	.2byte 0x0000
_080237E4: .4byte 0x0000071C
_080237E8: .4byte gUnk_085028BC
_080237EC:
	ldr r1, [r3, #0]
	ldr r0, _080237F8
	adds r1, r1, r0
	ldr r2, _080237FC
	b _08023920
	.2byte 0x0000
_080237F8: .4byte 0x0000071C
_080237FC: .4byte gUnk_085060D4
_08023800:
	ldr r1, [r3, #0]
	ldr r2, _0802380C
	adds r1, r1, r2
	ldr r2, _08023810
	b _08023920
	.2byte 0x0000
_0802380C: .4byte 0x0000071C
_08023810: .4byte gUnk_08508B54
_08023814:
	ldr r1, [r3, #0]
	ldr r0, _08023820
	adds r1, r1, r0
	ldr r2, _08023824
	b _08023920
	.2byte 0x0000
_08023820: .4byte 0x0000071C
_08023824: .4byte gUnk_0850C6E8
_08023828:
	ldr r1, [r3, #0]
	ldr r2, _08023834
	adds r1, r1, r2
	ldr r2, _08023838
	b _08023920
	.2byte 0x0000
_08023834: .4byte 0x0000071C
_08023838: .4byte gUnk_0850D4EC
_0802383C:
	ldr r1, [r3, #0]
	ldr r0, _08023848
	adds r1, r1, r0
	ldr r2, _0802384C
	b _08023920
	.2byte 0x0000
_08023848: .4byte 0x0000071C
_0802384C: .4byte gUnk_0850DE28
_08023850:
	ldr r1, [r3, #0]
	ldr r2, _0802385C
	adds r1, r1, r2
	ldr r2, _08023860
	b _08023920
	.2byte 0x0000
_0802385C: .4byte 0x0000071C
_08023860: .4byte gUnk_0850EAC4
_08023864:
	ldr r1, [r3, #0]
	ldr r0, _08023870
	adds r1, r1, r0
	ldr r2, _08023874
	b _08023920
	.2byte 0x0000
_08023870: .4byte 0x0000071C
_08023874: .4byte gUnk_0850ED20
_08023878:
	ldr r1, [r3, #0]
	ldr r2, _08023884
	adds r1, r1, r2
	ldr r2, _08023888
	b _08023920
	.2byte 0x0000
_08023884: .4byte 0x0000071C
_08023888: .4byte gUnk_0850F894
_0802388C:
	ldr r1, [r3, #0]
	ldr r0, _08023898
	adds r1, r1, r0
	ldr r2, _0802389C
	b _08023920
	.2byte 0x0000
_08023898: .4byte 0x0000071C
_0802389C: .4byte gUnk_08510530
_080238A0:
	ldr r1, [r3, #0]
	ldr r2, _080238AC
	adds r1, r1, r2
	ldr r2, _080238B0
	b _08023920
	.2byte 0x0000
_080238AC: .4byte 0x0000071C
_080238B0: .4byte gUnk_08511538
_080238B4:
	ldr r1, [r3, #0]
	ldr r0, _080238C0
	adds r1, r1, r0
	ldr r2, _080238C4
	b _08023920
	.2byte 0x0000
_080238C0: .4byte 0x0000071C
_080238C4: .4byte gUnk_08512670
_080238C8:
	ldr r1, [r3, #0]
	ldr r2, _080238D4
	adds r1, r1, r2
	ldr r2, _080238D8
	b _08023920
	.2byte 0x0000
_080238D4: .4byte 0x0000071C
_080238D8: .4byte gUnk_08513680
_080238DC:
	ldr r1, [r3, #0]
	ldr r0, _080238E8
	adds r1, r1, r0
	ldr r2, _080238EC
	b _08023920
	.2byte 0x0000
_080238E8: .4byte 0x0000071C
_080238EC: .4byte gUnk_08514FAC
_080238F0:
	ldr r1, [r3, #0]
	ldr r2, _080238FC
	adds r1, r1, r2
	ldr r2, _08023900
	b _08023920
	.2byte 0x0000
_080238FC: .4byte 0x0000071C
_08023900: .4byte gUnk_08515FCC
_08023904:
	ldr r1, [r3, #0]
	ldr r0, _08023910
	adds r1, r1, r0
	ldr r2, _08023914
	b _08023920
	.2byte 0x0000
_08023910: .4byte 0x0000071C
_08023914: .4byte gUnk_08517220
_08023918:
	ldr r1, [r3, #0]
	ldr r2, _08023980
	adds r1, r1, r2
	ldr r2, _08023984
_08023920:
	lsls r0, r4, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r1, #0]
_08023928:
	bl sub_08002204
	cmp r0, #0
	beq _080239BE
	ldr r0, _08023988
	ldr r1, [r0, #0]
	movs r0, #9
	strh r0, [r1, #8]
	ldr r2, _08023980
	adds r0, r1, r2
	ldr r6, [r0, #0]
	movs r0, #1
	strh r0, [r1, #0x22]
	movs r7, #0
_08023944:
	ldrh r0, [r6, #0]
	cmp r0, #0
	beq _08023990
	bl sub_080008C8
	ldr r1, _08023988
	ldr r4, [r1, #0]
	ldrh r5, [r6, #0]
	lsls r5, r5, #1
	adds r4, #0x22
	adds r5, r4, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6, #2]
	bl __umodsi3
	strh r0, [r5, #0]
	ldrh r0, [r6, #0]
	lsls r0, r0, #1
	adds r4, r4, r0
	ldrh r0, [r4, #0]
	adds r0, #1
	strh r0, [r4, #0]
	adds r7, #1
	movs r0, #0x92
	lsls r0, r0, #1
	adds r6, r6, r0
	cmp r7, #9
	bls _08023944
	b _08023990
_08023980: .4byte 0x0000071C
_08023984: .4byte gUnk_0851810C
_08023988: .4byte gUnk_03005CF4
_0802398C:
	bl sub_080003F0
_08023990:
	bl sub_08065FE8
	cmp r0, #0
	beq _0802398C
	b _0802399E
_0802399A:
	bl sub_080003F0
_0802399E:
	bl sub_08067C18
	cmp r0, #0
	beq _0802399A
	b _080239AC
_080239A8:
	bl sub_080003F0
_080239AC:
	bl sub_08067C08
	cmp r0, #0
	beq _080239A8
	bl sub_08067BF8
	b _080239D8
_080239BA:
	bl sub_080003F0
_080239BE:
	bl sub_08067C18
	cmp r0, #0
	beq _080239BA
	b _080239CC
_080239C8:
	bl sub_080003F0
_080239CC:
	bl sub_08067C08
	cmp r0, #0
	beq _080239C8
	bl sub_08067BF8
_080239D8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08023684
