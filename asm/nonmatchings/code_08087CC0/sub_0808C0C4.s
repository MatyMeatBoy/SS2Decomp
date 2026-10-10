	thumb_func_start sub_0808C0C4
sub_0808C0C4: @ 0x0808C0C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x170
	ldr r0, _0808C15C
	movs r4, #0
	strh r4, [r0, #2]
	strh r4, [r0, #0]
	strh r4, [r0, #6]
	strh r4, [r0, #4]
	strh r4, [r0, #0xa]
	strh r4, [r0, #8]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0xc]
	movs r0, #0x38
	movs r1, #0x1e
	bl sub_0800B974
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r0, #0xf
	str r0, [sp, #0]
	movs r0, #0x35
	movs r1, #0x1f
	movs r3, #0
	bl sub_0800B650
	add r0, sp, #0x18
	ldr r1, _0808C160
	movs r3, #1
	negs r3, r3
	str r4, [sp, #0]
	movs r2, #9
	bl sub_08065158
	bl sub_080653CC
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
	ldr r1, _0808C164
	add r4, sp, #0x15c
	ldr r0, [r4, #0]
	ands r0, r1
	ldr r1, _0808C168
	orrs r0, r1
	str r0, [r4, #0]
	adds r5, r4, #0
	movs r0, #2
	adds r1, r5, #0
	bl sub_08000AA8
	ldr r0, _0808C16C
	strh r0, [r4, #0]
	movs r0, #3
	adds r1, r5, #0
	bl sub_08000AA8
	movs r6, #0
	add r5, sp, #0x80
	ldr r0, _0808C170
	mov r8, r0
	ldr r7, _0808C174
	b _0808C1AE
	.2byte 0x0000
_0808C15C: .4byte gUnk_03001250
_0808C160: .4byte 0x00050067
_0808C164: .4byte 0xFFFF0000
_0808C168: .4byte 0x00001E0A
_0808C16C: .4byte 0x00001F03
_0808C170: .4byte gUnk_08479140
_0808C174: .4byte gUnk_03003CE0
_0808C178:
	movs r0, #0x34
	adds r4, r6, #0
	muls r4, r0, r4
	adds r4, r5, r4
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r1, [r0, #0x10]
	lsls r1, r1, #2
	adds r0, #0x64
	ldrh r2, [r0, #0]
	movs r0, #0x58
	muls r0, r2, r0
	adds r1, r1, r0
	add r1, r8
	ldr r1, [r1, #0]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	negs r3, r3
	bl sub_08065158
	strb r6, [r4, #0x1c]
	adds r6, #1
_0808C1AE:
	bl sub_08002164
	cmp r6, r0
	blo _0808C178
	ldr r0, _0808C1C8
	ldr r0, [r0, #0]
	cmp r0, #4
	bhi _0808C238
	lsls r0, r0, #2
	ldr r1, _0808C1CC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0808C1C8: .4byte gUnk_03003470
_0808C1CC: .4byte _0808C1D0
_0808C1D0:
	.4byte _0808C1E4
_0808C1D4: .4byte _0808C1F0
_0808C1D8: .4byte _0808C1FC
_0808C1DC: .4byte _0808C208
_0808C1E0: .4byte _0808C228
_0808C1E4:
	add r0, sp, #0x4c
	ldr r1, _0808C1EC
	b _0808C20C
	.2byte 0x0000
_0808C1EC: .4byte 0x00050002
_0808C1F0:
	add r0, sp, #0x4c
	ldr r1, _0808C1F8
	b _0808C20C
	.2byte 0x0000
_0808C1F8: .4byte 0x0005015B
_0808C1FC:
	add r0, sp, #0x4c
	ldr r1, _0808C204
	b _0808C20C
	.2byte 0x0000
_0808C204: .4byte 0x0005015C
_0808C208:
	add r0, sp, #0x4c
	ldr r1, _0808C21C
_0808C20C:
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r2, #0
	str r2, [sp, #0]
	bl sub_08065158
	b _0808C238
	.2byte 0x0000
_0808C21C: .4byte 0x0005015D
_0808C220:
	movs r0, #0x10
	bl sub_0805865C
	b _0808C2A4
_0808C228:
	add r0, sp, #0x4c
	ldr r1, _0808C28C
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r2, #0
	str r2, [sp, #0]
	bl sub_08065158
_0808C238:
	movs r1, #0
	str r1, [sp, #0x160]
	bl sub_080003F0
	bl sub_080003F0
	bl sub_0800CF90
	bl sub_080003F0
	movs r0, #0
	movs r1, #0x13
	bl sub_0801A664
	bl sub_080003F0
	movs r0, #6
	bl sub_0801AB50
	bl sub_080020F4
	ldr r2, _0808C290
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	add r2, sp, #0x160
	ldrh r2, [r2, #0]
	strh r2, [r0, #0x1c]
	movs r0, #0x88
	bl sub_08001108
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x168]
	ldr r0, _0808C294
	bl sub_0800115C
	str r0, [sp, #0x164]
	bl sub_08000D8C
	b _0808C29C
_0808C28C: .4byte 0x0005015E
_0808C290: .4byte gUnk_03003CE0
_0808C294: .4byte sub_0808528C
_0808C298:
	bl sub_080003F0
_0808C29C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808C298
_0808C2A4:
	bl sub_080020F4
	ldr r6, _0808C304
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x90
	adds r0, r0, r1
	movs r4, #0
	str r4, [r0, #0]
	bl sub_080020F4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x8c
	adds r0, r0, r1
	str r4, [r0, #0]
	ldr r0, _0808C308
	strh r4, [r0, #0]
_0808C2CC:
	ldr r0, _0808C30C
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
	movs r6, #0
	movs r1, #0
	add r0, sp, #0x150
_0808C2F2:
	strh r1, [r0, #0]
	adds r0, #2
	adds r6, #1
	cmp r6, #4
	bls _0808C2F2
	movs r6, #0
	mov r9, r6
	b _0808C3BA
	.2byte 0x0000
_0808C304: .4byte gUnk_03003CE0
_0808C308: .4byte gUnk_03001324
_0808C30C: .4byte 0x001401F6
_0808C310:
	ldr r3, _0808C394
	mov sl, r3
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, sl
	add r0, r9
	mov r8, r0
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r4, r0, #4
	cmp r4, #0
	bne _0808C3B2
	add r7, sp, #0x150
	ldrb r1, [r1, #3]
	lsrs r1, r1, #4
	lsls r0, r1, #1
	adds r0, r7, r0
	ldrh r0, [r0, #0]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r2, r1, #3
	adds r2, r2, r1
	adds r2, r2, r3
	lsls r2, r2, #1
	ldr r1, _0808C398
	adds r0, r2, r1
	ldrh r0, [r0, #0]
	adds r1, #2
	adds r1, r2, r1
	ldrh r1, [r1, #0]
	ldr r3, _0808C39C
	adds r2, r2, r3
	ldrh r2, [r2, #0]
	str r4, [sp, #0]
	add r5, sp, #0x80
	movs r3, #0x34
	adds r4, r6, #0
	muls r4, r3, r4
	adds r5, r5, r4
	adds r3, r5, #0
	adds r3, #0x1c
	str r3, [sp, #4]
	add r3, sp, #0x88
	adds r3, r3, r4
	ldr r3, [r3, #0]
	str r3, [sp, #8]
	ldr r3, [r5, #0]
	str r3, [sp, #0xc]
	movs r3, #0
	bl sub_08007870
	bl sub_080020F4
	cmp r0, r6
	bne _0808C3A0
	mov r0, r9
	add r0, sl
	movs r2, #0x1c
	ldrsh r1, [r0, r2]
	lsls r1, r1, #1
	adds r1, r7, r1
	ldrh r0, [r1, #0]
	adds r0, #1
	strh r0, [r1, #0]
	b _0808C3B2
	.2byte 0x0000
_0808C394: .4byte gUnk_03003CE0
_0808C398: .4byte gUnk_084F0C30
_0808C39C: .4byte gUnk_084F0C34
_0808C3A0:
	mov r3, r8
	ldr r0, [r3, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r7, r0
	ldrh r1, [r0, #0]
	adds r1, #1
	strh r1, [r0, #0]
_0808C3B2:
	movs r0, #0xa6
	lsls r0, r0, #1
	add r9, r0
	adds r6, #1
_0808C3BA:
	bl sub_08002164
	cmp r6, r0
	blo _0808C310
	bl sub_080020F4
	adds r6, r0, #0
	ldr r0, _0808C3F8
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808C400
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, #0
	muls r0, r1, r0
	ldr r2, _0808C3FC
	adds r4, r0, r2
	ldrh r0, [r4, #0x1c]
	movs r3, #0x1c
	ldrsh r1, [r4, r3]
	cmp r1, #1
	beq _0808C3F0
	cmp r1, #3
	beq _0808C3F0
	b _0808C6AE
_0808C3F0:
	subs r0, #1
	strh r0, [r4, #0x1c]
	b _0808C49A
	.2byte 0x0000
_0808C3F8: .4byte gUnk_03001308
_0808C3FC: .4byte gUnk_03003CE0
_0808C400:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808C430
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, #0
	muls r0, r1, r0
	ldr r2, _0808C42C
	adds r4, r0, r2
	ldrh r0, [r4, #0x1c]
	movs r3, #0x1c
	ldrsh r1, [r4, r3]
	cmp r1, #0
	beq _0808C424
	cmp r1, #2
	beq _0808C424
	b _0808C6AE
_0808C424:
	adds r0, #1
	strh r0, [r4, #0x1c]
	b _0808C49A
	.2byte 0x0000
_0808C42C: .4byte gUnk_03003CE0
_0808C430:
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0808C468
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, #0
	muls r0, r1, r0
	ldr r2, _0808C454
	adds r4, r0, r2
	ldrh r0, [r4, #0x1c]
	cmp r0, #1
	bhi _0808C458
	movs r0, #4
	strh r0, [r4, #0x1c]
	b _0808C49A
_0808C454: .4byte gUnk_03003CE0
_0808C458:
	subs r1, r0, #2
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0808C464
	b _0808C6AE
_0808C464:
	strh r1, [r4, #0x1c]
	b _0808C49A
_0808C468:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808C4A2
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, #0
	muls r0, r1, r0
	ldr r2, _0808C48C
	adds r4, r0, r2
	ldrh r2, [r4, #0x1c]
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #1
	bhi _0808C490
	adds r0, r2, #2
	strh r0, [r4, #0x1c]
	b _0808C49A
_0808C48C: .4byte gUnk_03003CE0
_0808C490:
	asrs r0, r1, #0x10
	cmp r0, #4
	beq _0808C498
	b _0808C6AE
_0808C498:
	strh r3, [r4, #0x1c]
_0808C49A:
	movs r0, #0xe
	bl sub_0805865C
	b _0808C6AE
_0808C4A2:
	ldr r0, _0808C518
	ldrh r0, [r0, #0]
	cmp r0, #1
	beq _0808C4AC
	b _0808C6AE
_0808C4AC:
	add r1, sp, #0x150
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r0, r6, #0
	muls r0, r3, r0
	ldr r2, _0808C51C
	adds r0, r0, r2
	movs r3, #0x1c
	ldrsh r0, [r0, r3]
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r4, [r1, #0]
	bl sub_08002164
	cmp r4, r0
	blt _0808C4CE
	b _0808C6A8
_0808C4CE:
	movs r6, #0
_0808C4D0:
	ldr r0, _0808C520
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
	movs r5, #0
	adds r6, #1
	mov sl, r6
	movs r1, #0
	add r0, sp, #0x150
_0808C4FA:
	strh r1, [r0, #0]
	adds r0, #2
	adds r5, #1
	cmp r5, #4
	bls _0808C4FA
	movs r6, #0
	ldr r0, _0808C524
	mov r8, r0
	movs r1, #0xa8
	lsls r1, r1, #1
	add r1, sp
	mov r9, r1
	ldr r7, _0808C528
	b _0808C58C
	.2byte 0x0000
_0808C518: .4byte gUnk_03001324
_0808C51C: .4byte gUnk_03003CE0
_0808C520: .4byte 0x001401F6
_0808C524: .4byte gUnk_084F0C30
_0808C528: .4byte gUnk_03003E28
_0808C52C:
	ldr r1, [r7, #0]
	ldrh r0, [r1, #0]
	lsrs r4, r0, #4
	cmp r4, #0
	bne _0808C584
	ldrb r3, [r1, #3]
	lsrs r3, r3, #4
	lsls r0, r3, #1
	add r0, r9
	ldrh r0, [r0, #0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r2, r3, #3
	adds r2, r2, r3
	adds r2, r2, r1
	lsls r2, r2, #1
	mov r3, r8
	adds r0, r2, r3
	ldrh r0, [r0, #0]
	mov r1, r8
	adds r1, #2
	adds r1, r2, r1
	ldrh r1, [r1, #0]
	ldr r3, _0808C5B8
	adds r2, r2, r3
	ldrh r2, [r2, #0]
	str r4, [sp, #0]
	add r4, sp, #0x80
	movs r3, #0x34
	adds r5, r6, #0
	muls r5, r3, r5
	adds r4, r4, r5
	adds r3, r4, #0
	adds r3, #0x1c
	str r3, [sp, #4]
	add r3, sp, #0x88
	adds r3, r3, r5
	ldr r3, [r3, #0]
	str r3, [sp, #8]
	ldr r3, [r4, #0]
	str r3, [sp, #0xc]
	movs r3, #0
	bl sub_08007870
_0808C584:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r7, r7, r0
	adds r6, #1
_0808C58C:
	bl sub_08002164
	cmp r6, r0
	blo _0808C52C
	mov r6, sl
	bl sub_080003F0
	cmp r6, #7
	bls _0808C4D0
	movs r5, #0
	movs r1, #0
	add r0, sp, #0x150
_0808C5A4:
	strh r1, [r0, #0]
	adds r0, #2
	adds r5, #1
	cmp r5, #4
	bls _0808C5A4
	movs r5, #0
	add r7, sp, #0x150
	movs r2, #0
	b _0808C60C
	.2byte 0x0000
_0808C5B8: .4byte gUnk_084F0C34
_0808C5BC:
	ldr r6, _0808C5F0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	adds r4, r2, r0
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _0808C604
	str r2, [sp, #0x16c]
	bl sub_080020F4
	ldr r2, [sp, #0x16c]
	cmp r5, r0
	bne _0808C5F4
	adds r0, r2, r6
	movs r3, #0x1c
	ldrsh r1, [r0, r3]
	lsls r1, r1, #1
	adds r1, r7, r1
	ldrh r0, [r1, #0]
	adds r0, #1
	strh r0, [r1, #0]
	b _0808C604
	.2byte 0x0000
_0808C5F0: .4byte gUnk_03003CE0
_0808C5F4:
	ldr r0, [r4, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r7, r0
	ldrh r1, [r0, #0]
	adds r1, #1
	strh r1, [r0, #0]
_0808C604:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r2, r0
	adds r5, #1
_0808C60C:
	str r2, [sp, #0x16c]
	bl sub_08002164
	ldr r2, [sp, #0x16c]
	cmp r5, r0
	blo _0808C5BC
	movs r6, #0
	movs r5, #0
	add r1, sp, #0x150
_0808C61E:
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _0808C626
	adds r6, #1
_0808C626:
	adds r1, #2
	adds r5, #1
	cmp r5, #3
	bls _0808C61E
	cmp r6, #1
	bls _0808C6A0
	bl sub_080020F4
	ldr r6, _0808C67C
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	adds r0, #0x90
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r1, #0]
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	cmp r0, #4
	beq _0808C680
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	adds r1, r4, #0
	muls r1, r5, r1
	adds r1, r1, r6
	muls r0, r5, r0
	adds r0, r0, r6
	ldrb r0, [r0, #0x1c]
	adds r0, #3
	adds r1, #0x68
	strb r0, [r1, #0]
	b _0808C68E
	.2byte 0x0000
_0808C67C: .4byte gUnk_03003CE0
_0808C680:
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x68
	movs r1, #0
	strb r1, [r0, #0]
_0808C68E:
	movs r0, #0xf
	bl sub_0805865C
	ldr r1, _0808C69C
	movs r0, #0
	strh r0, [r1, #0]
	b _0808C6B4
_0808C69C: .4byte gUnk_03001324
_0808C6A0:
	movs r0, #0x61
	bl sub_0805865C
	b _0808C6AE
_0808C6A8:
	movs r0, #0x61
	bl sub_0805865C
_0808C6AE:
	bl sub_080003F0
	b _0808C2CC
_0808C6B4:
	ldr r0, _0808C6D4
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808C6D8
	ldr r2, [sp, #0x160]
	cmp r2, #1
	bne _0808C710
	movs r3, #0
	str r3, [sp, #0x160]
	movs r0, #0xc6
	bl sub_0805865C
	b _0808C710
	.2byte 0x0000
_0808C6D4: .4byte gUnk_03001324
_0808C6D8:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808C6F2
	ldr r0, [sp, #0x160]
	cmp r0, #0
	bne _0808C710
	movs r1, #1
	str r1, [sp, #0x160]
	movs r0, #0xc7
	bl sub_0805865C
	b _0808C710
_0808C6F2:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _0808C70A
	ldr r2, [sp, #0x160]
	cmp r2, #0
	beq _0808C702
	b _0808C220
_0808C702:
	movs r0, #0xf
	bl sub_0805865C
	b _0808C944
_0808C70A:
	cmp r0, #2
	bne _0808C710
	b _0808C220
_0808C710:
	ldr r0, _0808C794
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
	add r6, sp, #0x4c
	mov r2, sp
	adds r2, #0x12
	add r5, sp, #0x14
	mov r3, sp
	adds r3, #0x16
	movs r4, #1
	str r4, [sp, #0]
	adds r0, r6, #0
	movs r1, #4
	bl sub_08065370
	str r4, [sp, #0]
	adds r0, r6, #0
	movs r1, #5
	add r2, sp, #0x10
	adds r3, r5, #0
	bl sub_08065370
	ldr r3, [sp, #0x160]
	cmp r3, #0
	beq _0808C798
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r6, #0
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #9
	bl sub_08065230
	add r0, sp, #0x10
	ldrh r0, [r0, #2]
	str r0, [sp, #0]
	adds r0, r6, #0
	movs r1, #0x88
	movs r2, #0x78
	movs r3, #5
	bl sub_08065264
	add r0, sp, #0x10
	ldrh r0, [r0, #0]
	str r0, [sp, #0]
	adds r0, r6, #0
	movs r1, #0x68
	movs r2, #0x78
	movs r3, #4
	bl sub_08065230
	b _0808C7CC
	.2byte 0x0000
_0808C794: .4byte 0x001401F7
_0808C798:
	ldr r0, [sp, #0x160]
	str r0, [sp, #0]
	adds r0, r6, #0
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #8
	bl sub_08065230
	add r0, sp, #0x10
	ldrh r0, [r0, #2]
	str r0, [sp, #0]
	adds r0, r6, #0
	movs r1, #0x88
	movs r2, #0x78
	movs r3, #5
	bl sub_08065230
	add r0, sp, #0x10
	ldrh r0, [r0, #0]
	str r0, [sp, #0]
	adds r0, r6, #0
	movs r1, #0x68
	movs r2, #0x78
	movs r3, #4
	bl sub_08065264
_0808C7CC:
	movs r6, #0
	movs r1, #0
	add r0, sp, #0x150
_0808C7D2:
	strh r1, [r0, #0]
	adds r0, #2
	adds r6, #1
	cmp r6, #4
	bls _0808C7D2
	movs r6, #0
	ldr r1, _0808C7F4
	mov r9, r1
	movs r2, #0xa8
	lsls r2, r2, #1
	add r2, sp
	mov r8, r2
	movs r3, #4
	add r3, r9
	mov sl, r3
	b _0808C86A
	.2byte 0x0000
_0808C7F4: .4byte gUnk_084F0C30
_0808C7F8:
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r6, r0
	ldr r1, _0808C878
	adds r7, r0, r1
	ldr r1, [r7, #0]
	ldrh r0, [r1, #0]
	lsrs r4, r0, #4
	cmp r4, #0
	bne _0808C868
	ldrb r1, [r1, #3]
	lsrs r1, r1, #4
	lsls r0, r1, #1
	add r0, r8
	ldrh r0, [r0, #0]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r2, r1, #3
	adds r2, r2, r1
	adds r2, r2, r3
	lsls r2, r2, #1
	mov r3, r9
	adds r0, r2, r3
	ldrh r0, [r0, #0]
	mov r1, r9
	adds r1, #2
	adds r1, r2, r1
	ldrh r1, [r1, #0]
	add r2, sl
	ldrh r2, [r2, #0]
	str r4, [sp, #0]
	add r5, sp, #0x80
	movs r3, #0x34
	adds r4, r6, #0
	muls r4, r3, r4
	adds r5, r5, r4
	adds r3, r5, #0
	adds r3, #0x1c
	str r3, [sp, #4]
	add r3, sp, #0x88
	adds r3, r3, r4
	ldr r3, [r3, #0]
	str r3, [sp, #8]
	ldr r3, [r5, #0]
	str r3, [sp, #0xc]
	movs r3, #0
	bl sub_08007870
	ldr r0, [r7, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r0, #0]
	adds r1, #1
	strh r1, [r0, #0]
_0808C868:
	adds r6, #1
_0808C86A:
	bl sub_08002164
	cmp r6, r0
	blo _0808C7F8
	bl sub_080003F0
	b _0808C6B4
_0808C878: .4byte gUnk_03003E28
_0808C87C:
	movs r6, #0
	movs r1, #0
	add r0, sp, #0x150
_0808C882:
	strh r1, [r0, #0]
	adds r0, #2
	adds r6, #1
	cmp r6, #4
	bls _0808C882
	movs r6, #0
	ldr r0, _0808C8A4
	mov r9, r0
	movs r1, #0xa8
	lsls r1, r1, #1
	add r1, sp
	mov r8, r1
	movs r2, #4
	add r2, r9
	mov sl, r2
	b _0808C918
	.2byte 0x0000
_0808C8A4: .4byte gUnk_084F0C30
_0808C8A8:
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r6, r0
	ldr r3, _0808C950
	adds r7, r0, r3
	ldr r1, [r7, #0]
	ldrh r0, [r1, #0]
	lsrs r4, r0, #4
	cmp r4, #0
	bne _0808C916
	ldrb r1, [r1, #3]
	lsrs r1, r1, #4
	lsls r0, r1, #1
	add r0, r8
	ldrh r0, [r0, #0]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r2, r1, #3
	adds r2, r2, r1
	adds r2, r2, r3
	lsls r2, r2, #1
	mov r1, r9
	adds r0, r2, r1
	ldrh r0, [r0, #0]
	adds r1, #2
	adds r1, r2, r1
	ldrh r1, [r1, #0]
	add r2, sl
	ldrh r2, [r2, #0]
	str r4, [sp, #0]
	add r5, sp, #0x80
	movs r3, #0x34
	adds r4, r6, #0
	muls r4, r3, r4
	adds r5, r5, r4
	adds r3, r5, #0
	adds r3, #0x1c
	str r3, [sp, #4]
	add r3, sp, #0x88
	adds r3, r3, r4
	ldr r3, [r3, #0]
	str r3, [sp, #8]
	ldr r3, [r5, #0]
	str r3, [sp, #0xc]
	movs r3, #0
	bl sub_08007870
	ldr r0, [r7, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r0, #0]
	adds r1, #1
	strh r1, [r0, #0]
_0808C916:
	adds r6, #1
_0808C918:
	bl sub_08002164
	cmp r6, r0
	blo _0808C8A8
	ldr r0, _0808C954
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
	bl sub_080003F0
_0808C944:
	bl sub_08067C18
	cmp r0, #0
	beq _0808C87C
	b _0808CA22
	.2byte 0x0000
_0808C950: .4byte gUnk_03003E28
_0808C954: .4byte 0x001401F8
_0808C958:
	movs r6, #0
	movs r1, #0
	add r0, sp, #0x150
_0808C95E:
	strh r1, [r0, #0]
	adds r0, #2
	adds r6, #1
	cmp r6, #4
	bls _0808C95E
	movs r6, #0
	ldr r2, _0808C980
	mov r9, r2
	movs r3, #0xa8
	lsls r3, r3, #1
	add r3, sp
	mov r8, r3
	movs r0, #4
	add r0, r9
	mov sl, r0
	b _0808C9F6
	.2byte 0x0000
_0808C980: .4byte gUnk_084F0C30
_0808C984:
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r6, r0
	ldr r1, _0808CA50
	adds r7, r0, r1
	ldr r1, [r7, #0]
	ldrh r0, [r1, #0]
	lsrs r4, r0, #4
	cmp r4, #0
	bne _0808C9F4
	ldrb r1, [r1, #3]
	lsrs r1, r1, #4
	lsls r0, r1, #1
	add r0, r8
	ldrh r0, [r0, #0]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r2, r1, #3
	adds r2, r2, r1
	adds r2, r2, r3
	lsls r2, r2, #1
	mov r3, r9
	adds r0, r2, r3
	ldrh r0, [r0, #0]
	mov r1, r9
	adds r1, #2
	adds r1, r2, r1
	ldrh r1, [r1, #0]
	add r2, sl
	ldrh r2, [r2, #0]
	str r4, [sp, #0]
	add r5, sp, #0x80
	movs r3, #0x34
	adds r4, r6, #0
	muls r4, r3, r4
	adds r5, r5, r4
	adds r3, r5, #0
	adds r3, #0x1c
	str r3, [sp, #4]
	add r3, sp, #0x88
	adds r3, r3, r4
	ldr r3, [r3, #0]
	str r3, [sp, #8]
	ldr r3, [r5, #0]
	str r3, [sp, #0xc]
	movs r3, #0
	bl sub_08007870
	ldr r0, [r7, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r0, #0]
	adds r1, #1
	strh r1, [r0, #0]
_0808C9F4:
	adds r6, #1
_0808C9F6:
	bl sub_08002164
	cmp r6, r0
	blo _0808C984
	ldr r0, _0808CA54
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
	bl sub_080003F0
_0808CA22:
	bl sub_08067C08
	cmp r0, #0
	beq _0808C958
	bl sub_08067BF8
	bl sub_08002204
	cmp r0, #0
	beq _0808CA40
	ldr r0, _0808CA58
	adds r0, #0x90
	movs r1, #0x80
	lsls r1, r1, #2
	str r1, [r0, #0]
_0808CA40:
	bl sub_0806617C
	bl sub_08066220
	movs r0, #0x1e
	bl sub_0801AA8C
	b _0808CB04
_0808CA50: .4byte gUnk_03003E28
_0808CA54: .4byte 0x001401F8
_0808CA58: .4byte gUnk_03003CE0
_0808CA5C:
	movs r6, #0
	movs r1, #0
	add r0, sp, #0x150
_0808CA62:
	strh r1, [r0, #0]
	adds r0, #2
	adds r6, #1
	cmp r6, #4
	bls _0808CA62
	movs r6, #0
	ldr r0, _0808CA84
	mov r9, r0
	movs r1, #0xa8
	lsls r1, r1, #1
	add r1, sp
	mov r8, r1
	movs r2, #4
	add r2, r9
	mov sl, r2
	b _0808CAF8
	.2byte 0x0000
_0808CA84: .4byte gUnk_084F0C30
_0808CA88:
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r6, r0
	ldr r3, _0808CB4C
	adds r7, r0, r3
	ldr r1, [r7, #0]
	ldrh r0, [r1, #0]
	lsrs r4, r0, #4
	cmp r4, #0
	bne _0808CAF6
	ldrb r1, [r1, #3]
	lsrs r1, r1, #4
	lsls r0, r1, #1
	add r0, r8
	ldrh r0, [r0, #0]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r2, r1, #3
	adds r2, r2, r1
	adds r2, r2, r3
	lsls r2, r2, #1
	mov r1, r9
	adds r0, r2, r1
	ldrh r0, [r0, #0]
	adds r1, #2
	adds r1, r2, r1
	ldrh r1, [r1, #0]
	add r2, sl
	ldrh r2, [r2, #0]
	str r4, [sp, #0]
	add r5, sp, #0x80
	movs r3, #0x34
	adds r4, r6, #0
	muls r4, r3, r4
	adds r5, r5, r4
	adds r3, r5, #0
	adds r3, #0x1c
	str r3, [sp, #4]
	add r3, sp, #0x88
	adds r3, r3, r4
	ldr r3, [r3, #0]
	str r3, [sp, #8]
	ldr r3, [r5, #0]
	str r3, [sp, #0xc]
	movs r3, #0
	bl sub_08007870
	ldr r0, [r7, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r0, #0]
	adds r1, #1
	strh r1, [r0, #0]
_0808CAF6:
	adds r6, #1
_0808CAF8:
	bl sub_08002164
	cmp r6, r0
	blo _0808CA88
	bl sub_080003F0
_0808CB04:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808CA5C
	movs r0, #0
	movs r1, #0x14
	bl sub_0801A664
	bl sub_0800CFA4
	ldr r0, _0808CB50
	ldr r1, [r0, #0]
	movs r0, #1
	str r0, [r1, #0x40]
	movs r0, #0
	strh r0, [r1, #0x36]
	bl sub_08000E48
	ldr r0, [sp, #0x164]
	bl sub_0800115C
	ldr r0, [sp, #0x168]
	bl sub_08001108
	ldr r0, _0808CB54
	bl sub_08000420
	add sp, #0x170
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0808CB4C: .4byte gUnk_03003E28
_0808CB50: .4byte gUnk_03005CF4
_0808CB54: .4byte 0x02688420
	thumb_func_end sub_0808C0C4
