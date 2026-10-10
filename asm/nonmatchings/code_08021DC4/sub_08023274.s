	thumb_func_start sub_08023274
sub_08023274: @ 0x08023274
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r2, #0
	bne _08023280
	b _080235CA
_08023280:
	ldr r1, _080232B8
	ldr r0, [r1, #0]
	strh r5, [r0, #0]
	str r4, [r0, #0x40]
	movs r7, #0
	adds r6, r1, #0
	movs r3, #0
_0802328E:
	ldr r0, [r6, #0]
	lsls r2, r7, #1
	adds r1, r0, #0
	adds r1, #0x22
	adds r1, r1, r2
	strh r3, [r1, #0]
	adds r0, #0xe
	adds r0, r0, r2
	strh r3, [r0, #0]
	adds r7, #1
	cmp r7, #9
	bls _0802328E
	cmp r5, #0x17
	bls _080232AC
	b _080235CA
_080232AC:
	lsls r0, r5, #2
	ldr r1, _080232BC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080232B8: .4byte gUnk_03005CF4
_080232BC: .4byte _080232C0
_080232C0:
	.4byte _08023320
_080232C4: .4byte _0802334C
_080232C8: .4byte _08023368
_080232CC: .4byte _08023384
_080232D0: .4byte _080233A0
_080232D4: .4byte _080233BC
_080232D8: .4byte _080233D8
_080232DC: .4byte _080233F4
_080232E0: .4byte _08023410
_080232E4: .4byte _0802342C
_080232E8: .4byte _08023448
_080232EC: .4byte _08023464
_080232F0: .4byte _08023480
_080232F4: .4byte _0802349C
_080232F8: .4byte _080234B8
_080232FC: .4byte _080234D4
_08023300: .4byte _080234F0
_08023304: .4byte _0802350C
_08023308: .4byte _08023528
_0802330C: .4byte _08023544
_08023310: .4byte _08023560
_08023314: .4byte _0802357C
_08023318: .4byte _08023598
_0802331C: .4byte _080235B4
_08023320:
	bl sub_0800CCDC
	ldr r0, _08023340
	ldr r2, [r0, #0]
	ldr r0, _08023344
	adds r3, r2, r0
	ldr r1, _08023348
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	movs r0, #0
	strh r0, [r2, #0x36]
	strh r4, [r2, #2]
	b _080235CA
	.2byte 0x0000
_08023340: .4byte gUnk_03005CF4
_08023344: .4byte 0x0000071C
_08023348: .4byte gUnk_084F0AC0
_0802334C:
	bl sub_0800CCEC
	ldr r0, _0802335C
	ldr r1, [r0, #0]
	ldr r2, _08023360
	adds r1, r1, r2
	ldr r2, _08023364
	b _080235C2
_0802335C: .4byte gUnk_03005CF4
_08023360: .4byte 0x0000071C
_08023364: .4byte gUnk_084F26E4
_08023368:
	bl sub_0800CCEC
	ldr r0, _08023378
	ldr r1, [r0, #0]
	ldr r0, _0802337C
	adds r1, r1, r0
	ldr r2, _08023380
	b _080235C2
_08023378: .4byte gUnk_03005CF4
_0802337C: .4byte 0x0000071C
_08023380: .4byte gUnk_084F4818
_08023384:
	bl sub_0800CCEC
	ldr r0, _08023394
	ldr r1, [r0, #0]
	ldr r2, _08023398
	adds r1, r1, r2
	ldr r2, _0802339C
	b _080235C2
_08023394: .4byte gUnk_03005CF4
_08023398: .4byte 0x0000071C
_0802339C: .4byte gUnk_084F794C
_080233A0:
	bl sub_0800CCEC
	ldr r0, _080233B0
	ldr r1, [r0, #0]
	ldr r0, _080233B4
	adds r1, r1, r0
	ldr r2, _080233B8
	b _080235C2
_080233B0: .4byte gUnk_03005CF4
_080233B4: .4byte 0x0000071C
_080233B8: .4byte gUnk_084FA298
_080233BC:
	bl sub_0800CCEC
	ldr r0, _080233CC
	ldr r1, [r0, #0]
	ldr r2, _080233D0
	adds r1, r1, r2
	ldr r2, _080233D4
	b _080235C2
_080233CC: .4byte gUnk_03005CF4
_080233D0: .4byte 0x0000071C
_080233D4: .4byte gUnk_084FD06C
_080233D8:
	bl sub_0800CCEC
	ldr r0, _080233E8
	ldr r1, [r0, #0]
	ldr r0, _080233EC
	adds r1, r1, r0
	ldr r2, _080233F0
	b _080235C2
_080233E8: .4byte gUnk_03005CF4
_080233EC: .4byte 0x0000071C
_080233F0: .4byte gUnk_0850008C
_080233F4:
	bl sub_0800CCEC
	ldr r0, _08023404
	ldr r1, [r0, #0]
	ldr r2, _08023408
	adds r1, r1, r2
	ldr r2, _0802340C
	b _080235C2
_08023404: .4byte gUnk_03005CF4
_08023408: .4byte 0x0000071C
_0802340C: .4byte gUnk_085028BC
_08023410:
	bl sub_0800CCEC
	ldr r0, _08023420
	ldr r1, [r0, #0]
	ldr r0, _08023424
	adds r1, r1, r0
	ldr r2, _08023428
	b _080235C2
_08023420: .4byte gUnk_03005CF4
_08023424: .4byte 0x0000071C
_08023428: .4byte gUnk_085060D4
_0802342C:
	bl sub_0800CCEC
	ldr r0, _0802343C
	ldr r1, [r0, #0]
	ldr r2, _08023440
	adds r1, r1, r2
	ldr r2, _08023444
	b _080235C2
_0802343C: .4byte gUnk_03005CF4
_08023440: .4byte 0x0000071C
_08023444: .4byte gUnk_08508B54
_08023448:
	bl sub_0800CCEC
	ldr r0, _08023458
	ldr r1, [r0, #0]
	ldr r0, _0802345C
	adds r1, r1, r0
	ldr r2, _08023460
	b _080235C2
_08023458: .4byte gUnk_03005CF4
_0802345C: .4byte 0x0000071C
_08023460: .4byte gUnk_0850C6E8
_08023464:
	bl sub_0800CCEC
	ldr r0, _08023474
	ldr r1, [r0, #0]
	ldr r2, _08023478
	adds r1, r1, r2
	ldr r2, _0802347C
	b _080235C2
_08023474: .4byte gUnk_03005CF4
_08023478: .4byte 0x0000071C
_0802347C: .4byte gUnk_0850D4EC
_08023480:
	bl sub_0800CCEC
	ldr r0, _08023490
	ldr r1, [r0, #0]
	ldr r0, _08023494
	adds r1, r1, r0
	ldr r2, _08023498
	b _080235C2
_08023490: .4byte gUnk_03005CF4
_08023494: .4byte 0x0000071C
_08023498: .4byte gUnk_0850DE28
_0802349C:
	bl sub_0800CCEC
	ldr r0, _080234AC
	ldr r1, [r0, #0]
	ldr r2, _080234B0
	adds r1, r1, r2
	ldr r2, _080234B4
	b _080235C2
_080234AC: .4byte gUnk_03005CF4
_080234B0: .4byte 0x0000071C
_080234B4: .4byte gUnk_0850EAC4
_080234B8:
	bl sub_0800CCEC
	ldr r0, _080234C8
	ldr r1, [r0, #0]
	ldr r0, _080234CC
	adds r1, r1, r0
	ldr r2, _080234D0
	b _080235C2
_080234C8: .4byte gUnk_03005CF4
_080234CC: .4byte 0x0000071C
_080234D0: .4byte gUnk_0850ED20
_080234D4:
	bl sub_0800CCEC
	ldr r0, _080234E4
	ldr r1, [r0, #0]
	ldr r2, _080234E8
	adds r1, r1, r2
	ldr r2, _080234EC
	b _080235C2
_080234E4: .4byte gUnk_03005CF4
_080234E8: .4byte 0x0000071C
_080234EC: .4byte gUnk_0850F894
_080234F0:
	bl sub_0800CCEC
	ldr r0, _08023500
	ldr r1, [r0, #0]
	ldr r0, _08023504
	adds r1, r1, r0
	ldr r2, _08023508
	b _080235C2
_08023500: .4byte gUnk_03005CF4
_08023504: .4byte 0x0000071C
_08023508: .4byte gUnk_08510530
_0802350C:
	bl sub_0800CCEC
	ldr r0, _0802351C
	ldr r1, [r0, #0]
	ldr r2, _08023520
	adds r1, r1, r2
	ldr r2, _08023524
	b _080235C2
_0802351C: .4byte gUnk_03005CF4
_08023520: .4byte 0x0000071C
_08023524: .4byte gUnk_08511538
_08023528:
	bl sub_0800CCEC
	ldr r0, _08023538
	ldr r1, [r0, #0]
	ldr r0, _0802353C
	adds r1, r1, r0
	ldr r2, _08023540
	b _080235C2
_08023538: .4byte gUnk_03005CF4
_0802353C: .4byte 0x0000071C
_08023540: .4byte gUnk_08512670
_08023544:
	bl sub_0800CCEC
	ldr r0, _08023554
	ldr r1, [r0, #0]
	ldr r2, _08023558
	adds r1, r1, r2
	ldr r2, _0802355C
	b _080235C2
_08023554: .4byte gUnk_03005CF4
_08023558: .4byte 0x0000071C
_0802355C: .4byte gUnk_08513680
_08023560:
	bl sub_0800CCEC
	ldr r0, _08023570
	ldr r1, [r0, #0]
	ldr r0, _08023574
	adds r1, r1, r0
	ldr r2, _08023578
	b _080235C2
_08023570: .4byte gUnk_03005CF4
_08023574: .4byte 0x0000071C
_08023578: .4byte gUnk_08514FAC
_0802357C:
	bl sub_0800CCEC
	ldr r0, _0802358C
	ldr r1, [r0, #0]
	ldr r2, _08023590
	adds r1, r1, r2
	ldr r2, _08023594
	b _080235C2
_0802358C: .4byte gUnk_03005CF4
_08023590: .4byte 0x0000071C
_08023594: .4byte gUnk_08515FCC
_08023598:
	bl sub_0800CCEC
	ldr r0, _080235A8
	ldr r1, [r0, #0]
	ldr r0, _080235AC
	adds r1, r1, r0
	ldr r2, _080235B0
	b _080235C2
_080235A8: .4byte gUnk_03005CF4
_080235AC: .4byte 0x0000071C
_080235B0: .4byte gUnk_08517220
_080235B4:
	bl sub_0800CCEC
	ldr r0, _08023624
	ldr r1, [r0, #0]
	ldr r2, _08023628
	adds r1, r1, r2
	ldr r2, _0802362C
_080235C2:
	lsls r0, r4, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r1, #0]
_080235CA:
	bl sub_08002204
	cmp r0, #0
	beq _08023662
	ldr r0, _08023624
	ldr r1, [r0, #0]
	movs r0, #9
	strh r0, [r1, #8]
	ldr r2, _08023628
	adds r0, r1, r2
	ldr r6, [r0, #0]
	movs r0, #1
	strh r0, [r1, #0x22]
	movs r7, #0
_080235E6:
	ldrh r0, [r6, #0]
	cmp r0, #0
	beq _08023634
	bl sub_080008C8
	ldr r1, _08023624
	ldr r4, [r1, #0]
	ldrh r5, [r6, #0]
	lsls r5, r5, #1
	adds r4, #0x22
	adds r5, r4, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6, #2]
	bl sub_080B95E4
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
	bls _080235E6
	b _08023634
	.2byte 0x0000
_08023624: .4byte gUnk_03005CF4
_08023628: .4byte 0x0000071C
_0802362C: .4byte gUnk_0851810C
_08023630:
	bl sub_080003F0
_08023634:
	bl sub_08065FE8
	cmp r0, #0
	beq _08023630
	b _08023642
_0802363E:
	bl sub_080003F0
_08023642:
	bl sub_08067C18
	cmp r0, #0
	beq _0802363E
	b _08023650
_0802364C:
	bl sub_080003F0
_08023650:
	bl sub_08067C08
	cmp r0, #0
	beq _0802364C
	bl sub_08067BF8
	b _0802367C
_0802365E:
	bl sub_080003F0
_08023662:
	bl sub_08067C18
	cmp r0, #0
	beq _0802365E
	b _08023670
_0802366C:
	bl sub_080003F0
_08023670:
	bl sub_08067C08
	cmp r0, #0
	beq _0802366C
	bl sub_08067BF8
_0802367C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08023274
