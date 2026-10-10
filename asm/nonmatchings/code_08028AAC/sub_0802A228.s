	thumb_func_start sub_0802A228
sub_0802A228: @ 0x0802A228
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	bl sub_0800BB40
	movs r4, #5
	b _0802A240
_0802A236:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0802A24C
_0802A240:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0802A236
_0802A24C:
	cmp r6, #0x17
	bls _0802A252
	b _0802A56E
_0802A252:
	lsls r0, r6, #2
	ldr r1, _0802A25C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0802A25C: .4byte _0802A260
_0802A260:
	.4byte _0802A2C0
_0802A264: .4byte _0802A2E8
_0802A268: .4byte _0802A304
_0802A26C: .4byte _0802A320
_0802A270: .4byte _0802A33C
_0802A274: .4byte _0802A358
_0802A278: .4byte _0802A374
_0802A27C: .4byte _0802A390
_0802A280: .4byte _0802A3AC
_0802A284: .4byte _0802A3C8
_0802A288: .4byte _0802A3E4
_0802A28C: .4byte _0802A400
_0802A290: .4byte _0802A41C
_0802A294: .4byte _0802A438
_0802A298: .4byte _0802A454
_0802A29C: .4byte _0802A470
_0802A2A0: .4byte _0802A48C
_0802A2A4: .4byte _0802A4A8
_0802A2A8: .4byte _0802A4C4
_0802A2AC: .4byte _0802A4E0
_0802A2B0: .4byte _0802A4FC
_0802A2B4: .4byte _0802A518
_0802A2B8: .4byte _0802A534
_0802A2BC: .4byte _0802A550
_0802A2C0:
	bl sub_0800CCDC
	ldr r0, _0802A2DC
	ldr r3, [r0, #0]
	ldr r0, _0802A2E0
	adds r2, r3, r0
	ldr r1, _0802A2E4
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	movs r0, #0
	strh r0, [r3, #0x36]
	b _0802A56E
_0802A2DC: .4byte gUnk_03005CF4
_0802A2E0: .4byte 0x0000071C
_0802A2E4: .4byte gUnk_084F0AC0
_0802A2E8:
	bl sub_0800CCEC
	ldr r0, _0802A2F8
	ldr r2, [r0, #0]
	ldr r0, _0802A2FC
	adds r3, r2, r0
	ldr r1, _0802A300
	b _0802A55E
_0802A2F8: .4byte gUnk_03005CF4
_0802A2FC: .4byte 0x0000071C
_0802A300: .4byte gUnk_084F26E4
_0802A304:
	bl sub_0800CCEC
	ldr r0, _0802A314
	ldr r2, [r0, #0]
	ldr r0, _0802A318
	adds r3, r2, r0
	ldr r1, _0802A31C
	b _0802A55E
_0802A314: .4byte gUnk_03005CF4
_0802A318: .4byte 0x0000071C
_0802A31C: .4byte gUnk_084F4818
_0802A320:
	bl sub_0800CCEC
	ldr r0, _0802A330
	ldr r2, [r0, #0]
	ldr r0, _0802A334
	adds r3, r2, r0
	ldr r1, _0802A338
	b _0802A55E
_0802A330: .4byte gUnk_03005CF4
_0802A334: .4byte 0x0000071C
_0802A338: .4byte gUnk_084F794C
_0802A33C:
	bl sub_0800CCEC
	ldr r0, _0802A34C
	ldr r2, [r0, #0]
	ldr r0, _0802A350
	adds r3, r2, r0
	ldr r1, _0802A354
	b _0802A55E
_0802A34C: .4byte gUnk_03005CF4
_0802A350: .4byte 0x0000071C
_0802A354: .4byte gUnk_084FA298
_0802A358:
	bl sub_0800CCEC
	ldr r0, _0802A368
	ldr r2, [r0, #0]
	ldr r0, _0802A36C
	adds r3, r2, r0
	ldr r1, _0802A370
	b _0802A55E
_0802A368: .4byte gUnk_03005CF4
_0802A36C: .4byte 0x0000071C
_0802A370: .4byte gUnk_084FD06C
_0802A374:
	bl sub_0800CCEC
	ldr r0, _0802A384
	ldr r2, [r0, #0]
	ldr r0, _0802A388
	adds r3, r2, r0
	ldr r1, _0802A38C
	b _0802A55E
_0802A384: .4byte gUnk_03005CF4
_0802A388: .4byte 0x0000071C
_0802A38C: .4byte gUnk_0850008C
_0802A390:
	bl sub_0800CCEC
	ldr r0, _0802A3A0
	ldr r2, [r0, #0]
	ldr r0, _0802A3A4
	adds r3, r2, r0
	ldr r1, _0802A3A8
	b _0802A55E
_0802A3A0: .4byte gUnk_03005CF4
_0802A3A4: .4byte 0x0000071C
_0802A3A8: .4byte gUnk_085028BC
_0802A3AC:
	bl sub_0800CCEC
	ldr r0, _0802A3BC
	ldr r2, [r0, #0]
	ldr r0, _0802A3C0
	adds r3, r2, r0
	ldr r1, _0802A3C4
	b _0802A55E
_0802A3BC: .4byte gUnk_03005CF4
_0802A3C0: .4byte 0x0000071C
_0802A3C4: .4byte gUnk_085060D4
_0802A3C8:
	bl sub_0800CCEC
	ldr r0, _0802A3D8
	ldr r2, [r0, #0]
	ldr r0, _0802A3DC
	adds r3, r2, r0
	ldr r1, _0802A3E0
	b _0802A55E
_0802A3D8: .4byte gUnk_03005CF4
_0802A3DC: .4byte 0x0000071C
_0802A3E0: .4byte gUnk_08508B54
_0802A3E4:
	bl sub_0800CCEC
	ldr r0, _0802A3F4
	ldr r2, [r0, #0]
	ldr r0, _0802A3F8
	adds r3, r2, r0
	ldr r1, _0802A3FC
	b _0802A55E
_0802A3F4: .4byte gUnk_03005CF4
_0802A3F8: .4byte 0x0000071C
_0802A3FC: .4byte gUnk_0850C6E8
_0802A400:
	bl sub_0800CCEC
	ldr r0, _0802A410
	ldr r2, [r0, #0]
	ldr r0, _0802A414
	adds r3, r2, r0
	ldr r1, _0802A418
	b _0802A55E
_0802A410: .4byte gUnk_03005CF4
_0802A414: .4byte 0x0000071C
_0802A418: .4byte gUnk_0850D4EC
_0802A41C:
	bl sub_0800CCEC
	ldr r0, _0802A42C
	ldr r2, [r0, #0]
	ldr r0, _0802A430
	adds r3, r2, r0
	ldr r1, _0802A434
	b _0802A55E
_0802A42C: .4byte gUnk_03005CF4
_0802A430: .4byte 0x0000071C
_0802A434: .4byte gUnk_0850DE28
_0802A438:
	bl sub_0800CCEC
	ldr r0, _0802A448
	ldr r2, [r0, #0]
	ldr r0, _0802A44C
	adds r3, r2, r0
	ldr r1, _0802A450
	b _0802A55E
_0802A448: .4byte gUnk_03005CF4
_0802A44C: .4byte 0x0000071C
_0802A450: .4byte gUnk_0850EAC4
_0802A454:
	bl sub_0800CCEC
	ldr r0, _0802A464
	ldr r2, [r0, #0]
	ldr r0, _0802A468
	adds r3, r2, r0
	ldr r1, _0802A46C
	b _0802A55E
_0802A464: .4byte gUnk_03005CF4
_0802A468: .4byte 0x0000071C
_0802A46C: .4byte gUnk_0850ED20
_0802A470:
	bl sub_0800CCEC
	ldr r0, _0802A480
	ldr r2, [r0, #0]
	ldr r0, _0802A484
	adds r3, r2, r0
	ldr r1, _0802A488
	b _0802A55E
_0802A480: .4byte gUnk_03005CF4
_0802A484: .4byte 0x0000071C
_0802A488: .4byte gUnk_0850F894
_0802A48C:
	bl sub_0800CCEC
	ldr r0, _0802A49C
	ldr r2, [r0, #0]
	ldr r0, _0802A4A0
	adds r3, r2, r0
	ldr r1, _0802A4A4
	b _0802A55E
_0802A49C: .4byte gUnk_03005CF4
_0802A4A0: .4byte 0x0000071C
_0802A4A4: .4byte gUnk_08510530
_0802A4A8:
	bl sub_0800CCEC
	ldr r0, _0802A4B8
	ldr r2, [r0, #0]
	ldr r0, _0802A4BC
	adds r3, r2, r0
	ldr r1, _0802A4C0
	b _0802A55E
_0802A4B8: .4byte gUnk_03005CF4
_0802A4BC: .4byte 0x0000071C
_0802A4C0: .4byte gUnk_08511538
_0802A4C4:
	bl sub_0800CCEC
	ldr r0, _0802A4D4
	ldr r2, [r0, #0]
	ldr r0, _0802A4D8
	adds r3, r2, r0
	ldr r1, _0802A4DC
	b _0802A55E
_0802A4D4: .4byte gUnk_03005CF4
_0802A4D8: .4byte 0x0000071C
_0802A4DC: .4byte gUnk_08512670
_0802A4E0:
	bl sub_0800CCEC
	ldr r0, _0802A4F0
	ldr r2, [r0, #0]
	ldr r0, _0802A4F4
	adds r3, r2, r0
	ldr r1, _0802A4F8
	b _0802A55E
_0802A4F0: .4byte gUnk_03005CF4
_0802A4F4: .4byte 0x0000071C
_0802A4F8: .4byte gUnk_08513680
_0802A4FC:
	bl sub_0800CCEC
	ldr r0, _0802A50C
	ldr r2, [r0, #0]
	ldr r0, _0802A510
	adds r3, r2, r0
	ldr r1, _0802A514
	b _0802A55E
_0802A50C: .4byte gUnk_03005CF4
_0802A510: .4byte 0x0000071C
_0802A514: .4byte gUnk_08514FAC
_0802A518:
	bl sub_0800CCEC
	ldr r0, _0802A528
	ldr r2, [r0, #0]
	ldr r0, _0802A52C
	adds r3, r2, r0
	ldr r1, _0802A530
	b _0802A55E
_0802A528: .4byte gUnk_03005CF4
_0802A52C: .4byte 0x0000071C
_0802A530: .4byte gUnk_08515FCC
_0802A534:
	bl sub_0800CCEC
	ldr r0, _0802A544
	ldr r2, [r0, #0]
	ldr r0, _0802A548
	adds r3, r2, r0
	ldr r1, _0802A54C
	b _0802A55E
_0802A544: .4byte gUnk_03005CF4
_0802A548: .4byte 0x0000071C
_0802A54C: .4byte gUnk_08517220
_0802A550:
	bl sub_0800CCEC
	ldr r0, _0802A584
	ldr r2, [r0, #0]
	ldr r0, _0802A588
	adds r3, r2, r0
	ldr r1, _0802A58C
_0802A55E:
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	ldrh r1, [r2, #4]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r2, #4]
_0802A56E:
	ldr r0, _0802A584
	ldr r0, [r0, #0]
	movs r1, #0
	strh r1, [r0, #0x10]
	str r5, [r0, #0x40]
	strh r6, [r0, #0]
	bl sub_08028918
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0802A584: .4byte gUnk_03005CF4
_0802A588: .4byte 0x0000071C
_0802A58C: .4byte gUnk_0851810C
	thumb_func_end sub_0802A228
