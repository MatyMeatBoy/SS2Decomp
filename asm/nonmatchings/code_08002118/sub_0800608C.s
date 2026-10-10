	thumb_func_start sub_0800608C
sub_0800608C: @ 0x0800608C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf4
	str r0, [sp, #0xc0]
	add r0, sp, #0x74
	ldr r1, _0800617C
	movs r2, #2
	bl sub_080B96A4
	add r0, sp, #0x40
	ldr r1, _08006180
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r2, #0
	adds r3, r5, #0
	bl sub_08065158
	add r6, sp, #0xc
	ldr r1, _08006184
	str r4, [sp, #0]
	adds r0, r6, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_08065158
	movs r0, #0
	bl sub_0801A6D4
	ldr r0, _08006188
	strh r4, [r0, #2]
	strh r4, [r0, #0]
	strh r4, [r0, #6]
	strh r4, [r0, #4]
	strh r4, [r0, #0xa]
	strh r4, [r0, #8]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0xc]
	movs r0, #0
	movs r1, #0x13
	bl sub_0801A664
	movs r0, #0xe0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	movs r0, #3
	bl sub_0801AB50
	movs r0, #0
	str r0, [sp, #0xc4]
	movs r1, #0xa
	str r1, [sp, #0xc8]
	add r0, sp, #4
	add r1, sp, #8
	add r2, sp, #0xc4
	ldrh r2, [r2, #0]
	strh r2, [r1, #0]
	add r3, sp, #0xc4
	ldrh r3, [r3, #0]
	strh r3, [r0, #0]
	add r2, sp, #0xc4
	ldrh r2, [r2, #0]
	strh r2, [r1, #2]
	add r3, sp, #0xc4
	ldrh r3, [r3, #0]
	strh r3, [r0, #2]
	movs r0, #0
	str r0, [sp, #0xd0]
	movs r1, #0
	str r1, [sp, #0xcc]
	movs r2, #0
	str r2, [sp, #0xd8]
	movs r3, #0x52
	str r3, [sp, #0xe8]
	movs r0, #8
	str r0, [sp, #0xe4]
	movs r1, #8
	str r1, [sp, #0xdc]
	movs r2, #0x52
	str r2, [sp, #0xe0]
	ldr r3, [sp, #0xc0]
	ldrb r3, [r3, #7]
	mov r9, r3
	movs r0, #0
	mov sl, r0
	movs r1, #1
	str r1, [sp, #0xc4]
	movs r0, #0x6e
	bl sub_08001108
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xf0]
	ldr r0, _0800618C
	bl sub_0800115C
	str r0, [sp, #0xec]
	bl sub_08000D8C
_08006160:
	bl sub_0801AAE0
	adds r1, r0, #0
	cmp r1, #0
	bne _0800616E
	ldr r0, _08006190
	strh r1, [r0, #0]
_0800616E:
	mov r2, sl
	cmp r2, #0
	beq _08006194
	cmp r2, #1
	beq _0800624C
	b _080062EE
	.2byte 0x0000
_0800617C: .4byte gUnk_080B99D4
_08006180: .4byte 0x00050002
_08006184: .4byte 0x00050006
_08006188: .4byte gUnk_03001250
_0800618C: .4byte sub_080066A8
_08006190: .4byte gUnk_03001324
_08006194:
	ldr r0, _080061BC
	ldrh r0, [r0, #0]
	cmp r0, #1
	bne _080061CC
	ldr r3, [sp, #0xc4]
	cmp r3, #1
	bne _080061C0
	ldr r1, [sp, #0xc0]
	ldrb r0, [r1, #5]
	movs r2, #3
	mov sl, r2
	cmp r0, #0
	beq _080061C4
	movs r3, #1
	mov sl, r3
	movs r0, #0x62
	str r0, [sp, #0xe8]
	movs r1, #0x3c
	str r1, [sp, #0xe4]
	b _080061C4
_080061BC: .4byte gUnk_03001324
_080061C0:
	movs r2, #3
	mov sl, r2
_080061C4:
	movs r0, #0xf
	bl sub_0805865C
	b _080062EE
_080061CC:
	cmp r0, #2
	beq _080061D2
	b _080062EE
_080061D2:
	movs r0, #0x10
	bl sub_0805865C
	movs r0, #6
	bl sub_0801ABE8
	b _080061E4
_080061E0:
	bl sub_080003F0
_080061E4:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080061E0
	bl sub_08000E48
	ldr r0, [sp, #0xec]
	bl sub_0800115C
	ldr r0, [sp, #0xf0]
	bl sub_08001108
	ldr r4, _08006240
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _0800620E
	adds r0, r4, #0
	bl sub_080003A8
_0800620E:
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08001494
	ldr r1, _08006244
	str r1, [r4, #0xc]
	ldr r3, _08006248
	adds r1, r0, r3
	str r1, [r4, #0x10]
	str r0, [r4, #0x20]
	movs r0, #1
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000274
	movs r0, #0
	movs r1, #0x14
	bl sub_0801A664
	bl sub_080003F0
	b _0800652A
_08006240: .4byte gUnk_03002840
_08006244: .4byte sub_08002B70
_08006248: .4byte 0x00000FFC
_0800624C:
	ldr r0, _08006270
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08006274
	ldr r0, [sp, #0xc4]
	cmp r0, #1
	bne _0800626A
	mov r1, r9
	cmp r1, #1
	bne _0800626A
	movs r0, #0xe
	bl sub_0805865C
_0800626A:
	movs r2, #0
	mov r9, r2
	b _080062EE
_08006270: .4byte gUnk_03001308
_08006274:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08006294
	ldr r3, [sp, #0xc4]
	cmp r3, #1
	bne _0800628E
	mov r0, r9
	cmp r0, #0
	bne _0800628E
	movs r0, #0xe
	bl sub_0805865C
_0800628E:
	movs r1, #1
	mov r9, r1
	b _080062EE
_08006294:
	ldr r0, _080062D4
	ldrh r0, [r0, #0]
	cmp r0, #1
	bne _080062D8
	movs r2, #3
	mov sl, r2
	movs r3, #0
	mov r9, r3
	movs r0, #0xf
	bl sub_0805865C
	movs r0, #0
	movs r1, #0xa
	bl sub_0801A664
	bl sub_08000E48
	ldr r0, [sp, #0xec]
	bl sub_0800115C
	str r0, [sp, #0xec]
	ldr r0, [sp, #0xf0]
	bl sub_08001108
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	b _080062EE
	.2byte 0x0000
_080062D4: .4byte gUnk_03001324
_080062D8:
	cmp r0, #2
	bne _080062EE
	movs r0, #0
	mov sl, r0
	movs r1, #8
	str r1, [sp, #0xe4]
	movs r0, #0x10
	bl sub_0805865C
	movs r2, #0x52
	str r2, [sp, #0xe8]
_080062EE:
	ldr r3, [sp, #0xc0]
	ldrb r0, [r3, #5]
	cmp r0, #0
	beq _08006324
	mov r1, r9
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0]
	add r0, sp, #0xc
	movs r1, #0x50
	movs r2, #0x64
	movs r3, #0x26
	bl sub_08065230
	movs r0, #0
	mov r2, r9
	cmp r2, #0
	bne _08006316
	movs r0, #1
_08006316:
	str r0, [sp, #0]
	add r0, sp, #0xc
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #0x27
	bl sub_08065230
_08006324:
	add r4, sp, #0x78
	ldr r3, [sp, #0xe8]
	ldr r0, [sp, #0xe0]
	subs r6, r3, r0
	ldr r1, [sp, #0xe4]
	ldr r2, [sp, #0xdc]
	subs r1, r1, r2
	mov r8, r1
	add r5, sp, #0x9c
	ldr r3, [sp, #0xc8]
	ldr r0, [sp, #0xc4]
	cmp r3, r0
	beq _0800636E
	movs r1, #0
	str r1, [sp, #0xd4]
	movs r2, #0
	str r2, [sp, #0xd0]
	movs r3, #0
	str r3, [sp, #0xcc]
	movs r0, #0
	str r0, [sp, #0xd8]
	ldr r0, _080063E4
	str r3, [r0, #0]
	adds r2, r4, #0
	movs r1, #0xfd
_08006356:
	adds r0, r2, r3
	strb r1, [r0, #0]
	adds r3, #1
	cmp r3, #0x1f
	bls _08006356
	ldr r0, _080063E8
	bl sub_08007290
	adds r7, r0, #0
	adds r7, #2
	ldr r1, [sp, #0xc4]
	str r1, [sp, #0xc8]
_0800636E:
	ldr r0, [sp, #0xcc]
	adds r2, r0, #0
	adds r2, #1
	str r2, [sp, #0xcc]
	cmp r0, #2
	bls _080063C0
	movs r3, #0
	str r3, [sp, #0xcc]
	ldrb r0, [r7, #0]
	cmp r0, #0xff
	bne _08006386
	adds r7, #1
_08006386:
	ldrb r0, [r7, #0]
	cmp r0, #0xfe
	bne _0800638E
	adds r7, #3
_0800638E:
	ldrb r0, [r7, #0]
	cmp r0, #0xfd
	bne _0800639E
	ldr r0, _080063E8
	bl sub_08007290
	adds r7, r0, #0
	adds r7, #2
_0800639E:
	ldr r0, [sp, #0xd8]
	adds r1, r4, r0
	ldrb r0, [r7, #0]
	strb r0, [r1, #0]
	adds r7, #1
	ldr r1, [sp, #0xd8]
	adds r1, #1
	str r1, [sp, #0xd8]
	cmp r1, #0x1f
	bls _080063C0
	movs r2, #0
	str r2, [sp, #0xd8]
	add r1, sp, #0x98
	movs r0, #0xfd
	strb r0, [r1, #0]
	movs r3, #1
	str r3, [sp, #0xd0]
_080063C0:
	ldr r0, [sp, #0xd0]
	cmp r0, #0
	beq _080063F0
	ldr r1, _080063E4
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	ldr r1, [sp, #0xd4]
	adds r1, #1
	str r1, [sp, #0xd4]
	cmp r1, #7
	bls _080063EC
	movs r2, #0
	str r2, [sp, #0xd4]
	movs r3, #0xa
	str r3, [sp, #0xcc]
	b _080063F0
	.2byte 0x0000
_080063E4: .4byte gUnk_03003474
_080063E8: .4byte 0x00140453
_080063EC:
	movs r0, #0
	str r0, [sp, #0xcc]
_080063F0:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xe
	bl sub_0801A3D0
	lsrs r0, r6, #0x1f
	adds r0, r6, r0
	asrs r0, r0, #1
	ldr r1, [sp, #0xe0]
	adds r1, r1, r0
	str r1, [sp, #0xe0]
	ldr r2, [sp, #0xe8]
	subs r0, r2, r1
	cmp r0, #0
	bge _08006410
	negs r0, r0
_08006410:
	cmp r0, #1
	bgt _08006418
	ldr r3, [sp, #0xe8]
	str r3, [sp, #0xe0]
_08006418:
	mov r1, r8
	lsrs r0, r1, #0x1f
	add r0, r8
	asrs r0, r0, #1
	ldr r2, [sp, #0xdc]
	adds r2, r2, r0
	str r2, [sp, #0xdc]
	ldr r3, [sp, #0xe4]
	subs r0, r3, r2
	cmp r0, #0
	bge _08006430
	negs r0, r0
_08006430:
	cmp r0, #1
	bgt _08006438
	ldr r0, [sp, #0xe4]
	str r0, [sp, #0xdc]
_08006438:
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0xc
	ldr r1, [sp, #0xdc]
	ldr r2, [sp, #0xe0]
	movs r3, #0x15
	bl sub_08065230
	ldr r0, _080064CC
	bl sub_08007290
	adds r4, r0, #2
	movs r1, #0
	mov r8, r1
	movs r6, #0x80
	lsls r6, r6, #0xb
_08006458:
	movs r3, #0
	ldrb r1, [r4, #0]
	adds r0, r1, #0
	cmp r0, #0xfd
	beq _0800647E
	strb r1, [r5, #0]
	cmp r0, #0xff
	beq _0800647C
_08006468:
	adds r3, #1
	adds r4, #1
	ldrb r2, [r4, #0]
	adds r1, r2, #0
	cmp r1, #0xfd
	beq _0800647E
	adds r0, r5, r3
	strb r2, [r0, #0]
	cmp r1, #0xff
	bne _08006468
_0800647C:
	adds r4, #1
_0800647E:
	adds r1, r5, r3
	movs r0, #0xfd
	strb r0, [r1, #0]
	cmp r3, #0
	beq _080064A8
	lsrs r2, r6, #0x10
	adds r0, r5, #0
	movs r1, #2
	bl sub_0801A3D0
	ldrb r0, [r4, #0]
	cmp r0, #0xfd
	beq _080064A8
	movs r2, #0x80
	lsls r2, r2, #0xa
	adds r6, r6, r2
	movs r3, #1
	add r8, r3
	mov r0, r8
	cmp r0, #1
	bls _08006458
_080064A8:
	ldr r0, _080064D0
	bl sub_08007290
	adds r0, #2
	movs r1, #2
	movs r2, #9
	bl sub_0801A3D0
	bl sub_080003F0
	mov r1, sl
	cmp r1, #3
	beq _080064C4
	b _08006160
_080064C4:
	movs r0, #6
	bl sub_0801ABE8
	b _080064D8
_080064CC: .4byte 0x0014044D
_080064D0: .4byte 0x00140450
_080064D4:
	bl sub_080003F0
_080064D8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080064D4
	ldr r1, _08006518
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1, #0]
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xc]
	movs r1, #0x14
	bl sub_0801A664
	bl sub_080003F0
	movs r0, #0
	movs r1, #0x14
	bl sub_0801A664
	bl sub_080003F0
	ldr r2, [sp, #0xc4]
	cmp r2, #0
	bne _0800651C
	movs r0, #0
	ldr r3, [sp, #0xc0]
	strb r0, [r3, #6]
	b _08006522
_08006518: .4byte gUnk_03001250
_0800651C:
	movs r0, #1
	ldr r1, [sp, #0xc0]
	strb r0, [r1, #6]
_08006522:
	ldr r1, _08006540
	ldr r0, _0800653C
	bl sub_08000420
_0800652A:
	add sp, #0xf4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0800653C: .4byte 0x5A112EBF
_08006540: .4byte 0x00000002
	thumb_func_end sub_0800608C
