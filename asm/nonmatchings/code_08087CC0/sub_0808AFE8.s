	thumb_func_start sub_0808AFE8
sub_0808AFE8: @ 0x0808AFE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0808B10C
	add sp, r4
	ldr r0, _0808B110
	movs r4, #0
	strh r4, [r0, #0]
	ldr r1, _0808B114
	strh r1, [r0, #2]
	strh r4, [r0, #6]
	strh r4, [r0, #4]
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0xc]
	movs r0, #0x36
	movs r1, #0x1e
	bl sub_0800B974
	movs r0, #0x3c
	movs r1, #0x1f
	bl sub_0800B974
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r0, #0xf
	str r0, [sp, #0]
	movs r0, #0x35
	movs r1, #0x1d
	movs r3, #0
	bl sub_0800B650
	ldr r2, _0808B118
	ldr r1, _0808B11C
	ldr r0, _0808B120
	ldr r0, [r0, #0]
	movs r3, #0xa5
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	adds r3, #0xb0
	adds r1, r2, r3
	strh r0, [r1, #0]
	ldr r1, _0808B124
	movs r3, #1
	negs r3, r3
	str r4, [sp, #0]
	add r0, sp, #8
	movs r2, #9
	bl sub_08065158
	bl sub_080653CC
	str r0, [sp, #0x2a0]
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	movs r0, #0xe8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	ldr r1, _0808B128
	add r4, sp, #0x290
	ldr r0, [r4, #0]
	ands r0, r1
	ldr r1, _0808B12C
	orrs r0, r1
	str r0, [r4, #0]
	adds r5, r4, #0
	movs r0, #2
	adds r1, r5, #0
	bl sub_08000AA8
	ldr r0, _0808B130
	strh r0, [r4, #0]
	movs r0, #3
	adds r1, r5, #0
	bl sub_08000AA8
	movs r4, #0
	str r4, [sp, #0x294]
	bl sub_0800CE30
	str r4, [sp, #0x29c]
	cmp r0, #0
	beq _0808B0AE
	movs r0, #0xa
	str r0, [sp, #0x29c]
_0808B0AE:
	movs r1, #0
	mov r8, r1
	mov r2, sp
	adds r2, #0x48
	str r2, [sp, #0x2bc]
	mov r3, sp
	adds r3, #0x4c
	str r3, [sp, #0x2c0]
	movs r3, #0
	ldr r4, _0808B134
	mov sl, r4
_0808B0C4:
	movs r6, #0
	mov r1, r8
	lsls r0, r1, #1
	movs r2, #1
	add r2, r8
	mov r9, r2
	add r0, r8
	lsls r0, r0, #4
	ldr r1, [sp, #0x2bc]
	adds r4, r0, r1
	ldr r1, [sp, #0x2c0]
	adds r2, r0, r1
	ldr r1, [sp, #0x29c]
	add r1, r8
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0808B138
	adds r7, r0, r1
	mov r1, sl
	adds r5, r0, r1
_0808B0EE:
	str r3, [r2, #0]
	mov r0, r8
	adds r1, r6, #0
	str r2, [sp, #0x2c4]
	str r3, [sp, #0x2c8]
	bl sub_08058878
	ldr r2, [sp, #0x2c4]
	ldr r3, [sp, #0x2c8]
	cmp r0, #0
	beq _0808B13C
	movs r0, #1
	strh r0, [r4, #0]
	strh r3, [r4, #2]
	b _0808B148
_0808B10C: .4byte 0xFFFFFD34
_0808B110: .4byte gUnk_03001250
_0808B114: .4byte 0x0000FFFD
_0808B118: .4byte gUnk_03001F40
_0808B11C: .4byte gUnk_084EBD38
_0808B120: .4byte gUnk_03005CF4
_0808B124: .4byte 0x00050067
_0808B128: .4byte 0xFFFF0000
_0808B12C: .4byte 0x00005E0A
_0808B130: .4byte 0x00001D03
_0808B134: .4byte gUnk_084F0B10
_0808B138: .4byte gUnk_084F0B12
_0808B13C:
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	ldrh r0, [r5, #0]
	strh r0, [r4, #0]
	ldrh r0, [r7, #0]
	strh r0, [r4, #2]
_0808B148:
	adds r4, #0x10
	adds r2, #0x10
	adds r7, #4
	adds r5, #4
	adds r6, #1
	cmp r6, #2
	bls _0808B0EE
	mov r8, r9
	mov r2, r8
	cmp r2, #9
	bls _0808B0C4
	movs r3, #0
	str r3, [sp, #0x2ac]
	movs r4, #0
	str r4, [sp, #0x2a8]
	movs r0, #0
	str r0, [sp, #0x2a4]
	bl sub_080003F0
	bl sub_080003F0
	bl sub_0800CF90
	bl sub_080003F0
	movs r0, #0
	movs r1, #0x13
	bl sub_0801A664
	bl sub_080003F0
	movs r0, #0x88
	bl sub_08001108
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x2b8]
	ldr r0, _0808B1A8
	bl sub_0800115C
	str r0, [sp, #0x2b4]
	bl sub_08000D8C
	movs r0, #6
	bl sub_0801AB50
	b _0808B1B0
	.2byte 0x0000
_0808B1A8: .4byte sub_0808528C
_0808B1AC:
	bl sub_080003F0
_0808B1B0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808B1AC
_0808B1B8:
	ldr r1, [sp, #0x2a4]
	cmp r1, #0
	bne _0808B22A
	movs r2, #0
	mov r8, r2
	movs r4, #0x30
_0808B1C4:
	mov r3, r8
	cmp r3, #9
	bhi _0808B1F0
	mov r0, r8
	bl sub_080589D8
	cmp r0, #0
	beq _0808B1F0
	movs r0, #0
	str r0, [sp, #0]
	movs r0, #1
	str r0, [sp, #4]
	add r0, sp, #8
	adds r1, r4, #0
	movs r2, #0x10
	movs r3, #0
	bl sub_080659BC
	adds r4, #0x10
	movs r0, #1
	add r8, r0
	b _0808B1C4
_0808B1F0:
	ldr r1, [sp, #0x2a8]
	cmp r1, #0
	beq _0808B210
	ldr r2, [sp, #0x2ac]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, #0xa8
	movs r0, #0
	str r0, [sp, #0]
	ldr r0, [sp, #0x2a0]
	movs r2, #0x72
	movs r3, #0xb
	bl sub_08065230
	b _0808B22A
_0808B210:
	mov r3, r8
	subs r3, #1
	str r3, [sp, #0x298]
	ldr r4, [sp, #0x294]
	lsls r1, r4, #4
	adds r1, #0x30
	ldr r0, [sp, #0x2a8]
	str r0, [sp, #0]
	ldr r0, [sp, #0x2a0]
	movs r2, #0x10
	movs r3, #0xb
	bl sub_08065230
_0808B22A:
	ldr r2, _0808B258
	ldr r1, [sp, #0x2a4]
	cmp r1, #1
	bne _0808B23A
	ldrh r1, [r2, #0]
	ldr r0, _0808B25C
	ands r0, r1
	strh r0, [r2, #0]
_0808B23A:
	ldrh r1, [r2, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808B26E
	ldr r2, [sp, #0x2a8]
	cmp r2, #0
	beq _0808B260
	ldr r3, [sp, #0x2ac]
	cmp r3, #0
	bne _0808B252
	b _0808B36E
_0808B252:
	subs r3, #1
	str r3, [sp, #0x2ac]
	b _0808B2BC
_0808B258: .4byte gUnk_03001308
_0808B25C: .4byte 0x0000FF0F
_0808B260:
	ldr r4, [sp, #0x294]
	cmp r4, #0
	bne _0808B268
	b _0808B36E
_0808B268:
	subs r4, #1
	str r4, [sp, #0x294]
	b _0808B2BC
_0808B26E:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808B296
	ldr r0, [sp, #0x2a8]
	cmp r0, #0
	beq _0808B288
	ldr r1, [sp, #0x2ac]
	cmp r1, #1
	bhi _0808B36E
	adds r1, #1
	str r1, [sp, #0x2ac]
	b _0808B2BC
_0808B288:
	ldr r2, [sp, #0x294]
	ldr r3, [sp, #0x298]
	cmp r2, r3
	bhs _0808B36E
	adds r2, #1
	str r2, [sp, #0x294]
	b _0808B2BC
_0808B296:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808B2AA
	ldr r4, [sp, #0x2a8]
	cmp r4, #0
	bne _0808B36E
	movs r0, #1
	str r0, [sp, #0x2a8]
	b _0808B2BC
_0808B2AA:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0808B2C4
	ldr r1, [sp, #0x2a8]
	cmp r1, #0
	beq _0808B36E
	movs r2, #0
	str r2, [sp, #0x2a8]
_0808B2BC:
	movs r0, #0xe
	bl sub_0805865C
	b _0808B36E
_0808B2C4:
	ldr r0, _0808B2E4
	ldrh r1, [r0, #0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0808B2F4
	ldr r3, [sp, #0x2a8]
	cmp r3, #0
	beq _0808B36E
	ldr r4, [sp, #0x2a4]
	cmp r4, #0
	beq _0808B2E8
	cmp r4, #1
	beq _0808B2EE
	b _0808B32C
	.2byte 0x0000
_0808B2E4: .4byte gUnk_03001324
_0808B2E8:
	movs r0, #1
	str r0, [sp, #0x2a4]
	b _0808B32C
_0808B2EE:
	movs r1, #0
	str r1, [sp, #0x2a4]
	b _0808B32C
_0808B2F4:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _0808B33C
	ldr r2, [sp, #0x2a8]
	cmp r2, #0
	bne _0808B31C
	ldr r3, [sp, #0x2a4]
	cmp r3, #0
	bne _0808B374
	movs r0, #0xf
	bl sub_0805865C
	movs r0, #0x1e
	bl sub_0801AA8C
	ldr r4, [sp, #0x294]
	lsls r4, r4, #1
	mov sl, r4
	b _0808B8CA
_0808B31C:
	ldr r0, [sp, #0x2a4]
	cmp r0, #0
	bne _0808B328
	movs r1, #1
	str r1, [sp, #0x2a4]
	b _0808B32C
_0808B328:
	movs r2, #0
	str r2, [sp, #0x2a4]
_0808B32C:
	movs r0, #0
	movs r1, #0x14
	bl sub_0801A664
	movs r0, #0x62
	bl sub_0805865C
	b _0808B36E
_0808B33C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808B36E
	ldr r3, [sp, #0x2a4]
	cmp r3, #0
	bne _0808B35C
	ldr r4, [sp, #0x2a8]
	cmp r4, #0
	beq _0808B36E
	movs r0, #0
	str r0, [sp, #0x2a8]
	movs r0, #0x10
	bl sub_0805865C
	b _0808B36E
_0808B35C:
	movs r1, #0
	str r1, [sp, #0x2a4]
	movs r0, #0
	movs r1, #0x14
	bl sub_0801A664
	movs r0, #0x10
	bl sub_0805865C
_0808B36E:
	ldr r2, [sp, #0x2a4]
	cmp r2, #0
	beq _0808B37E
_0808B374:
	ldr r3, [sp, #0x2a4]
	cmp r3, #1
	bne _0808B37C
	b _0808B654
_0808B37C:
	b _0808B682
_0808B37E:
	movs r6, #0
	ldr r4, [sp, #0x294]
	lsls r4, r4, #1
	mov sl, r4
	ldr r0, [sp, #0x294]
	add r0, sl
	lsls r0, r0, #4
	ldr r1, [sp, #0x2bc]
	adds r4, r1, r0
	movs r5, #0xa8
_0808B392:
	adds r0, r5, #0
	movs r1, #0x6e
	adds r2, r4, #0
	movs r3, #0
	bl sub_0805FC80
	adds r4, #0x10
	adds r5, #0x18
	adds r6, #1
	cmp r6, #2
	bls _0808B392
	ldr r4, _0808B464
	add r4, sl
	ldrh r0, [r4, #0]
	movs r5, #0xe1
	lsls r5, r5, #4
	adds r1, r5, #0
	bl __udivsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #2
	movs r1, #5
	movs r3, #0
	bl sub_0805FB7C
	ldrh r0, [r4, #0]
	adds r1, r5, #0
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x3c
	bl __udivsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #5
	movs r1, #5
	movs r3, #0
	bl sub_0805FB7C
	movs r0, #8
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0805FB7C
	ldr r0, [sp, #0x294]
	bl sub_08058900
	adds r1, r5, #0
	bl __udivsi3
	adds r2, r0, #0
	movs r0, #2
	movs r1, #8
	movs r3, #0
	bl sub_0805FB7C
	ldr r0, [sp, #0x294]
	bl sub_08058900
	adds r1, r5, #0
	bl __umodsi3
	movs r1, #0x3c
	bl __udivsi3
	adds r2, r0, #0
	movs r0, #5
	movs r1, #8
	movs r3, #0
	bl sub_0805FB7C
	ldr r0, [sp, #0x294]
	bl sub_08058934
	adds r2, r0, #0
	movs r0, #8
	movs r1, #8
	movs r3, #0
	bl sub_0805FB7C
	ldr r2, [sp, #0x2a8]
	cmp r2, #0
	beq _0808B468
	ldr r2, [sp, #0x294]
	add r2, sl
	lsls r2, r2, #4
	ldr r3, [sp, #0x2bc]
	adds r2, r3, r2
	ldr r4, [sp, #0x2ac]
	lsls r0, r4, #4
	adds r2, r2, r0
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r0, #0xf
	movs r1, #0x12
	bl sub_0805FFBC
	b _0808B492
	.2byte 0x0000
_0808B464: .4byte gUnk_084F0C00
_0808B468:
	ldr r1, [sp, #0x294]
	ldr r2, _0808B4A4
	adds r0, r1, r2
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r4, r0, #2
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0801A3D0
_0808B492:
	ldr r3, [sp, #0x294]
	cmp r3, #9
	bhi _0808B540
	lsls r0, r3, #2
	ldr r1, _0808B4A8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0808B4A4: .4byte 0x0000049F
_0808B4A8: .4byte _0808B4AC
_0808B4AC:
	.4byte _0808B4D4
_0808B4B0: .4byte _0808B4E0
_0808B4B4: .4byte _0808B4EC
_0808B4B8: .4byte _0808B4F8
_0808B4BC: .4byte _0808B504
_0808B4C0: .4byte _0808B50C
_0808B4C4: .4byte _0808B518
_0808B4C8: .4byte _0808B524
_0808B4CC: .4byte _0808B530
_0808B4D0: .4byte _0808B53C
_0808B4D4:
	ldr r4, _0808B4DC
	str r4, [sp, #0x2b0]
	b _0808B540
	.2byte 0x0000
_0808B4DC: .4byte gUnk_084AA9E8
_0808B4E0:
	ldr r0, _0808B4E8
	str r0, [sp, #0x2b0]
	b _0808B540
	.2byte 0x0000
_0808B4E8: .4byte gUnk_084AAB38
_0808B4EC:
	ldr r1, _0808B4F4
	str r1, [sp, #0x2b0]
	b _0808B540
	.2byte 0x0000
_0808B4F4: .4byte gUnk_084AAC88
_0808B4F8:
	ldr r2, _0808B500
	str r2, [sp, #0x2b0]
	b _0808B540
	.2byte 0x0000
_0808B500: .4byte gUnk_084AADD8
_0808B504:
	ldr r3, _0808B508
	b _0808B53E
_0808B508: .4byte gUnk_084AAF28
_0808B50C:
	ldr r4, _0808B514
	str r4, [sp, #0x2b0]
	b _0808B540
	.2byte 0x0000
_0808B514: .4byte gUnk_084AB078
_0808B518:
	ldr r0, _0808B520
	str r0, [sp, #0x2b0]
	b _0808B540
	.2byte 0x0000
_0808B520: .4byte gUnk_084AB1C8
_0808B524:
	ldr r1, _0808B52C
	str r1, [sp, #0x2b0]
	b _0808B540
	.2byte 0x0000
_0808B52C: .4byte gUnk_084AB318
_0808B530:
	ldr r2, _0808B538
	str r2, [sp, #0x2b0]
	b _0808B540
	.2byte 0x0000
_0808B538: .4byte gUnk_084AB468
_0808B53C:
	ldr r3, _0808B558
_0808B53E:
	str r3, [sp, #0x2b0]
_0808B540:
	bl sub_0800CE30
	cmp r0, #0
	beq _0808B564
	ldr r4, [sp, #0x2b0]
	ldrh r1, [r4, #0]
	ldr r0, _0808B55C
	ands r0, r1
	movs r1, #0xd8
	muls r1, r0, r1
	ldr r0, _0808B560
	b _0808B572
_0808B558: .4byte gUnk_084AB5B8
_0808B55C: .4byte 0x00000FFF
_0808B560: .4byte gUnk_0848529C
_0808B564:
	ldr r0, [sp, #0x2b0]
	ldrh r1, [r0, #0]
	ldr r0, _0808B640
	ands r0, r1
	movs r1, #0xd8
	muls r1, r0, r1
	ldr r0, _0808B644
_0808B572:
	adds r7, r1, r0
	add r4, sp, #0x228
	adds r0, r7, #0
	adds r0, #0xd4
	ldrh r0, [r0, #0]
	adds r0, #0xa
	movs r1, #0x58
	mov r9, r1
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r3, _0808B648
	adds r0, r0, r3
	ldr r1, [r0, #0]
	movs r0, #1
	negs r0, r0
	mov sl, r0
	movs r2, #0
	mov r8, r2
	str r2, [sp, #0]
	adds r0, r4, #0
	movs r2, #4
	mov r3, sl
	bl sub_08065158
	movs r0, #4
	strb r0, [r4, #0x1c]
	adds r0, r7, #0
	adds r0, #0xd6
	ldrh r0, [r0, #0]
	lsls r0, r0, #5
	ldr r1, [r4, #0xc]
	adds r1, r1, r0
	movs r0, #0x14
	movs r2, #1
	bl sub_08000AF0
	mov r3, r8
	str r3, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x90
	movs r2, #0x38
	movs r3, #1
	bl sub_08065230
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	ldr r6, _0808B64C
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r1, r4, #0
	muls r1, r5, r1
	adds r1, r1, r6
	ldrh r1, [r1, #0x10]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x64
	ldrh r0, [r0, #0]
	mov r4, r9
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, r1, r0
	ldr r0, _0808B648
	adds r1, r1, r0
	add r4, sp, #0x25c
	ldr r1, [r1, #0]
	mov r2, r8
	str r2, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	mov r3, sl
	bl sub_08065158
	mov r3, r8
	str r3, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x60
	movs r2, #0x68
	movs r3, #5
	bl sub_08065230
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x66
	ldrb r0, [r0, #0]
	lsls r0, r0, #5
	ldr r1, [r4, #0xc]
	adds r1, r1, r0
	movs r0, #0x10
	movs r2, #1
	bl sub_08000AF0
	ldr r0, _0808B650
	mov r4, r8
	strh r4, [r0, #8]
	b _0808B682
	.2byte 0x0000
_0808B640: .4byte 0x00000FFF
_0808B644: .4byte gUnk_0847AC64
_0808B648: .4byte gUnk_08479140
_0808B64C: .4byte gUnk_03003CE0
_0808B650: .4byte gUnk_03001250
_0808B654:
	ldr r1, _0808B688
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #8]
	ldr r0, [sp, #0x294]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #4
	ldr r1, [sp, #0x2bc]
	adds r4, r1, r4
	ldr r2, [sp, #0x2ac]
	lsls r0, r2, #4
	adds r4, r4, r0
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r0, #0xf
	movs r1, #0x12
	adds r2, r4, #0
	bl sub_0805FFBC
	adds r0, r4, #0
	bl sub_080815F4
_0808B682:
	bl sub_080003F0
	b _0808B1B8
_0808B688: .4byte gUnk_03001250
_0808B68C:
	movs r6, #0
	ldr r0, [sp, #0x294]
	add r0, sl
	lsls r0, r0, #4
	ldr r3, [sp, #0x2bc]
	adds r4, r3, r0
	movs r5, #0xa8
_0808B69A:
	adds r0, r5, #0
	movs r1, #0x6e
	adds r2, r4, #0
	movs r3, #0
	bl sub_0805FC80
	adds r4, #0x10
	adds r5, #0x18
	adds r6, #1
	cmp r6, #2
	bls _0808B69A
	ldr r4, _0808B780
	add r4, sl
	ldrh r0, [r4, #0]
	movs r5, #0xe1
	lsls r5, r5, #4
	adds r1, r5, #0
	bl __udivsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #2
	movs r1, #5
	movs r3, #0
	bl sub_0805FB7C
	ldrh r0, [r4, #0]
	adds r1, r5, #0
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x3c
	bl __udivsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #5
	movs r1, #5
	movs r3, #0
	bl sub_0805FB7C
	movs r0, #8
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_0805FB7C
	ldr r0, [sp, #0x294]
	bl sub_08058900
	adds r1, r5, #0
	bl __udivsi3
	adds r2, r0, #0
	movs r0, #2
	movs r1, #8
	movs r3, #0
	bl sub_0805FB7C
	ldr r0, [sp, #0x294]
	bl sub_08058900
	adds r1, r5, #0
	bl __umodsi3
	movs r1, #0x3c
	bl __udivsi3
	adds r2, r0, #0
	movs r0, #5
	movs r1, #8
	movs r3, #0
	bl sub_0805FB7C
	ldr r0, [sp, #0x294]
	bl sub_08058934
	adds r2, r0, #0
	movs r0, #8
	movs r1, #8
	movs r3, #0
	bl sub_0805FB7C
	ldr r4, [sp, #0x294]
	ldr r1, _0808B784
	adds r0, r4, r1
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r4, r0, #2
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0801A3D0
	ldr r2, [sp, #0x294]
	cmp r2, #9
	bhi _0808B820
	lsls r0, r2, #2
	ldr r1, _0808B788
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0808B780: .4byte gUnk_084F0C00
_0808B784: .4byte 0x0000049F
_0808B788: .4byte _0808B78C
_0808B78C:
	.4byte _0808B7B4
_0808B790: .4byte _0808B7C0
_0808B794: .4byte _0808B7CC
_0808B798: .4byte _0808B7D8
_0808B79C: .4byte _0808B7E4
_0808B7A0: .4byte _0808B7EC
_0808B7A4: .4byte _0808B7F8
_0808B7A8: .4byte _0808B804
_0808B7AC: .4byte _0808B810
_0808B7B0: .4byte _0808B81C
_0808B7B4:
	ldr r3, _0808B7BC
	str r3, [sp, #0x2b0]
	b _0808B820
	.2byte 0x0000
_0808B7BC: .4byte gUnk_084AA9E8
_0808B7C0:
	ldr r4, _0808B7C8
	str r4, [sp, #0x2b0]
	b _0808B820
	.2byte 0x0000
_0808B7C8: .4byte gUnk_084AAB38
_0808B7CC:
	ldr r0, _0808B7D4
	str r0, [sp, #0x2b0]
	b _0808B820
	.2byte 0x0000
_0808B7D4: .4byte gUnk_084AAC88
_0808B7D8:
	ldr r1, _0808B7E0
	str r1, [sp, #0x2b0]
	b _0808B820
	.2byte 0x0000
_0808B7E0: .4byte gUnk_084AADD8
_0808B7E4:
	ldr r2, _0808B7E8
	b _0808B81E
_0808B7E8: .4byte gUnk_084AAF28
_0808B7EC:
	ldr r3, _0808B7F4
	str r3, [sp, #0x2b0]
	b _0808B820
	.2byte 0x0000
_0808B7F4: .4byte gUnk_084AB078
_0808B7F8:
	ldr r4, _0808B800
	str r4, [sp, #0x2b0]
	b _0808B820
	.2byte 0x0000
_0808B800: .4byte gUnk_084AB1C8
_0808B804:
	ldr r0, _0808B80C
	str r0, [sp, #0x2b0]
	b _0808B820
	.2byte 0x0000
_0808B80C: .4byte gUnk_084AB318
_0808B810:
	ldr r1, _0808B818
	str r1, [sp, #0x2b0]
	b _0808B820
	.2byte 0x0000
_0808B818: .4byte gUnk_084AB468
_0808B81C:
	ldr r2, _0808B958
_0808B81E:
	str r2, [sp, #0x2b0]
_0808B820:
	ldr r3, [sp, #0x2b0]
	ldrh r1, [r3, #0]
	ldr r0, _0808B95C
	ands r0, r1
	movs r1, #0xd8
	muls r1, r0, r1
	ldr r0, _0808B960
	adds r7, r1, r0
	add r4, sp, #0x228
	ldr r0, _0808B964
	mov r9, r0
	adds r0, r7, #0
	adds r0, #0xd4
	ldrh r0, [r0, #0]
	adds r0, #0xa
	movs r6, #0x58
	muls r0, r6, r0
	add r0, r9
	ldr r1, [r0, #0]
	movs r2, #1
	negs r2, r2
	mov r8, r2
	movs r5, #0
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r2, #4
	mov r3, r8
	bl sub_08065158
	movs r0, #4
	strb r0, [r4, #0x1c]
	adds r0, r7, #0
	adds r0, #0xd6
	ldrh r0, [r0, #0]
	lsls r0, r0, #5
	ldr r1, [r4, #0xc]
	adds r1, r1, r0
	movs r0, #0x14
	movs r2, #1
	bl sub_08000AF0
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x90
	movs r2, #0x38
	movs r3, #1
	bl sub_08065230
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	ldr r3, _0808B968
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r4, #0
	muls r1, r2, r1
	adds r1, r1, r3
	ldrh r1, [r1, #0x10]
	lsls r1, r1, #2
	muls r0, r2, r0
	adds r0, r0, r3
	adds r0, #0x64
	ldrh r0, [r0, #0]
	muls r0, r6, r0
	adds r1, r1, r0
	add r1, r9
	add r4, sp, #0x25c
	ldr r1, [r1, #0]
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	mov r3, r8
	bl sub_08065158
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x60
	movs r2, #0x68
	movs r3, #5
	bl sub_08065230
	bl sub_080003F0
_0808B8CA:
	bl sub_0801AAE0
	cmp r0, #0
	bne _0808B8D4
	b _0808B68C
_0808B8D4:
	bl sub_08000E48
	ldr r0, [sp, #0x2b4]
	bl sub_0800115C
	ldr r0, [sp, #0x2b8]
	bl sub_08001108
	ldr r1, _0808B96C
	movs r0, #0
	strh r0, [r1, #0]
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xc]
	movs r1, #0x14
	bl sub_0801A664
	bl sub_0800CFA4
	bl sub_080008C8
	movs r1, #3
	bl __umodsi3
	mov r8, r0
	ldr r0, _0808B970
	ldr r1, [r0, #0]
	movs r0, #1
	str r0, [r1, #0x40]
	mov r3, r8
	lsls r0, r3, #8
	ldr r4, [sp, #0x294]
	orrs r0, r4
	movs r3, #0x80
	lsls r3, r3, #8
	adds r2, r3, #0
	orrs r0, r2
	strh r0, [r1, #0x36]
	adds r0, r4, #0
	add r0, sl
	add r0, r8
	lsls r0, r0, #4
	adds r1, #0x5c
	ldr r4, [sp, #0x2bc]
	adds r0, r4, r0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r0, _0808B974
	bl sub_08000420
	movs r3, #0xb3
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0808B958: .4byte gUnk_084AB5B8
_0808B95C: .4byte 0x00000FFF
_0808B960: .4byte gUnk_0847AC64
_0808B964: .4byte gUnk_08479140
_0808B968: .4byte gUnk_03003CE0
_0808B96C: .4byte gUnk_03001250
_0808B970: .4byte gUnk_03005CF4
_0808B974: .4byte 0x02688420
	thumb_func_end sub_0808AFE8
