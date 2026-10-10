	thumb_func_start sub_08050E48
sub_08050E48: @ 0x08050E48
	push {r4, r5, r6, lr}
	sub sp, #0x18
	cmp r0, #1
	bne _08050E54
	bl _0805162A
_08050E54:
	cmp r0, #1
	bgt _08050E60
	cmp r0, #0
	beq _08050E6C
	bl _08051A6E
_08050E60:
	cmp r0, #2
	bne _08050E68
	bl _08051A30
_08050E68:
	bl _08051A6E
_08050E6C:
	movs r0, #0
	bl sub_0800CC48
	movs r4, #0x3c
	b _08050E80
_08050E76:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08050E8C
_08050E80:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08050E76
_08050E8C:
	movs r0, #1
	movs r1, #4
	bl sub_080290E4
	movs r4, #4
	b _08050EA2
_08050E98:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08050EAE
_08050EA2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08050E98
_08050EAE:
	movs r0, #1
	movs r1, #5
	bl sub_080290E4
	movs r4, #0x64
	b _08050EC4
_08050EBA:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08050ED0
_08050EC4:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08050EBA
_08050ED0:
	movs r0, #1
	movs r1, #4
	bl sub_080290E4
	movs r4, #4
	b _08050EE6
_08050EDC:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08050EF2
_08050EE6:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08050EDC
_08050EF2:
	movs r0, #1
	movs r1, #3
	bl sub_080290E4
	movs r4, #0x64
	b _08050F08
_08050EFE:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08050F14
_08050F08:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08050EFE
_08050F14:
	movs r0, #1
	movs r1, #4
	bl sub_080290E4
	movs r4, #4
	b _08050F2A
_08050F20:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08050F36
_08050F2A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08050F20
_08050F36:
	movs r0, #1
	movs r1, #5
	bl sub_080290E4
	movs r0, #2
	movs r1, #0x60
	movs r2, #0
	movs r3, #0
	bl sub_08028AAC
	movs r0, #2
	movs r1, #0x10
	bl sub_0802939C
	movs r0, #2
	movs r1, #0
	movs r2, #0x64
	movs r3, #0x78
	bl sub_08028D98
	movs r0, #2
	movs r1, #0x11
	bl sub_0802939C
	b _08050F6C
_08050F68:
	bl sub_080003F0
_08050F6C:
	bl sub_0805F184
	cmp r0, #0
	bne _08050F68
	b _08050F7A
_08050F76:
	bl sub_080003F0
_08050F7A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08050F76
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08050F9C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08050FA4
	.2byte 0x0000
_08050F9C: .4byte 0x0014006B
_08050FA0:
	bl sub_080003F0
_08050FA4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08050FA0
	b _08050FB4
_08050FB0:
	bl sub_080003F0
_08050FB4:
	bl sub_0805F184
	cmp r0, #0
	bne _08050FB0
	b _08050FC2
_08050FBE:
	bl sub_080003F0
_08050FC2:
	bl sub_0805EF90
	cmp r0, #0
	bne _08050FBE
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08050FEC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	movs r0, #1
	movs r1, #2
	bl sub_080290E4
	b _08050FF4
	.2byte 0x0000
_08050FEC: .4byte 0x0014006C
_08050FF0:
	bl sub_080003F0
_08050FF4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08050FF0
	b _08051004
_08051000:
	bl sub_080003F0
_08051004:
	bl sub_0805F184
	cmp r0, #0
	bne _08051000
	b _08051012
_0805100E:
	bl sub_080003F0
_08051012:
	bl sub_0805EF90
	cmp r0, #0
	bne _0805100E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08051034
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0805103C
	.2byte 0x0000
_08051034: .4byte 0x0014006D
_08051038:
	bl sub_080003F0
_0805103C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08051038
	b _0805104C
_08051048:
	bl sub_080003F0
_0805104C:
	bl sub_0805F184
	cmp r0, #0
	bne _08051048
	b _0805105A
_08051056:
	bl sub_080003F0
_0805105A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08051056
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0805107C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08051084
	.2byte 0x0000
_0805107C: .4byte 0x0014006E
_08051080:
	bl sub_080003F0
