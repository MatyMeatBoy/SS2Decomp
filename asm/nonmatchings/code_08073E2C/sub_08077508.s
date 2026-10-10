	thumb_func_start sub_08077508
sub_08077508: @ 0x08077508
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	str r0, [sp, #0x50]
	mov r9, r1
	bl sub_080020F4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x78]
	ldr r1, _08077598
	ldr r2, [sp, #0x50]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r6, r1, r0
	ldr r3, _0807759C
	adds r0, r6, r3
	ldrb r0, [r0, #0]
	cmp r0, #3
	beq _080775AC
	ldr r4, _080775A0
	movs r0, #0xb6
	lsls r0, r0, #2
	adds r5, r6, r0
	ldrh r0, [r5, #0]
	adds r0, #0xa
	movs r1, #0x58
	mov sl, r1
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r4, #0x2c
	adds r0, r0, r4
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	ldrh r0, [r5, #0]
	ldr r3, _080775A4
	adds r1, r6, r3
	ldrh r1, [r1, #0]
	bl sub_08019D7C
	add r1, sp, #0x10
	strb r0, [r1, #0x1c]
	ldrh r0, [r5, #0]
	adds r0, #0xa
	mov r5, sl
	muls r5, r0, r5
	adds r0, r5, #0
	adds r0, r0, r4
	ldr r1, [r0, #0]
	ldr r0, _080775A8
	movs r2, #8
	str r2, [sp, #0x5c]
	cmp r1, r0
	bne _080775CA
	movs r3, #0x10
	str r3, [sp, #0x5c]
	b _080775CA
_08077598: .4byte gUnk_030056F4
_0807759C: .4byte 0x00000226
_080775A0: .4byte gUnk_08479140
_080775A4: .4byte 0x000002DA
_080775A8: .4byte 0x000500C0
_080775AC:
	ldr r1, _080775F8
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	add r0, sp, #0x30
	add r5, sp, #0x50
	ldrb r5, [r5, #0]
	strb r5, [r0, #0]
	movs r0, #0x40
	str r0, [sp, #0x5c]
_080775CA:
	movs r1, #3
	str r1, [sp, #0x68]
	movs r0, #0xf
	mov r2, r9
	ands r2, r0
	str r2, [sp, #0x58]
	mov r3, r9
	lsrs r3, r3, #0x10
	mov r9, r3
	cmp r3, #3
	bls _08077604
	ldr r0, _080775FC
	lsls r1, r3, #1
	add r1, r9
	lsls r1, r1, #3
	subs r1, r1, r3
	lsls r1, r1, #5
	ldr r5, _08077600
	adds r1, r1, r5
	ldr r0, [r0, #0]
	adds r7, r0, r1
	mov r0, r9
	b _08077618
_080775F8: .4byte 0x0005001E
_080775FC: .4byte gUnk_030056F4
_08077600: .4byte 0xFFFFF480
_08077604:
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, r9
	muls r1, r0, r1
	ldr r0, _08077648
	adds r1, r1, r0
	mov r8, r1
	mov r1, r9
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
_08077618:
	str r0, [sp, #0x54]
	ldr r2, [r6, #0x14]
	str r2, [sp, #0x60]
	ldr r3, [r6, #0x18]
	str r3, [sp, #0x64]
	ldr r5, [sp, #0x54]
	cmp r5, #3
	bhi _0807764C
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	subs r0, r0, r2
	lsrs r0, r0, #8
	add r2, sp, #0x44
	strh r0, [r2, #0]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	b _0807765C
	.2byte 0x0000
_08077648: .4byte gUnk_03003CE0
_0807764C:
	ldr r0, [r7, #0x14]
	ldr r1, [sp, #0x60]
	subs r0, r0, r1
	lsrs r0, r0, #8
	add r2, sp, #0x44
	strh r0, [r2, #0]
	ldr r0, [r7, #0x18]
	ldr r3, [sp, #0x64]
_0807765C:
	subs r0, r0, r3
	lsrs r0, r0, #8
	mov r1, sp
	adds r1, #0x46
	strh r0, [r1, #0]
	mov r9, r2
	mov r5, r9
	movs r7, #0
	ldrsh r0, [r5, r7]
	movs r3, #0x46
	add r3, sp
	movs r2, #0
	ldrsh r1, [r3, r2]
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x18
	adds r2, r1, #0
	cmp r2, #0x80
	ble _0807768E
	ldr r5, _08077758
	adds r0, r5, #0
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0807768E:
	str r1, [sp, #0x6c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080776A4
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
_080776A4:
	ldr r1, [sp, #0x6c]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _080776BC
	ldr r2, _08077758
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
_080776BC:
	ldr r3, [sp, #0x6c]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x14
	ldr r1, _0807775C
	movs r5, #8
	ldrsh r2, [r6, r5]
	lsls r2, r2, #1
	adds r1, r2, r1
	ldrh r1, [r1, #0]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _080776E0
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_080776E0:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080776EA
	negs r0, r0
_080776EA:
	cmp r0, #3
	ble _080776F6
	ldr r0, _08077760
	adds r0, r2, r0
	ldrh r0, [r0, #0]
	str r0, [sp, #0x6c]
_080776F6:
	movs r7, #0x8b
	lsls r7, r7, #2
	adds r0, r6, r7
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x7c]
	ldrh r0, [r6, #8]
	str r0, [sp, #0x74]
	adds r0, r6, #0
	adds r0, #0x6a
	ldr r1, _08077764
	adds r2, r6, r1
	ldrh r1, [r0, #0]
	adds r7, r0, #0
	ldr r3, [sp, #0x50]
	adds r3, #4
	str r3, [sp, #0x80]
	ldrb r2, [r2, #0]
	cmp r1, r2
	bhs _0807777C
	ldr r1, _08077768
	lsls r0, r3, #2
	adds r4, r0, r1
	movs r0, #1
	ldr r5, [sp, #0x58]
	lsls r0, r5
	mvns r5, r0
_08077734:
	bl sub_08056E90
	cmp r0, #0
	bne _0807774E
	bl sub_0800BA6C
	cmp r0, #0
	beq _0807774E
	ldrh r0, [r6, #0xc]
	cmp r0, #0xa
	beq _0807774E
	cmp r0, #0xb
	bne _0807776C
_0807774E:
	ldr r0, [r4, #0]
	ands r0, r5
	str r0, [r4, #0]
	b _08077CE2
	.2byte 0x0000
_08077758: .4byte 0xFFFFFF00
_0807775C: .4byte gUnk_0849E730
_08077760: .4byte gUnk_0847AD0A
_08077764: .4byte 0x0000022B
_08077768: .4byte gUnk_030063E0
_0807776C:
	bl sub_080003F0
	ldr r0, _080777C4
	adds r1, r6, r0
	ldrh r0, [r7, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	blo _08077734
_0807777C:
	ldr r1, [sp, #0x68]
	lsls r0, r1, #3
	adds r0, #0xa
	str r0, [sp, #0x68]
	bl sub_0800CD34
	cmp r0, #0
	bne _080777A2
	bl sub_0800CCCC
	cmp r0, #0
	bne _080777A2
	bl sub_0800CD8C
	cmp r0, #0
	bne _080777A2
	movs r0, #0x17
	bl sub_0805865C
_080777A2:
	ldr r0, [sp, #0x68]
	adds r2, r0, #0
	subs r2, #1
	str r2, [sp, #0x68]
	cmp r0, #0
	bne _080777B0
	b _08077CCE
_080777B0:
	mov sl, r9
_080777B2:
	movs r3, #0
	str r3, [sp, #0x70]
	ldr r5, [sp, #0x54]
	cmp r5, #3
	bls _080777BE
	b _08077A02
_080777BE:
	mov r9, r3
	b _080779EC
	.2byte 0x0000
_080777C4: .4byte 0x0000022B
_080777C8:
	ldr r4, _080778FC
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r2, r9
	muls r2, r0, r2
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r4, r3
	adds r0, r2, r0
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	ldr r7, [sp, #0x60]
	subs r0, r0, r7
	lsrs r0, r0, #8
	mov r5, sl
	strh r0, [r5, #0]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	ldr r7, [sp, #0x64]
	subs r0, r0, r7
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	movs r1, #0x46
	add r1, sp
	strh r0, [r1, #0]
	movs r7, #0
	ldrsh r1, [r5, r7]
	cmp r1, #0
	bge _0807780A
	negs r1, r1
_0807780A:
	cmp r1, #7
	ble _08077810
	b _080779E2
_08077810:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0807781A
	negs r0, r0
_0807781A:
	cmp r0, #7
	ble _08077820
	b _080779E2
_08077820:
	ldr r0, [sp, #0x78]
	cmp r0, r9
	beq _08077828
	b _080779E2
_08077828:
	adds r2, r2, r4
	mov r8, r2
	adds r0, r2, r3
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	bne _0807783C
	b _080779E2
_0807783C:
	mov r0, r8
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _08077848
	b _080779E2
_08077848:
	mov r1, r8
	ldr r0, [r1, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08077856
	b _080779E2
_08077856:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08077860
	b _080779E2
_08077860:
	mov r3, r8
	ldrh r2, [r3, #0x20]
	cmp r2, #0xa
	bne _0807786A
	b _080779E2
_0807786A:
	cmp r2, #0xb
	bne _08077870
	b _080779E2
_08077870:
	ldrh r0, [r6, #0]
	lsls r0, r0, #2
	mov r4, r8
	adds r4, #0xe4
	adds r0, r4, r0
	ldr r1, [r6, #0x50]
	ldr r0, [r0, #0]
	adds r5, r4, #0
	cmp r1, r0
	bne _08077886
	b _080779E2
_08077886:
	cmp r2, #0xc
	bne _0807788C
	b _080779E2
_0807788C:
	bl sub_0800CCCC
	cmp r0, #0
	beq _08077896
	b _080779E2
_08077896:
	bl sub_0800D11C
	cmp r0, #0
	beq _080778A0
	b _080779E2
_080778A0:
	ldr r7, _08077900
	adds r0, r6, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r2, r8
	movs r3, #0x3a
	ldrsh r1, [r2, r3]
	bl sub_080223A4
	cmp r0, #0
	bne _080778B8
	b _080779B6
_080778B8:
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	adds r2, r0, #0
	mov r1, r8
	adds r1, #0x6e
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _080778D4
	ldrb r1, [r1, #0]
	cmp r2, r1
	blo _0807794E
_080778D4:
	adds r0, r6, #0
	mov r1, r8
	bl sub_0801ED8C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r7, #0x80
	lsls r7, r7, #8
	adds r1, r7, #0
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08077908
	movs r0, #0x27
	bl sub_0805865C
	ldr r1, _08077904
	adds r0, r1, #0
	ands r4, r0
	b _08077924
_080778FC: .4byte gUnk_03003CE0
_08077900: .4byte 0x00000206
_08077904: .4byte 0x00007FFF
_08077908:
	movs r0, #0x1a
	bl sub_0805865C
	mov r2, r8
	ldrh r0, [r2, #0xc]
	cmp r0, #8
	bne _0807791E
	movs r0, #0x4b
	bl sub_0805865C
	b _08077924
_0807791E:
	adds r0, #0x45
	bl sub_0805865C
_08077924:
	mov r1, r8
	adds r1, #0x88
	ldrh r0, [r1, #0]
	adds r0, r4, r0
	strh r0, [r1, #0]
	ldrh r0, [r6, #0]
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r1, [r6, #0x50]
	str r1, [r0, #0]
	movs r0, #0xa
	mov r3, r8
	strh r0, [r3, #0x20]
	movs r0, #0x88
	lsls r0, r0, #1
	add r0, r8
	movs r5, #0
	str r5, [r0, #0]
	movs r7, #1
	str r7, [sp, #0x70]
	b _080779E2
_0807794E:
	mov r0, r8
	adds r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, r8
	adds r1, #0x90
	ldr r1, [r1, #0]
	bl sub_08022504
	adds r0, r6, #0
	mov r1, r8
	bl sub_0801ED8C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r0, #0
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0807797E
	ldr r1, _08077990
	adds r0, r1, #0
	ands r4, r0
_0807797E:
	mov r0, r8
	adds r0, #0x8a
	ldrh r2, [r0, #0]
	lsrs r1, r4, #2
	cmp r1, #0
	beq _08077994
	adds r1, r2, r1
	b _08077996
	.2byte 0x0000
_08077990: .4byte 0x00007FFF
_08077994:
	adds r1, r2, #1
_08077996:
	strh r1, [r0, #0]
	ldrh r0, [r6, #0]
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r1, [r6, #0x50]
	str r1, [r0, #0]
	movs r0, #0x88
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	str r2, [r0, #0]
	movs r0, #0xb2
	lsls r0, r0, #1
	bl sub_0805865C
	b _080779E2
_080779B6:
	ldrh r0, [r6, #0]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r1, [r6, #0x50]
	str r1, [r0, #0]
	bl sub_0800CD34
	cmp r0, #0
	bne _080779E2
	bl sub_0800CCCC
	cmp r0, #0
	bne _080779E2
	bl sub_0800CD8C
	cmp r0, #0
	bne _080779E2
	movs r0, #0x55
	bl sub_0805865C
	movs r3, #1
	str r3, [sp, #0x70]
_080779E2:
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
_080779EC:
	bl sub_08002164
	cmp r9, r0
	blo _080779F6
	b _08077BCC
_080779F6:
	bl sub_0800CDF8
	cmp r0, #0
	bne _08077A00
	b _080777C8
_08077A00:
	b _08077BCC
_08077A02:
	movs r5, #0
	mov r9, r5
	add r5, sp, #0x48
	b _08077BAA
_08077A0A:
	ldr r7, [sp, #0x50]
	cmp r9, r7
	bne _08077A12
	b _08077BA0
_08077A12:
	ldr r1, _08077B58
	mov r2, r9
	lsls r0, r2, #1
	add r0, r9
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r7, r1, r0
	movs r3, #0xee
	lsls r3, r3, #1
	adds r0, r7, r3
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _08077A32
	b _08077BA0
_08077A32:
	ldr r0, [r7, #0x14]
	ldr r1, [sp, #0x60]
	subs r0, r0, r1
	lsrs r0, r0, #8
	mov r2, sl
	strh r0, [r2, #0]
	ldr r0, [r7, #0x18]
	ldr r3, [sp, #0x64]
	subs r0, r0, r3
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	movs r1, #0x46
	add r1, sp
	strh r0, [r1, #0]
	movs r3, #0
	ldrsh r1, [r2, r3]
	cmp r1, #0
	bge _08077A58
	negs r1, r1
_08077A58:
	cmp r1, #7
	ble _08077A5E
	b _08077BA0
_08077A5E:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08077A68
	negs r0, r0
_08077A68:
	cmp r0, #7
	ble _08077A6E
	b _08077BA0
_08077A6E:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08077A78
	b _08077BA0
_08077A78:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _08077A80
	b _08077BA0
_08077A80:
	cmp r0, #0xb
	bne _08077A86
	b _08077BA0
_08077A86:
	ldr r1, [r6, #0x50]
	ldr r0, [r7, #0x54]
	cmp r1, r0
	bne _08077A90
	b _08077BA0
_08077A90:
	bl sub_0800CCCC
	cmp r0, #0
	beq _08077A9A
	b _08077BA0
_08077A9A:
	bl sub_0800D11C
	cmp r0, #0
	beq _08077AA4
	b _08077BA0
_08077AA4:
	ldr r1, _08077B5C
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r7, r1
	movs r3, #0
	ldrsh r1, [r1, r3]
	bl sub_080223A4
	cmp r0, #0
	beq _08077B70
	bl sub_08002204
	cmp r0, #0
	beq _08077B52
	movs r0, #0xa
	strh r0, [r7, #0xc]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0801EF14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08077B60
	ldr r1, [r5, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r5, #4]
	ldr r0, [sp, #0x7c]
	adds r0, #0xbc
	ldrb r1, [r0, #0]
	lsls r1, r1, #8
	adds r2, #0xff
	ldr r0, [sp, #0x48]
	ands r0, r2
	orrs r0, r1
	ldr r1, _08077B64
	ands r0, r1
	ldr r1, _08077B68
	ands r0, r1
	str r0, [sp, #0x48]
	ldr r0, [r6, #0x50]
	str r0, [r7, #0x54]
	ldrb r2, [r7, #2]
	ldr r1, _08077B6C
	ldr r0, [sp, #0x48]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x48]
	adds r1, r7, #0
	adds r1, #0x4a
	ldrh r0, [r5, #4]
	ldrh r2, [r1, #0]
	adds r0, r0, r2
	strh r0, [r1, #0]
	ldrh r0, [r5, #4]
	str r0, [r7, #0x4c]
	ldr r0, [sp, #0x48]
	lsrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, #0x18
	strh r0, [r1, #0]
	ldr r0, [sp, #0x48]
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, #0x1a
	strh r0, [r1, #0]
	ldr r0, [sp, #0x48]
	asrs r0, r0, #0x18
	adds r1, #2
	strh r0, [r1, #0]
	ldrh r1, [r6, #0]
	adds r0, r7, #0
	adds r0, #0x58
	strh r1, [r0, #0]
	adds r1, r7, #0
	adds r1, #0x5a
	ldr r3, [sp, #0x78]
	lsls r4, r3
	ldrh r0, [r1, #0]
	orrs r4, r0
	strh r4, [r1, #0]
	adds r0, r5, #0
	bl sub_080660EC
_08077B52:
	movs r7, #1
	str r7, [sp, #0x70]
	b _08077BA0
_08077B58: .4byte gUnk_030056F4
_08077B5C: .4byte 0x00000206
_08077B60: .4byte 0xFFFF0000
_08077B64: .4byte 0xFF00FFFF
_08077B68: .4byte 0x00FFFFFF
_08077B6C: .4byte 0xFFFFFF00
_08077B70:
	ldrh r0, [r6, #0]
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #0xe4
	adds r1, r1, r0
	ldr r0, [r6, #0x50]
	str r0, [r1, #0]
	bl sub_0800CD34
	cmp r0, #0
	bne _08077B9C
	bl sub_0800CCCC
	cmp r0, #0
	bne _08077B9C
	bl sub_0800CD8C
	cmp r0, #0
	bne _08077B9C
	movs r0, #0x55
	bl sub_0805865C
_08077B9C:
	movs r0, #1
	str r0, [sp, #0x70]
_08077BA0:
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
_08077BAA:
	mov r1, r9
	cmp r1, #4
	bhi _08077BCC
	ldr r0, _08077CF4
	movs r4, #1
	adds r1, r4, #0
	mov r2, r9
	lsls r1, r2
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _08077BA0
	bl sub_0800CDF8
	cmp r0, #0
	bne _08077BCC
	b _08077A0A
_08077BCC:
	ldr r3, [sp, #0x70]
	cmp r3, #0
	bne _08077CCE
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x64]
	movs r2, #0
	bl sub_0800AE50
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08077BF0
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08077CCE
_08077BF0:
	ldr r2, _08077CF8
	ldr r5, [sp, #0x6c]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r7, #0
	ldrsh r0, [r0, r7]
	movs r3, #3
	muls r0, r3, r0
	ldr r5, [sp, #0x60]
	adds r5, r5, r0
	str r5, [sp, #0x60]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r7, #0
	ldrsh r0, [r1, r7]
	muls r0, r3, r0
	ldr r1, [sp, #0x64]
	adds r1, r1, r0
	str r1, [sp, #0x64]
	bl sub_0800CC98
	cmp r0, #0
	bne _08077CAC
	bl sub_0800CD8C
	cmp r0, #0
	bne _08077CAC
	bl sub_0800CCCC
	adds r3, r0, #0
	cmp r3, #0
	bne _08077CAC
	asrs r5, r5, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x64]
	asrs r4, r2, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	str r3, [sp, #4]
	mov r2, sl
	mov r3, sp
	adds r3, #0x46
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	mov r3, sl
	movs r5, #0
	ldrsh r4, [r3, r5]
	ldr r3, _08077CFC
	ldr r7, [sp, #0x74]
	lsls r2, r7, #0x10
	asrs r2, r2, #0xe
	adds r1, r2, r3
	movs r5, #0
	ldrsh r1, [r1, r5]
	adds r4, r4, r1
	movs r5, #0x46
	add r5, sp
	movs r7, #0
	ldrsh r1, [r5, r7]
	adds r3, #2
	adds r2, r2, r3
	movs r7, #0
	ldrsh r2, [r2, r7]
	adds r1, r1, r2
	ldr r3, [sp, #0x5c]
	ldr r5, [sp, #0x74]
	adds r2, r3, r5
	lsls r2, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	lsrs r2, r2, #0x10
	movs r3, #0
	bl sub_08007870
_08077CAC:
	bl sub_080003F0
	bl sub_0800CB78
	cmp r0, #0
	bne _08077CCE
	bl sub_0800CD00
	cmp r0, #0
	bne _08077CCE
	ldr r0, [sp, #0x68]
	adds r7, r0, #0
	subs r7, #1
	str r7, [sp, #0x68]
	cmp r0, #0
	beq _08077CCE
	b _080777B2
_08077CCE:
	ldr r0, _08077D00
	ldr r1, [sp, #0x80]
	lsls r2, r1, #2
	adds r2, r2, r0
	movs r1, #1
	ldr r3, [sp, #0x58]
	lsls r1, r3
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
_08077CE2:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08077CF4: .4byte gUnk_030056FC
_08077CF8: .4byte gUnk_080B9704
_08077CFC: .4byte gUnk_084EBEBC
_08077D00: .4byte gUnk_030063E0
	thumb_func_end sub_08077508