_08051084:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08051080
	b _08051094
_08051090:
	bl sub_080003F0
_08051094:
	bl sub_0805F184
	cmp r0, #0
	bne _08051090
	b _080510A2
_0805109E:
	bl sub_080003F0
_080510A2:
	bl sub_0805EF90
	cmp r0, #0
	bne _0805109E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080510C4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080510CC
	.2byte 0x0000
_080510C4: .4byte 0x0014006F
_080510C8:
	bl sub_080003F0
_080510CC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080510C8
	b _080510DC
_080510D8:
	bl sub_080003F0
_080510DC:
	bl sub_0805F184
	cmp r0, #0
	bne _080510D8
	b _080510EA
_080510E6:
	bl sub_080003F0
_080510EA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080510E6
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0805110C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08051114
	.2byte 0x0000
_0805110C: .4byte 0x00140070
_08051110:
	bl sub_080003F0
_08051114:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08051110
	b _08051124
_08051120:
	bl sub_080003F0
_08051124:
	bl sub_0805F184
	cmp r0, #0
	bne _08051120
	b _08051132
_0805112E:
	bl sub_080003F0
_08051132:
	bl sub_0805EF90
	cmp r0, #0
	bne _0805112E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08051154
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0805115C
	.2byte 0x0000
_08051154: .4byte 0x00140071
_08051158:
	bl sub_080003F0
_0805115C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08051158
	b _0805116C
_08051168:
	bl sub_080003F0
_0805116C:
	bl sub_0805F184
	cmp r0, #0
	bne _08051168
	b _0805117A
_08051176:
	bl sub_080003F0
_0805117A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08051176
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0805119C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080511A4
	.2byte 0x0000
_0805119C: .4byte 0x00140072
_080511A0:
	bl sub_080003F0
_080511A4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080511A0
	b _080511B4
_080511B0:
	bl sub_080003F0
_080511B4:
	bl sub_0805F184
	cmp r0, #0
	bne _080511B0
	b _080511C2
_080511BE:
	bl sub_080003F0
_080511C2:
	bl sub_0805EF90
	cmp r0, #0
	bne _080511BE
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080511E4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080511EC
	.2byte 0x0000
_080511E4: .4byte 0x00140073
_080511E8:
	bl sub_080003F0
_080511EC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080511E8
	b _080511FC
_080511F8:
	bl sub_080003F0
_080511FC:
	bl sub_0805F184
	cmp r0, #0
	bne _080511F8
	b _0805120A
_08051206:
	bl sub_080003F0
_0805120A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08051206
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0805122C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08051234
	.2byte 0x0000
_0805122C: .4byte 0x00140074
_08051230:
	bl sub_080003F0
_08051234:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08051230
	b _08051244
_08051240:
	bl sub_080003F0
_08051244:
	bl sub_0805F184
	cmp r0, #0
	bne _08051240
	b _08051252
_0805124E:
	bl sub_080003F0
_08051252:
	bl sub_0805EF90
	cmp r0, #0
	bne _0805124E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08051274
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0805127C
	.2byte 0x0000
_08051274: .4byte 0x00140075
_08051278:
	bl sub_080003F0
_0805127C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08051278
	b _0805128C
_08051288:
	bl sub_080003F0
_0805128C:
	bl sub_0805F184
	cmp r0, #0
	bne _08051288
	b _0805129A
_08051296:
	bl sub_080003F0
_0805129A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08051296
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080512BC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080512C4
	.2byte 0x0000
_080512BC: .4byte 0x00140076
_080512C0:
	bl sub_080003F0
_080512C4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080512C0
	b _080512D4
_080512D0:
	bl sub_080003F0
_080512D4:
	bl sub_0805F184
	cmp r0, #0
	bne _080512D0
	b _080512E2
_080512DE:
	bl sub_080003F0
_080512E2:
	bl sub_0805EF90
	cmp r0, #0
	bne _080512DE
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08051304
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0805130C
	.2byte 0x0000
_08051304: .4byte 0x00140077
_08051308:
	bl sub_080003F0
_0805130C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08051308
	b _0805131C
_08051318:
	bl sub_080003F0
_0805131C:
	bl sub_0805F184
	cmp r0, #0
	bne _08051318
	b _0805132A
_08051326:
	bl sub_080003F0
_0805132A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08051326
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0805134C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08051354
	.2byte 0x0000
_0805134C: .4byte 0x00140078
_08051350:
	bl sub_080003F0
_08051354:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08051350
	b _08051364
_08051360:
	bl sub_080003F0
_08051364:
	bl sub_0805F184
	cmp r0, #0
	bne _08051360
	b _08051372
_0805136E:
	bl sub_080003F0
_08051372:
	bl sub_0805EF90
	cmp r0, #0
	bne _0805136E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08051394
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0805139C
	.2byte 0x0000
_08051394: .4byte 0x00140079
_08051398:
	bl sub_080003F0
_0805139C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08051398
	b _080513AC
_080513A8:
	bl sub_080003F0
_080513AC:
	bl sub_0805F184
	cmp r0, #0
	bne _080513A8
	b _080513BA
_080513B6:
	bl sub_080003F0
_080513BA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080513B6
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080513DC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080513E4
	.2byte 0x0000
_080513DC: .4byte 0x0014007A
_080513E0:
	bl sub_080003F0
_080513E4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080513E0
	movs r0, #0xa
	movs r2, #0x96
	lsls r2, r2, #1
	add r1, sp, #8
	strh r0, [r1, #0]
	str r2, [sp, #0xc]
	b _08051400
_080513FC:
	bl sub_080003F0
_08051400:
	movs r0, #0xf0
	lsls r0, r0, #7
	adds r1, r0, #0
	add r2, sp, #8
	bl sub_08067B9C
	cmp r0, #0
	beq _080513FC
	b _08051416
_08051412:
	bl sub_080003F0
_08051416:
	bl sub_0805F184
	cmp r0, #0
	bne _08051412
	b _08051424
_08051420:
	bl sub_080003F0
_08051424:
	bl sub_0805EF90
	cmp r0, #0
	bne _08051420
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08051444
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0805144C
_08051444: .4byte 0x0014007B
_08051448:
	bl sub_080003F0
_0805144C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08051448
	b _0805145C
_08051458:
	bl sub_080003F0
_0805145C:
	bl sub_0805F184
	cmp r0, #0
	bne _08051458
	b _0805146A
_08051466:
	bl sub_080003F0
_0805146A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08051466
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0805148C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08051494
	.2byte 0x0000
_0805148C: .4byte 0x0014007C
_08051490:
	bl sub_080003F0
_08051494:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08051490
	b _080514A4
_080514A0:
	bl sub_080003F0
_080514A4:
	bl sub_0805F184
	cmp r0, #0
	bne _080514A0
	b _080514B2
_080514AE:
	bl sub_080003F0
_080514B2:
	bl sub_0805EF90
	cmp r0, #0
	bne _080514AE
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080514D4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080514DC
	.2byte 0x0000
_080514D4: .4byte 0x0014007D
_080514D8:
	bl sub_080003F0
_080514DC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080514D8
	b _080514EC
_080514E8:
	bl sub_080003F0
_080514EC:
	bl sub_0805F184
	cmp r0, #0
	bne _080514E8
	b _080514FA
_080514F6:
	bl sub_080003F0
_080514FA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080514F6
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0805151C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08051524
	.2byte 0x0000
_0805151C: .4byte 0x0014007E
_08051520:
	bl sub_080003F0
_08051524:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08051520
	movs r0, #0xf0
	lsls r0, r0, #7
	adds r1, r0, #0
	movs r2, #0
	bl sub_0805D37C
	bl sub_080687A8
	b _08051544
_08051540:
	bl sub_080003F0
_08051544:
	bl sub_0805F184
	cmp r0, #0
	bne _08051540
	b _08051552
_0805154E:
	bl sub_080003F0
_08051552:
	bl sub_0805EF90
	cmp r0, #0
	bne _0805154E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08051574
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0805157C
	.2byte 0x0000
_08051574: .4byte 0x0014007F
_08051578:
	bl sub_080003F0
_0805157C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08051578
	ldr r6, _08051594
	ldr r0, _08051598
	ldr r0, [r0, #0]
	ldr r1, _0805159C
	adds r4, r0, r1
	movs r5, #0
	b _080515A4
_08051594: .4byte sub_08050E48
_08051598: .4byte gUnk_03005CF4
_0805159C: .4byte 0x00000E34
_080515A0:
	adds r5, #1
	adds r4, #0x28
_080515A4:
	cmp r5, #0x1d
	bhi _080515E8
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080515A0
	b _080515B8
_080515B4:
	bl sub_080003F0
_080515B8:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080515B4
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000274
	b _080515E8
_080515E4:
	bl sub_080003F0
_080515E8:
	bl sub_0805F184
	cmp r0, #0
	bne _080515E4
	b _080515F6
_080515F2:
	bl sub_080003F0
_080515F6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080515F2
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08051618
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08051620
	.2byte 0x0000
_08051618: .4byte 0x00140080
_0805161C:
	bl sub_080003F0
_08051620:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0805161C
_0805162A:
	bl sub_0800CB9C
	cmp r0, #0
	bne _08051654
	ldr r0, _0805164C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805165A
	ldr r1, _08051650
	movs r0, #8
	str r0, [r1, #0]
	bl sub_08006CB4
	b _0805165A
	.2byte 0x0000
_0805164C: .4byte gUnk_030027D0
_08051650: .4byte gUnk_03005CF8
_08051654:
	movs r0, #0
	bl sub_080586B4
_0805165A:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08051690
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	ldr r0, _08051694
	ldr r0, [r0, #0]
	ldrh r0, [r0, #2]
	movs r1, #3
	bl sub_08019EB8
	movs r0, #1
	movs r1, #0
	bl sub_0802949C
	add r5, sp, #0xc
	b _0805169C
	.2byte 0x0000
_08051690: .4byte gUnk_03003CE0
_08051694: .4byte gUnk_030056F4
_08051698:
	bl sub_080003F0
_0805169C:
	bl sub_0805F184
	cmp r0, #0
	bne _08051698
	b _080516AA
_080516A6:
	bl sub_080003F0
_080516AA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080516A6
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080516CC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080516D4
	.2byte 0x0000
_080516CC: .4byte 0x00140081
_080516D0:
	bl sub_080003F0
_080516D4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080516D0
	b _080516E4
_080516E0:
	bl sub_080003F0
_080516E4:
	bl sub_0805F184
	cmp r0, #0
	bne _080516E0
	b _080516F2
_080516EE:
	bl sub_080003F0
_080516F2:
	bl sub_0805EF90
	cmp r0, #0
	bne _080516EE
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08051714
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0805171C
	.2byte 0x0000
_08051714: .4byte 0x00140082
_08051718:
	bl sub_080003F0
_0805171C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08051718
	b _0805172C
_08051728:
	bl sub_080003F0
_0805172C:
	bl sub_0805F184
	cmp r0, #0
	bne _08051728
	b _0805173A
_08051736:
	bl sub_080003F0
_0805173A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08051736
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0805175C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08051764
	.2byte 0x0000
_0805175C: .4byte 0x00140083
_08051760:
	bl sub_080003F0
_08051764:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08051760
	b _08051774
_08051770:
	bl sub_080003F0
_08051774:
	bl sub_0805F184
	cmp r0, #0
	bne _08051770
	b _08051782
_0805177E:
	bl sub_080003F0
_08051782:
	bl sub_0805EF90
	cmp r0, #0
	bne _0805177E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080517A4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080517AC
	.2byte 0x0000
_080517A4: .4byte 0x00140084
_080517A8:
	bl sub_080003F0
_080517AC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080517A8
	b _080517BC
_080517B8:
	bl sub_080003F0
_080517BC:
	bl sub_0805F184
	cmp r0, #0
	bne _080517B8
	b _080517CA
_080517C6:
	bl sub_080003F0
_080517CA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080517C6
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080517EC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080517F4
	.2byte 0x0000
_080517EC: .4byte 0x00140085
_080517F0:
	bl sub_080003F0
_080517F4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080517F0
	b _08051804
_08051800:
	bl sub_080003F0
_08051804:
	bl sub_0805F184
	cmp r0, #0
	bne _08051800
	b _08051812
_0805180E:
	bl sub_080003F0
_08051812:
	bl sub_0805EF90
	cmp r0, #0
	bne _0805180E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08051834
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0805183C
	.2byte 0x0000
_08051834: .4byte 0x00140086
_08051838:
	bl sub_080003F0
_0805183C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08051838
	b _0805184C
_08051848:
	bl sub_080003F0
_0805184C:
	bl sub_0805F184
	cmp r0, #0
	bne _08051848
	b _0805185A
_08051856:
	bl sub_080003F0
_0805185A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08051856
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0805187C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08051884
	.2byte 0x0000
_0805187C: .4byte 0x00140087
_08051880:
	bl sub_080003F0
_08051884:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08051880
	b _08051894
_08051890:
	bl sub_080003F0
_08051894:
	bl sub_0805F184
	cmp r0, #0
	bne _08051890
	b _080518A2
_0805189E:
	bl sub_080003F0
_080518A2:
	bl sub_0805EF90
	cmp r0, #0
	bne _0805189E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080518C4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080518CC
	.2byte 0x0000
_080518C4: .4byte 0x00140088
_080518C8:
	bl sub_080003F0
_080518CC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080518C8
	b _080518DC
_080518D8:
	bl sub_080003F0
_080518DC:
	bl sub_0805F184
	cmp r0, #0
	bne _080518D8
	b _080518EA
_080518E6:
	bl sub_080003F0
_080518EA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080518E6
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08051924
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	movs r1, #1
	movs r2, #6
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
_08051918:
	adds r0, r2, r1
	strb r3, [r0, #0]
	adds r1, #1
	cmp r1, #0xb
	bls _08051918
	b _0805192C
_08051924: .4byte 0x00140089
_08051928:
	bl sub_080003F0
_0805192C:
	movs r0, #0xb8
	lsls r0, r0, #7
	movs r1, #0xc8
	lsls r1, r1, #7
	add r2, sp, #8
	bl sub_08067B9C
	cmp r0, #0
	beq _08051928
	movs r0, #2
	movs r1, #0x10
	bl sub_0802939C
	movs r2, #0x64
	negs r2, r2
	movs r0, #2
	movs r1, #0
	movs r3, #0x78
	bl sub_08028D98
	ldr r2, _08051968
	movs r0, #2
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	bl sub_0800CC68
	b _08051970
	.2byte 0x0000
_08051968: .4byte 0x0000270F
_0805196C:
	bl sub_080003F0
_08051970:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0805196C
	b _08051980
_0805197C:
	bl sub_080003F0
_08051980:
	bl sub_0805F184
	cmp r0, #0
	bne _0805197C
	b _0805198E
_0805198A:
	bl sub_080003F0
_0805198E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0805198A
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080519B0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080519B8
	.2byte 0x0000
_080519B0: .4byte 0x0014008A
_080519B4:
	bl sub_080003F0
_080519B8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080519B4
	ldr r0, _08051A20
	ldr r2, [r0, #0]
	movs r1, #2
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08051A24
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	ldr r0, _08051A28
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _08051A2C
	movs r6, #1
	movs r4, #0
_080519F8:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _08051A0C
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _08051A0C
	strh r4, [r2, #0xc]
_08051A0C:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _080519F8
	bl sub_08019F04
	b _08051A6E
	.2byte 0x0000
_08051A20: .4byte gUnk_03005CF4
_08051A24: .4byte gUnk_03003CE0
_08051A28: .4byte gUnk_030056F4
_08051A2C: .4byte gUnk_030056FC
_08051A30:
	movs r4, #0x3c
	b _08051A3E
_08051A34:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08051A4A
_08051A3E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08051A34
_08051A4A:
	movs r0, #1
	movs r1, #0
	bl sub_080290E4
	movs r0, #1
	movs r1, #8
	bl sub_0802939C
	movs r0, #1
	movs r1, #0
	movs r2, #0x28
	movs r3, #0x50
	bl sub_08028D98
	movs r0, #1
	movs r1, #0
	bl sub_0802939C
_08051A6E:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_08050E48
