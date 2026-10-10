	thumb_func_start sub_080815F4
sub_080815F4: @ 0x080815F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08081638
	add sp, r4
	str r0, [sp, #0x23c]
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r0, #0xf
	movs r1, #0x12
	ldr r2, [sp, #0x23c]
	bl sub_0805FFBC
	movs r0, #0x78
	movs r1, #0x20
	ldr r2, [sp, #0x23c]
	movs r3, #8
	bl sub_0805FC80
	ldr r1, [sp, #0x23c]
	ldrh r0, [r1, #0]
	subs r0, #1
	cmp r0, #9
	bls _0808162C
	bl _08082948
_0808162C:
	lsls r0, r0, #2
	ldr r1, _0808163C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08081638: .4byte 0xFFFFFD54
_0808163C: .4byte _08081640
_08081640:
	.4byte _08081668
_08081644: .4byte _08081728
_08081648: .4byte _08081764
_0808164C: .4byte _080817A0
_08081650: .4byte _08081818
_08081654: .4byte _08081852
_08081658: .4byte _080817D6
_0808165C: .4byte _08081922
_08081660: .4byte _0808186A
_08081664: .4byte _08081918
_08081668:
	ldr r2, [sp, #0x23c]
	ldrh r0, [r2, #2]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	movs r3, #0
	str r3, [sp, #0x254]
	adds r5, r0, #0
	adds r5, #0xa0
	str r5, [sp, #0x250]
	adds r0, #0xaa
	ldrh r0, [r0, #0]
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r2, r0, #0
	adds r6, r2, #2
	ldr r1, _080816CC
	add r0, sp, #0x254
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r1, #0
	adds r0, #0x20
	add r2, sp, #0x254
	ldrb r2, [r2, #0]
	strb r2, [r0, #0]
	movs r7, #0
	adds r4, r1, #0
	movs r5, #0
	movs r3, #0xb0
	lsls r3, r3, #0xc
	mov r9, r3
_080816B0:
	movs r0, #0
	mov r8, r0
	ldrb r1, [r6, #0]
	cmp r1, #0xfd
	beq _080816DE
	ldr r0, _080816CC
	adds r2, r5, r0
_080816BE:
	strb r1, [r2, #0]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _080816D0
	adds r6, #1
	b _080816DE
	.2byte 0x0000
_080816CC: .4byte gUnk_03000128
_080816D0:
	adds r2, #1
	movs r1, #1
	add r8, r1
	adds r6, #1
	ldrb r1, [r6, #0]
	cmp r1, #0xfd
	bne _080816BE
_080816DE:
	mov r2, r8
	adds r0, r2, r5
	ldr r3, _08081724
	adds r0, r0, r3
	movs r1, #0xfd
	strb r1, [r0, #0]
	cmp r2, #0
	bne _080816F0
	b _080819CA
_080816F0:
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, r9
	lsrs r2, r0, #0x10
	adds r0, r4, #0
	bl sub_0801A3D0
	ldrb r0, [r6, #0]
	cmp r0, #0xfd
	bne _08081712
	b _080819CA
_08081712:
	adds r4, #0x20
	adds r5, #0x20
	movs r1, #0x80
	lsls r1, r1, #0xa
	add r9, r1
	adds r7, #1
	cmp r7, #1
	bls _080816B0
	b _080819CA
_08081724: .4byte gUnk_03000128
_08081728:
	ldr r2, [sp, #0x23c]
	ldrh r0, [r2, #2]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x240]
	adds r0, #0xc0
	ldrh r0, [r0, #0]
	mov sl, r0
	ldr r0, [sp, #0x240]
	adds r0, #0xae
	ldrh r0, [r0, #0]
	str r0, [sp, #0x254]
	ldr r3, [sp, #0x23c]
	ldrh r0, [r3, #4]
	cmp r0, #0
	beq _0808175C
	subs r0, #1
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	b _08081864
_0808175C:
	ldr r5, [sp, #0x240]
	adds r5, #0xb0
	str r5, [sp, #0x250]
	b _080819CA
_08081764:
	ldr r1, [sp, #0x23c]
	ldrh r0, [r1, #2]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x244]
	adds r0, #0xb2
	ldrh r0, [r0, #0]
	mov sl, r0
	ldr r0, [sp, #0x244]
	adds r0, #0xa2
	ldrh r0, [r0, #0]
	str r0, [sp, #0x254]
	ldr r2, [sp, #0x23c]
	ldrh r0, [r2, #4]
	cmp r0, #0
	beq _08081798
	subs r0, #1
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	b _08081864
_08081798:
	ldr r3, [sp, #0x244]
	adds r3, #0xa4
	str r3, [sp, #0x250]
	b _080819CA
_080817A0:
	ldr r5, [sp, #0x23c]
	ldrh r0, [r5, #2]
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x248]
	adds r0, #0xb2
	ldrh r0, [r0, #0]
	mov sl, r0
	ldr r0, [sp, #0x248]
	adds r0, #0xa2
	ldrh r0, [r0, #0]
	str r0, [sp, #0x254]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _080817D2
	subs r0, #1
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	b _08081864
_080817D2:
	ldr r0, [sp, #0x248]
	b _0808184C
_080817D6:
	ldr r1, [sp, #0x23c]
	ldrh r0, [r1, #2]
	movs r1, #0x88
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	movs r2, #0xff
	str r2, [sp, #0x254]
	movs r3, #0
	str r3, [sp, #0x250]
	adds r0, #0xaa
	ldrh r0, [r0, #0]
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r2, r0, #0
	adds r4, r2, #2
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #7
	bl sub_0801A3D0
	b _080819CA
_08081818:
	ldr r5, [sp, #0x23c]
	ldrh r0, [r5, #2]
	movs r1, #0xe0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x24c]
	adds r0, #0xb2
	ldrh r0, [r0, #0]
	mov sl, r0
	ldr r0, [sp, #0x24c]
	adds r0, #0xa2
	ldrh r0, [r0, #0]
	str r0, [sp, #0x254]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _0808184A
	subs r0, #1
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	b _08081864
_0808184A:
	ldr r0, [sp, #0x24c]
_0808184C:
	adds r0, #0xa4
	str r0, [sp, #0x250]
	b _080819CA
_08081852:
	ldr r1, [sp, #0x23c]
	ldrh r0, [r1, #2]
	movs r1, #0xf0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	movs r2, #0xff
	str r2, [sp, #0x254]
_08081864:
	adds r0, #0xa0
	str r0, [sp, #0x250]
	b _080819CA
_0808186A:
	ldr r3, [sp, #0x23c]
	ldrh r0, [r3, #2]
	movs r1, #0xa8
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	movs r5, #0
	str r5, [sp, #0x254]
	movs r1, #0
	str r1, [sp, #0x250]
	adds r0, #0xa4
	ldr r0, [r0, #0]
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r2, r0, #0
	adds r6, r2, #2
	movs r3, #0
	mov r8, r3
	movs r7, #0
	ldrb r0, [r2, #2]
	cmp r0, #0xfd
	beq _080818D0
	ldr r3, _080818BC
	movs r2, #0
	movs r4, #0xfd
_080818A4:
	ldrb r1, [r6, #0]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _080818C0
	adds r0, r7, r2
	adds r0, r0, r3
	strb r4, [r0, #0]
	adds r2, #0x20
	movs r5, #1
	add r8, r5
	movs r7, #0
	b _080818C8
_080818BC: .4byte gUnk_03000128
_080818C0:
	adds r0, r7, r2
	adds r0, r0, r3
	strb r1, [r0, #0]
	adds r7, #1
_080818C8:
	adds r6, #1
	ldrb r0, [r6, #0]
	cmp r0, #0xfd
	bne _080818A4
_080818D0:
	ldr r5, _08081914
	mov r1, r8
	lsls r0, r1, #5
	adds r0, r7, r0
	adds r0, r0, r5
	movs r1, #0xfd
	strb r1, [r0, #0]
	adds r0, r5, #0
	bl sub_0801A638
	adds r1, r0, #0
	lsrs r1, r1, #1
	movs r4, #0xf
	subs r1, r4, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #9
	bl sub_0801A3D0
	adds r5, #0x20
	adds r0, r5, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xb
	bl sub_0801A3D0
	b _080819CA
_08081914: .4byte gUnk_03000128
_08081918:
	movs r2, #0
	str r2, [sp, #0x254]
	movs r3, #0
	str r3, [sp, #0x250]
	b _080819CA
_08081922:
	ldr r5, [sp, #0x23c]
	ldrh r0, [r5, #2]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	movs r1, #0
	str r1, [sp, #0x254]
	movs r2, #0
	str r2, [sp, #0x250]
	adds r0, #0xa2
	ldrh r0, [r0, #0]
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r2, r0, #0
	adds r6, r2, #2
	movs r3, #0
	mov r8, r3
	movs r7, #0
	ldrb r0, [r2, #2]
	cmp r0, #0xfd
	beq _08081988
	ldr r3, _08081974
	movs r2, #0
	movs r4, #0xfd
_0808195C:
	ldrb r1, [r6, #0]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _08081978
	adds r0, r7, r2
	adds r0, r0, r3
	strb r4, [r0, #0]
	adds r2, #0x20
	movs r5, #1
	add r8, r5
	movs r7, #0
	b _08081980
_08081974: .4byte gUnk_03000128
_08081978:
	adds r0, r7, r2
	adds r0, r0, r3
	strb r1, [r0, #0]
	adds r7, #1
_08081980:
	adds r6, #1
	ldrb r0, [r6, #0]
	cmp r0, #0xfd
	bne _0808195C
_08081988:
	ldr r5, _080819E0
	mov r1, r8
	lsls r0, r1, #5
	adds r0, r7, r0
	adds r0, r0, r5
	movs r1, #0xfd
	strb r1, [r0, #0]
	adds r0, r5, #0
	bl sub_0801A638
	adds r1, r0, #0
	lsrs r1, r1, #1
	movs r4, #0xf
	subs r1, r4, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #9
	bl sub_0801A3D0
	adds r5, #0x20
	adds r0, r5, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xb
	bl sub_0801A3D0
_080819CA:
	ldr r2, [sp, #0x23c]
	ldrh r0, [r2, #0]
	cmp r0, #3
	bne _080819D4
	b _0808207C
_080819D4:
	cmp r0, #3
	bgt _080819E4
	cmp r0, #2
	beq _080819F8
	bl _0808271C
_080819E0: .4byte gUnk_03000128
_080819E4:
	cmp r0, #4
	bne _080819EC
	bl _0808226C
_080819EC:
	cmp r0, #5
	bne _080819F4
	bl _080824B0
_080819F4:
	bl _0808271C
_080819F8:
	ldr r3, [sp, #0x23c]
	ldrb r0, [r3, #8]
	cmp r0, #0
	beq _08081A08
	movs r5, #0
	str r5, [sp, #0x254]
	bl _0808271C
_08081A08:
	ldr r0, [sp, #0x240]
	adds r0, #0x9b
	ldrb r1, [r0, #0]
	str r0, [sp, #0x290]
	cmp r1, #9
	beq _08081A64
	cmp r1, #0xa
	bne _08081A1A
	b _08081D40
_08081A1A:
	ldr r0, _08081A60
	ldr r4, [r0, #0]
	adds r4, #0x30
	ldr r5, [sp, #0x240]
	adds r5, #0x9c
	ldrb r6, [r5, #0]
	bl sub_0801DE60
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, [sp, #0x240]
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0801B58C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x258]
	ldrb r0, [r5, #0]
	ldr r1, [sp, #0x258]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x258]
	movs r0, #0x80
	lsls r0, r0, #8
	ldr r2, [sp, #0x258]
	ands r0, r2
	cmp r0, #0
	bne _08081A5A
	b _08081DE0
_08081A5A:
	movs r3, #0
	str r3, [sp, #0x258]
	b _08081DE0
_08081A60: .4byte gUnk_030034E0
_08081A64:
	ldr r0, _08081B18
	ldr r4, [r0, #0]
	adds r4, #0x30
	ldr r5, [sp, #0x240]
	adds r5, #0x9c
	ldrb r6, [r5, #0]
	bl sub_0801DE60
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, [sp, #0x240]
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0801B58C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x258]
	ldrb r0, [r5, #0]
	ldr r1, [sp, #0x258]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x258]
	ldr r0, _08081B1C
	bl sub_08007290
	adds r2, r0, #0
	ldrb r1, [r5, #0]
	ldr r3, [sp, #0x23c]
	ldrb r0, [r3, #6]
	adds r1, r1, r0
	str r1, [sp, #0x260]
	adds r3, r2, #2
	movs r5, #0
	mov r8, r5
	ldrb r0, [r2, #2]
	ldr r1, [sp, #0x240]
	adds r1, #0xac
	mov sl, r1
	ldr r2, [sp, #0x240]
	adds r2, #0xa7
	str r2, [sp, #0x2a0]
	cmp r0, #0xfd
	beq _08081B42
_08081AC0:
	ldrb r2, [r3, #0]
	cmp r2, #0xf7
	bne _08081B28
	add r0, sp, #0x20c
	ldr r5, [sp, #0x260]
	str r5, [r0, #0]
	ldr r7, _08081B20
	ldr r4, _08081B24
	add r4, r8
	movs r5, #0
	movs r6, #0
	mov r9, r0
	adds r2, r3, #1
_08081ADA:
	ldr r1, [r7, #0]
	mov r0, r9
	str r2, [sp, #0x2a4]
	bl sub_08000498
	adds r0, #0x41
	strb r0, [r4, #0]
	ldr r2, [sp, #0x2a4]
	cmp r5, #0
	bne _08081AFA
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x41
	bne _08081AFA
	cmp r6, #5
	bne _08081B08
_08081AFA:
	adds r4, #1
	movs r5, #1
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08081B08:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r7, #4
	cmp r6, #5
	bls _08081ADA
	b _08081B3A
	.2byte 0x0000
_08081B18: .4byte gUnk_030034E0
_08081B1C: .4byte 0x00140328
_08081B20: .4byte gUnk_084EBD5C
_08081B24: .4byte gUnk_03000128
_08081B28:
	mov r1, r8
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _08081BF4
	adds r1, r0, r1
	strb r2, [r1, #0]
	adds r2, r3, #1
_08081B3A:
	adds r3, r2, #0
	ldrb r0, [r3, #0]
	cmp r0, #0xfd
	bne _08081AC0
_08081B42:
	ldr r0, _08081BF4
	add r0, r8
	movs r1, #0xfd
	strb r1, [r0, #0]
	mov r0, r8
	subs r0, #1
	ldr r1, _08081BF4
	adds r6, r1, r0
	movs r0, #0x51
	strb r0, [r6, #0]
	ldr r2, [sp, #0x258]
	cmp r2, #0
	beq _08081B64
	adds r6, #1
	strb r0, [r6, #0]
	adds r6, #1
	strb r0, [r6, #0]
_08081B64:
	mov r3, sl
	ldrh r0, [r3, #0]
	cmp r0, #7
	bne _08081C18
	ldr r5, [sp, #0x2a0]
	ldrb r0, [r5, #0]
	lsls r0, r0, #1
	ldr r1, _08081BF8
	adds r0, r0, r1
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r2, r0, #0
	mov r3, sl
	ldrh r3, [r3, #0]
	str r3, [sp, #0x264]
	adds r5, r6, #1
	mov r9, r5
	adds r3, r2, #2
	movs r0, #0
	mov r8, r0
	ldrb r0, [r2, #2]
	cmp r0, #0xfd
	bne _08081B9A
	b _08081CBE
_08081B9A:
	ldrb r2, [r3, #0]
	cmp r2, #0xf7
	bne _08081C00
	add r0, sp, #0x210
	ldr r1, [sp, #0x264]
	str r1, [r0, #0]
	ldr r7, _08081BFC
	mov r4, r9
	add r4, r8
	movs r2, #0
	movs r5, #0
	mov sl, r0
	adds r3, #1
_08081BB4:
	ldr r1, [r7, #0]
	mov r0, sl
	str r2, [sp, #0x2a4]
	str r3, [sp, #0x2a8]
	bl sub_08000498
	adds r0, #0x41
	strb r0, [r4, #0]
	ldr r2, [sp, #0x2a4]
	ldr r3, [sp, #0x2a8]
	cmp r2, #0
	bne _08081BD8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x41
	bne _08081BD8
	cmp r5, #5
	bne _08081BE6
_08081BD8:
	adds r4, #1
	movs r2, #1
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08081BE6:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r7, #4
	cmp r5, #5
	bls _08081BB4
	b _08081C10
_08081BF4: .4byte gUnk_03000128
_08081BF8: .4byte 0x0000033A
_08081BFC: .4byte gUnk_084EBD5C
_08081C00:
	mov r1, r8
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	add r1, r9
	strb r2, [r1, #0]
	adds r3, #1
_08081C10:
	ldrb r0, [r3, #0]
	cmp r0, #0xfd
	bne _08081B9A
	b _08081CBE
_08081C18:
	ldr r2, [sp, #0x2a0]
	ldrb r0, [r2, #0]
	lsls r0, r0, #1
	ldr r3, _08081CA0
	adds r0, r0, r3
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r2, r0, #0
	mov r5, sl
	ldrh r5, [r5, #0]
	str r5, [sp, #0x268]
	adds r0, r6, #1
	mov r9, r0
	adds r3, r2, #2
	movs r1, #0
	mov r8, r1
	ldrb r0, [r2, #2]
	cmp r0, #0xfd
	beq _08081CBE
_08081C44:
	ldrb r2, [r3, #0]
	cmp r2, #0xf7
	bne _08081CA8
	add r0, sp, #0x214
	ldr r2, [sp, #0x268]
	str r2, [r0, #0]
	ldr r7, _08081CA4
	mov r4, r9
	add r4, r8
	movs r2, #0
	movs r5, #0
	mov sl, r0
	adds r3, #1
_08081C5E:
	ldr r1, [r7, #0]
	mov r0, sl
	str r2, [sp, #0x2a4]
	str r3, [sp, #0x2a8]
	bl sub_08000498
	adds r0, #0x41
	strb r0, [r4, #0]
	ldr r2, [sp, #0x2a4]
	ldr r3, [sp, #0x2a8]
	cmp r2, #0
	bne _08081C82
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x41
	bne _08081C82
	cmp r5, #5
	bne _08081C90
_08081C82:
	adds r4, #1
	movs r2, #1
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08081C90:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r7, #4
	cmp r5, #5
	bls _08081C5E
	b _08081CB8
	.2byte 0x0000
_08081CA0: .4byte 0x00000339
_08081CA4: .4byte gUnk_084EBD5C
_08081CA8:
	mov r1, r8
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	add r1, r9
	strb r2, [r1, #0]
	adds r3, #1
_08081CB8:
	ldrb r0, [r3, #0]
	cmp r0, #0xfd
	bne _08081C44
_08081CBE:
	mov r1, r9
	add r1, r8
	movs r0, #0xfd
	strb r0, [r1, #0]
	ldr r4, _08081D18
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #5
	bl sub_0801A3D0
	ldr r3, [sp, #0x258]
	cmp r3, #0
	bne _08081CEA
	bl _0808271C
_08081CEA:
	subs r0, r6, r4
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r3, #0
	movs r1, #0x64
	bl sub_080B956C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08081D20
	ldr r0, [sp, #0x258]
	movs r1, #0xa
	bl sub_080B956C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08081D1C
	movs r5, #1
	negs r5, r5
	add r8, r5
	movs r7, #1
	b _08081D26
	.2byte 0x0000
_08081D18: .4byte gUnk_03000128
_08081D1C:
	movs r7, #2
	b _08081D26
_08081D20:
	movs r0, #1
	add r8, r0
	movs r7, #3
_08081D26:
	ldr r5, _08081D3C
	adds r0, r5, #0
	bl sub_0801A638
	mov r4, r8
	adds r4, #0xf
	lsrs r0, r0, #1
	subs r0, r4, r0
	movs r1, #6
	ldr r2, [sp, #0x258]
	b _0808247E
_08081D3C: .4byte gUnk_03000128
_08081D40:
	movs r0, #0xa0
	lsls r0, r0, #0xd
	mov r1, sl
	orrs r1, r0
	mov sl, r1
	mov r0, sl
	bl sub_08007290
	adds r2, r0, #0
	adds r6, r2, #2
	movs r3, #0
	mov r8, r3
	movs r7, #0
	ldrb r0, [r2, #2]
	cmp r0, #0xfd
	beq _08081D94
	ldr r3, _08081D80
	movs r2, #0
	movs r4, #0xfd
_08081D66:
	ldrb r1, [r6, #0]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _08081D84
	adds r0, r7, r2
	adds r0, r0, r3
	strb r4, [r0, #0]
	adds r2, #0x20
	movs r5, #1
	add r8, r5
	movs r7, #0
	b _08081D8C
	.2byte 0x0000
_08081D80: .4byte gUnk_03000128
_08081D84:
	adds r0, r7, r2
	adds r0, r0, r3
	strb r1, [r0, #0]
	adds r7, #1
_08081D8C:
	adds r6, #1
	ldrb r0, [r6, #0]
	cmp r0, #0xfd
	bne _08081D66
_08081D94:
	ldr r5, _08081DDC
	mov r1, r8
	lsls r0, r1, #5
	adds r0, r7, r0
	adds r0, r0, r5
	movs r1, #0xfd
	strb r1, [r0, #0]
	adds r0, r5, #0
	bl sub_0801A638
	adds r1, r0, #0
	lsrs r1, r1, #1
	movs r4, #0xf
	subs r1, r4, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #7
	bl sub_0801A3D0
	adds r5, #0x20
	adds r0, r5, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #9
	bl sub_0801A3D0
	bl _0808271C
	.2byte 0x0000
_08081DDC: .4byte gUnk_03000128
_08081DE0:
	ldr r0, _08081E5C
	bl sub_08007290
	adds r2, r0, #0
	ldrb r1, [r5, #0]
	ldr r3, [sp, #0x23c]
	ldrb r0, [r3, #6]
	adds r1, r1, r0
	str r1, [sp, #0x26c]
	adds r3, r2, #2
	movs r5, #0
	mov r8, r5
	ldrb r0, [r2, #2]
	ldr r1, [sp, #0x240]
	adds r1, #0xac
	mov sl, r1
	cmp r0, #0xfd
	beq _08081E82
_08081E04:
	ldrb r2, [r3, #0]
	cmp r2, #0xf7
	bne _08081E68
	add r0, sp, #0x218
	ldr r2, [sp, #0x26c]
	str r2, [r0, #0]
	ldr r7, _08081E60
	ldr r4, _08081E64
	add r4, r8
	movs r5, #0
	movs r6, #0
	mov r9, r0
	adds r2, r3, #1
_08081E1E:
	ldr r1, [r7, #0]
	mov r0, r9
	str r2, [sp, #0x2a4]
	bl sub_08000498
	adds r0, #0x41
	strb r0, [r4, #0]
	ldr r2, [sp, #0x2a4]
	cmp r5, #0
	bne _08081E3E
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x41
	bne _08081E3E
	cmp r6, #5
	bne _08081E4C
_08081E3E:
	adds r4, #1
	movs r5, #1
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08081E4C:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r7, #4
	cmp r6, #5
	bls _08081E1E
	b _08081E7A
	.2byte 0x0000
_08081E5C: .4byte 0x00140328
_08081E60: .4byte gUnk_084EBD5C
_08081E64: .4byte gUnk_03000128
_08081E68:
	mov r1, r8
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r5, _08081F34
	adds r1, r5, r1
	strb r2, [r1, #0]
	adds r2, r3, #1
_08081E7A:
	adds r3, r2, #0
	ldrb r0, [r3, #0]
	cmp r0, #0xfd
	bne _08081E04
_08081E82:
	ldr r0, _08081F34
	add r0, r8
	movs r1, #0xfd
	strb r1, [r0, #0]
	mov r0, r8
	subs r0, #1
	ldr r1, _08081F34
	adds r6, r1, r0
	movs r0, #0x51
	strb r0, [r6, #0]
	ldr r2, [sp, #0x258]
	cmp r2, #0
	beq _08081EA4
	adds r6, #1
	strb r0, [r6, #0]
	adds r6, #1
	strb r0, [r6, #0]
_08081EA4:
	mov r3, sl
	ldrh r0, [r3, #0]
	cmp r0, #7
	bne _08081F58
	ldr r5, [sp, #0x290]
	ldrb r0, [r5, #0]
	lsls r0, r0, #1
	ldr r1, _08081F38
	adds r0, r0, r1
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r2, r0, #0
	mov r3, sl
	ldrh r3, [r3, #0]
	str r3, [sp, #0x270]
	adds r5, r6, #1
	mov r9, r5
	adds r3, r2, #2
	movs r0, #0
	mov r8, r0
	ldrb r0, [r2, #2]
	cmp r0, #0xfd
	bne _08081EDA
	b _08081FFE
_08081EDA:
	ldrb r2, [r3, #0]
	cmp r2, #0xf7
	bne _08081F40
	add r0, sp, #0x21c
	ldr r1, [sp, #0x270]
	str r1, [r0, #0]
	ldr r7, _08081F3C
	mov r4, r9
	add r4, r8
	movs r2, #0
	movs r5, #0
	mov sl, r0
	adds r3, #1
_08081EF4:
	ldr r1, [r7, #0]
	mov r0, sl
	str r2, [sp, #0x2a4]
	str r3, [sp, #0x2a8]
	bl sub_08000498
	adds r0, #0x41
	strb r0, [r4, #0]
	ldr r2, [sp, #0x2a4]
	ldr r3, [sp, #0x2a8]
	cmp r2, #0
	bne _08081F18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x41
	bne _08081F18
	cmp r5, #5
	bne _08081F26
_08081F18:
	adds r4, #1
	movs r2, #1
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08081F26:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r7, #4
	cmp r5, #5
	bls _08081EF4
	b _08081F50
_08081F34: .4byte gUnk_03000128
_08081F38: .4byte 0x0000032A
_08081F3C: .4byte gUnk_084EBD5C
_08081F40:
	mov r1, r8
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	add r1, r9
	strb r2, [r1, #0]
	adds r3, #1
_08081F50:
	ldrb r0, [r3, #0]
	cmp r0, #0xfd
	bne _08081EDA
	b _08081FFE
_08081F58:
	ldr r2, [sp, #0x290]
	ldrb r0, [r2, #0]
	lsls r0, r0, #1
	ldr r3, _08081FE0
	adds r0, r0, r3
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r2, r0, #0
	mov r5, sl
	ldrh r5, [r5, #0]
	str r5, [sp, #0x274]
	adds r0, r6, #1
	mov r9, r0
	adds r3, r2, #2
	movs r1, #0
	mov r8, r1
	ldrb r0, [r2, #2]
	cmp r0, #0xfd
	beq _08081FFE
_08081F84:
	ldrb r2, [r3, #0]
	cmp r2, #0xf7
	bne _08081FE8
	add r0, sp, #0x220
	ldr r2, [sp, #0x274]
	str r2, [r0, #0]
	ldr r7, _08081FE4
	mov r4, r9
	add r4, r8
	movs r2, #0
	movs r5, #0
	mov sl, r0
	adds r3, #1
_08081F9E:
	ldr r1, [r7, #0]
	mov r0, sl
	str r2, [sp, #0x2a4]
	str r3, [sp, #0x2a8]
	bl sub_08000498
	adds r0, #0x41
	strb r0, [r4, #0]
	ldr r2, [sp, #0x2a4]
	ldr r3, [sp, #0x2a8]
	cmp r2, #0
	bne _08081FC2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x41
	bne _08081FC2
	cmp r5, #5
	bne _08081FD0
_08081FC2:
	adds r4, #1
	movs r2, #1
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08081FD0:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r7, #4
	cmp r5, #5
	bls _08081F9E
	b _08081FF8
	.2byte 0x0000
_08081FE0: .4byte 0x00000329
_08081FE4: .4byte gUnk_084EBD5C
_08081FE8:
	mov r1, r8
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	add r1, r9
	strb r2, [r1, #0]
	adds r3, #1
_08081FF8:
	ldrb r0, [r3, #0]
	cmp r0, #0xfd
	bne _08081F84
_08081FFE:
	mov r1, r9
	add r1, r8
	movs r0, #0xfd
	strb r0, [r1, #0]
	ldr r4, _08082054
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #5
	bl sub_0801A3D0
	ldr r3, [sp, #0x258]
	cmp r3, #0
	bne _08082028
	b _0808271C
_08082028:
	subs r6, r6, r4
	mov r8, r6
	adds r0, r3, #0
	movs r1, #0x64
	bl sub_080B956C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808205C
	ldr r0, [sp, #0x258]
	movs r1, #0xa
	bl sub_080B956C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08082058
	movs r5, #1
	negs r5, r5
	add r8, r5
	movs r7, #1
	b _08082062
	.2byte 0x0000
_08082054: .4byte gUnk_03000128
_08082058:
	movs r7, #2
	b _08082062
_0808205C:
	movs r0, #1
	add r8, r0
	movs r7, #3
_08082062:
	ldr r5, _08082078
	adds r0, r5, #0
	bl sub_0801A638
	mov r4, r8
	adds r4, #0xf
	lsrs r0, r0, #1
	subs r0, r4, r0
	movs r1, #6
	ldr r2, [sp, #0x258]
	b _0808247E
_08082078: .4byte gUnk_03000128
_0808207C:
	ldr r1, [sp, #0x23c]
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _08082086
	b _080824B8
_08082086:
	ldr r0, _08082134
	ldr r4, [r0, #0]
	adds r4, #0x30
	ldr r6, [sp, #0x244]
	adds r6, #0x9b
	ldrb r5, [r6, #0]
	bl sub_0801DE60
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801E378
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x25c]
	ldrb r0, [r6, #0]
	ldr r3, [sp, #0x25c]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x25c]
	ldr r0, _08082138
	bl sub_08007290
	adds r2, r0, #0
	ldrb r1, [r6, #0]
	ldr r5, [sp, #0x23c]
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	str r1, [sp, #0x278]
	ldr r0, _0808213C
	mov sl, r0
	adds r3, r2, #2
	movs r1, #0
	mov r8, r1
	ldrb r0, [r2, #2]
	ldr r2, [sp, #0x244]
	adds r2, #0xa0
	str r2, [sp, #0x294]
	cmp r0, #0xfd
	beq _0808215C
_080820DE:
	ldrb r2, [r3, #0]
	cmp r2, #0xf7
	bne _08082144
	add r0, sp, #0x224
	ldr r5, [sp, #0x278]
	str r5, [r0, #0]
	ldr r6, _08082140
	mov r4, sl
	add r4, r8
	movs r7, #0
	movs r5, #0
	mov r9, r0
	adds r2, r3, #1
_080820F8:
	ldr r1, [r6, #0]
	mov r0, r9
	str r2, [sp, #0x2a4]
	bl sub_08000498
	adds r0, #0x41
	strb r0, [r4, #0]
	ldr r2, [sp, #0x2a4]
	cmp r7, #0
	bne _08082118
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x41
	bne _08082118
	cmp r5, #5
	bne _08082126
_08082118:
	adds r4, #1
	movs r7, #1
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08082126:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r6, #4
	cmp r5, #5
	bls _080820F8
	b _08082154
_08082134: .4byte gUnk_030034E0
_08082138: .4byte 0x00140329
_0808213C: .4byte gUnk_03000128
_08082140: .4byte gUnk_084EBD5C
_08082144:
	mov r1, r8
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	add r1, sl
	strb r2, [r1, #0]
	adds r2, r3, #1
_08082154:
	adds r3, r2, #0
	ldrb r0, [r3, #0]
	cmp r0, #0xfd
	bne _080820DE
_0808215C:
	mov r0, sl
	add r0, r8
	movs r1, #0xfd
	strb r1, [r0, #0]
	mov r0, r8
	subs r0, #1
	mov r1, sl
	adds r6, r1, r0
	movs r0, #0x51
	strb r0, [r6, #0]
	ldr r2, [sp, #0x25c]
	cmp r2, #0
	beq _0808217E
	adds r6, #1
	strb r0, [r6, #0]
	adds r6, #1
	strb r0, [r6, #0]
_0808217E:
	ldr r0, _080821F8
	bl sub_08007290
	adds r2, r0, #0
	ldr r3, [sp, #0x294]
	ldrb r3, [r3, #0]
	str r3, [sp, #0x27c]
	adds r5, r6, #1
	mov r9, r5
	adds r3, r2, #2
	movs r0, #0
	mov r8, r0
	ldrb r0, [r2, #2]
	cmp r0, #0xfd
	beq _08082216
_0808219C:
	ldrb r2, [r3, #0]
	cmp r2, #0xf7
	bne _08082200
	add r0, sp, #0x228
	ldr r1, [sp, #0x27c]
	str r1, [r0, #0]
	ldr r7, _080821FC
	mov r4, r9
	add r4, r8
	movs r2, #0
	movs r5, #0
	mov sl, r0
	adds r3, #1
_080821B6:
	ldr r1, [r7, #0]
	mov r0, sl
	str r2, [sp, #0x2a4]
	str r3, [sp, #0x2a8]
	bl sub_08000498
	adds r0, #0x41
	strb r0, [r4, #0]
	ldr r2, [sp, #0x2a4]
	ldr r3, [sp, #0x2a8]
	cmp r2, #0
	bne _080821DA
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x41
	bne _080821DA
	cmp r5, #5
	bne _080821E8
_080821DA:
	adds r4, #1
	movs r2, #1
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_080821E8:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r7, #4
	cmp r5, #5
	bls _080821B6
	b _08082210
	.2byte 0x0000
_080821F8: .4byte 0x0014032A
_080821FC: .4byte gUnk_084EBD5C
_08082200:
	mov r1, r8
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	add r1, r9
	strb r2, [r1, #0]
	adds r3, #1
_08082210:
	ldrb r0, [r3, #0]
	cmp r0, #0xfd
	bne _0808219C
_08082216:
	mov r1, r9
	add r1, r8
	movs r0, #0xfd
	strb r0, [r1, #0]
	ldr r4, _08082268
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #5
	bl sub_0801A3D0
	ldr r2, [sp, #0x25c]
	cmp r2, #0
	bne _08082240
	b _0808271C
_08082240:
	subs r6, r6, r4
	mov r8, r6
	adds r0, r2, #0
	movs r1, #0x64
	bl sub_080B956C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08082254
	b _08082464
_08082254:
	ldr r0, [sp, #0x25c]
	movs r1, #0xa
	bl sub_080B956C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08082264
	b _08082450
_08082264:
	b _08082460
	.2byte 0x0000
_08082268: .4byte gUnk_03000128
_0808226C:
	ldr r1, [sp, #0x23c]
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _08082276
	b _080824B8
_08082276:
	ldr r0, _08082324
	ldr r4, [r0, #0]
	adds r4, #0x30
	ldr r6, [sp, #0x248]
	adds r6, #0x9b
	ldrb r5, [r6, #0]
	bl sub_0801DE60
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801E378
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x25c]
	ldrb r0, [r6, #0]
	ldr r3, [sp, #0x25c]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x25c]
	ldr r0, _08082328
	bl sub_08007290
	adds r2, r0, #0
	ldrb r1, [r6, #0]
	ldr r5, [sp, #0x23c]
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	str r1, [sp, #0x280]
	ldr r0, _0808232C
	mov sl, r0
	adds r3, r2, #2
	movs r1, #0
	mov r8, r1
	ldrb r0, [r2, #2]
	ldr r2, [sp, #0x248]
	adds r2, #0xa0
	str r2, [sp, #0x298]
	cmp r0, #0xfd
	beq _0808234C
_080822CE:
	ldrb r2, [r3, #0]
	cmp r2, #0xf7
	bne _08082334
	add r0, sp, #0x22c
	ldr r5, [sp, #0x280]
	str r5, [r0, #0]
	ldr r6, _08082330
	mov r4, sl
	add r4, r8
	movs r7, #0
	movs r5, #0
	mov r9, r0
	adds r2, r3, #1
_080822E8:
	ldr r1, [r6, #0]
	mov r0, r9
	str r2, [sp, #0x2a4]
	bl sub_08000498
	adds r0, #0x41
	strb r0, [r4, #0]
	ldr r2, [sp, #0x2a4]
	cmp r7, #0
	bne _08082308
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x41
	bne _08082308
	cmp r5, #5
	bne _08082316
_08082308:
	adds r4, #1
	movs r7, #1
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08082316:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r6, #4
	cmp r5, #5
	bls _080822E8
	b _08082344
_08082324: .4byte gUnk_030034E0
_08082328: .4byte 0x00140329
_0808232C: .4byte gUnk_03000128
_08082330: .4byte gUnk_084EBD5C
_08082334:
	mov r1, r8
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	add r1, sl
	strb r2, [r1, #0]
	adds r2, r3, #1
_08082344:
	adds r3, r2, #0
	ldrb r0, [r3, #0]
	cmp r0, #0xfd
	bne _080822CE
_0808234C:
	mov r0, sl
	add r0, r8
	movs r1, #0xfd
	strb r1, [r0, #0]
	mov r0, r8
	subs r0, #1
	mov r1, sl
	adds r6, r1, r0
	movs r0, #0x51
	strb r0, [r6, #0]
	ldr r2, [sp, #0x25c]
	cmp r2, #0
	beq _0808236E
	adds r6, #1
	strb r0, [r6, #0]
	adds r6, #1
	strb r0, [r6, #0]
_0808236E:
	ldr r0, _080823E8
	bl sub_08007290
	adds r2, r0, #0
	ldr r3, [sp, #0x298]
	ldrb r3, [r3, #0]
	str r3, [sp, #0x284]
	adds r5, r6, #1
	mov r9, r5
	adds r3, r2, #2
	movs r0, #0
	mov r8, r0
	ldrb r0, [r2, #2]
	cmp r0, #0xfd
	beq _08082406
_0808238C:
	ldrb r2, [r3, #0]
	cmp r2, #0xf7
	bne _080823F0
	add r0, sp, #0x230
	ldr r1, [sp, #0x284]
	str r1, [r0, #0]
	ldr r7, _080823EC
	mov r4, r9
	add r4, r8
	movs r2, #0
	movs r5, #0
	mov sl, r0
	adds r3, #1
_080823A6:
	ldr r1, [r7, #0]
	mov r0, sl
	str r2, [sp, #0x2a4]
	str r3, [sp, #0x2a8]
	bl sub_08000498
	adds r0, #0x41
	strb r0, [r4, #0]
	ldr r2, [sp, #0x2a4]
	ldr r3, [sp, #0x2a8]
	cmp r2, #0
	bne _080823CA
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x41
	bne _080823CA
	cmp r5, #5
	bne _080823D8
_080823CA:
	adds r4, #1
	movs r2, #1
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_080823D8:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r7, #4
	cmp r5, #5
	bls _080823A6
	b _08082400
	.2byte 0x0000
_080823E8: .4byte 0x0014032A
_080823EC: .4byte gUnk_084EBD5C
_080823F0:
	mov r1, r8
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	add r1, r9
	strb r2, [r1, #0]
	adds r3, #1
_08082400:
	ldrb r0, [r3, #0]
	cmp r0, #0xfd
	bne _0808238C
_08082406:
	mov r1, r9
	add r1, r8
	movs r0, #0xfd
	strb r0, [r1, #0]
	ldr r4, _0808245C
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #5
	bl sub_0801A3D0
	ldr r2, [sp, #0x25c]
	cmp r2, #0
	bne _08082430
	b _0808271C
_08082430:
	subs r6, r6, r4
	mov r8, r6
	adds r0, r2, #0
	movs r1, #0x64
	bl sub_080B956C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08082464
	ldr r0, [sp, #0x25c]
	movs r1, #0xa
	bl sub_080B956C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08082460
_08082450:
	movs r3, #1
	negs r3, r3
	add r8, r3
	movs r7, #1
	b _0808246A
	.2byte 0x0000
_0808245C: .4byte gUnk_03000128
_08082460:
	movs r7, #2
	b _0808246A
_08082464:
	movs r5, #1
	add r8, r5
	movs r7, #3
_0808246A:
	ldr r5, _080824AC
	adds r0, r5, #0
	bl sub_0801A638
	mov r4, r8
	adds r4, #0xf
	lsrs r0, r0, #1
	subs r0, r4, r0
	movs r1, #6
	ldr r2, [sp, #0x25c]
_0808247E:
	movs r3, #2
	bl sub_0805FB7C
	bl sub_080653CC
	adds r6, r0, #0
	adds r0, r5, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	subs r4, r4, r0
	subs r4, r4, r7
	lsls r4, r4, #3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x38
	movs r3, #0x1a
	bl sub_08065230
	b _0808271C
	.2byte 0x0000
_080824AC: .4byte gUnk_03000128
_080824B0:
	ldr r1, [sp, #0x23c]
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _080824BE
_080824B8:
	movs r2, #0
	str r2, [sp, #0x254]
	b _0808271C
_080824BE:
	ldr r0, [sp, #0x24c]
	adds r0, #0xa0
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080824EC
	ldr r0, _080824E8
	ldr r4, [r0, #0]
	adds r4, #0x30
	ldr r6, [sp, #0x24c]
	adds r6, #0x9b
	ldrb r5, [r6, #0]
	bl sub_0801DE60
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801E3D8
	b _0808250A
_080824E8: .4byte gUnk_030034E0
_080824EC:
	ldr r0, _0808259C
	ldr r4, [r0, #0]
	adds r4, #0x30
	ldr r6, [sp, #0x24c]
	adds r6, #0x9b
	ldrb r5, [r6, #0]
	bl sub_0801DE60
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801E378
_0808250A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x25c]
	ldrb r0, [r6, #0]
	ldr r3, [sp, #0x25c]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x25c]
	ldr r0, _080825A0
	bl sub_08007290
	adds r2, r0, #0
	ldrb r1, [r6, #0]
	ldr r5, [sp, #0x23c]
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	str r1, [sp, #0x288]
	ldr r0, _080825A4
	mov sl, r0
	adds r3, r2, #2
	movs r1, #0
	mov r8, r1
	ldrb r0, [r2, #2]
	ldr r2, [sp, #0x24c]
	adds r2, #0xa1
	str r2, [sp, #0x29c]
	cmp r0, #0xfd
	beq _080825C4
_08082544:
	ldrb r2, [r3, #0]
	cmp r2, #0xf7
	bne _080825AC
	add r0, sp, #0x234
	ldr r5, [sp, #0x288]
	str r5, [r0, #0]
	ldr r7, _080825A8
	mov r4, sl
	add r4, r8
	movs r6, #0
	movs r5, #0
	mov r9, r0
	adds r2, r3, #1
_0808255E:
	ldr r1, [r7, #0]
	mov r0, r9
	str r2, [sp, #0x2a4]
	bl sub_08000498
	adds r0, #0x41
	strb r0, [r4, #0]
	ldr r2, [sp, #0x2a4]
	cmp r6, #0
	bne _0808257E
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x41
	bne _0808257E
	cmp r5, #5
	bne _0808258C
_0808257E:
	adds r4, #1
	movs r6, #1
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0808258C:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r7, #4
	cmp r5, #5
	bls _0808255E
	b _080825BC
	.2byte 0x0000
_0808259C: .4byte gUnk_030034E0
_080825A0: .4byte 0x00140329
_080825A4: .4byte gUnk_03000128
_080825A8: .4byte gUnk_084EBD5C
_080825AC:
	mov r1, r8
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	add r1, sl
	strb r2, [r1, #0]
	adds r2, r3, #1
_080825BC:
	adds r3, r2, #0
	ldrb r0, [r3, #0]
	cmp r0, #0xfd
	bne _08082544
_080825C4:
	mov r0, sl
	add r0, r8
	movs r1, #0xfd
	strb r1, [r0, #0]
	mov r0, r8
	subs r0, #1
	mov r1, sl
	adds r6, r1, r0
	movs r0, #0x51
	strb r0, [r6, #0]
	ldr r2, [sp, #0x25c]
	cmp r2, #0
	beq _080825E6
	adds r6, #1
	strb r0, [r6, #0]
	adds r6, #1
	strb r0, [r6, #0]
_080825E6:
	ldr r0, _08082660
	bl sub_08007290
	adds r2, r0, #0
	ldr r3, [sp, #0x29c]
	ldrb r3, [r3, #0]
	str r3, [sp, #0x28c]
	adds r5, r6, #1
	mov r9, r5
	adds r3, r2, #2
	movs r0, #0
	mov r8, r0
	ldrb r0, [r2, #2]
	cmp r0, #0xfd
	beq _0808267E
_08082604:
	ldrb r2, [r3, #0]
	cmp r2, #0xf7
	bne _08082668
	add r0, sp, #0x238
	ldr r1, [sp, #0x28c]
	str r1, [r0, #0]
	ldr r7, _08082664
	mov r4, r9
	add r4, r8
	movs r2, #0
	movs r5, #0
	mov sl, r0
	adds r3, #1
_0808261E:
	ldr r1, [r7, #0]
	mov r0, sl
	str r2, [sp, #0x2a4]
	str r3, [sp, #0x2a8]
	bl sub_08000498
	adds r0, #0x41
	strb r0, [r4, #0]
	ldr r2, [sp, #0x2a4]
	ldr r3, [sp, #0x2a8]
	cmp r2, #0
	bne _08082642
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x41
	bne _08082642
	cmp r5, #5
	bne _08082650
_08082642:
	adds r4, #1
	movs r2, #1
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08082650:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r7, #4
	cmp r5, #5
	bls _0808261E
	b _08082678
	.2byte 0x0000
_08082660: .4byte 0x0014032A
_08082664: .4byte gUnk_084EBD5C
_08082668:
	mov r1, r8
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	add r1, r9
	strb r2, [r1, #0]
	adds r3, #1
_08082678:
	ldrb r0, [r3, #0]
	cmp r0, #0xfd
	bne _08082604
_0808267E:
	mov r1, r9
	add r1, r8
	movs r0, #0xfd
	strb r0, [r1, #0]
	ldr r4, _080826D0
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #5
	bl sub_0801A3D0
	ldr r2, [sp, #0x25c]
	cmp r2, #0
	beq _0808271C
	subs r6, r6, r4
	mov r8, r6
	adds r0, r2, #0
	movs r1, #0x64
	bl sub_080B956C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080826D8
	ldr r0, [sp, #0x25c]
	movs r1, #0xa
	bl sub_080B956C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080826D4
	movs r3, #1
	negs r3, r3
	add r8, r3
	movs r7, #1
	b _080826DE
_080826D0: .4byte gUnk_03000128
_080826D4:
	movs r7, #2
	b _080826DE
_080826D8:
	movs r5, #1
	add r8, r5
	movs r7, #3
_080826DE:
	ldr r5, _080827C4
	adds r0, r5, #0
	bl sub_0801A638
	mov r4, r8
	adds r4, #0xf
	lsrs r0, r0, #1
	subs r0, r4, r0
	movs r1, #6
	ldr r2, [sp, #0x25c]
	movs r3, #2
	bl sub_0805FB7C
	bl sub_080653CC
	adds r6, r0, #0
	adds r0, r5, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	subs r4, r4, r0
	subs r4, r4, r7
	lsls r4, r4, #3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x38
	movs r3, #0x1a
	bl sub_08065230
_0808271C:
	movs r7, #0
	movs r0, #0
	mov r8, r0
	ldr r6, _080827C8
_08082724:
	ldr r0, [sp, #0x254]
	mov r1, r8
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808276E
	movs r0, #0x34
	adds r4, r7, #0
	muls r4, r0, r4
	mov r5, sp
	adds r5, r5, r4
	adds r5, #4
	movs r0, #0x58
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r6
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	negs r3, r3
	bl sub_08065158
	adds r0, r7, #0
	adds r0, #0x10
	add r1, sp, #0x10
	adds r1, r1, r4
	ldr r1, [r1, #0]
	movs r2, #1
	bl sub_08000AF0
	strb r7, [r5, #0x1c]
	adds r7, #1
_0808276E:
	movs r3, #1
	add r8, r3
	mov r5, r8
	cmp r5, #9
	bls _08082724
	movs r0, #0
	mov r8, r0
	cmp r8, r7
	bhs _080827B0
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #2
	negs r0, r0
	adds r4, r0, #0
	adds r4, #0x84
_0808278C:
	movs r0, #0x34
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, sp
	adds r0, #4
	movs r1, #0
	str r1, [sp, #0]
	adds r1, r4, #0
	movs r2, #0x81
	movs r3, #0
	bl sub_08065230
	adds r4, #0x18
	movs r2, #1
	add r8, r2
	cmp r8, r7
	blo _0808278C
_080827B0:
	ldr r3, [sp, #0x23c]
	ldrh r4, [r3, #0]
	cmp r4, #9
	bgt _080827CC
	cmp r4, #8
	blt _080827BE
	b _08082948
_080827BE:
	cmp r4, #1
	beq _080827D2
	b _08082810
_080827C4: .4byte gUnk_03000128
_080827C8: .4byte gUnk_08479140
_080827CC:
	cmp r4, #0xa
	beq _08082800
	b _08082810
_080827D2:
	ldr r5, [sp, #0x250]
	ldrh r0, [r5, #0]
	cmp r0, #0
	bne _080827DC
	b _08082948
_080827DC:
	movs r1, #0xc5
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r2, r0, #0
	ldrh r0, [r5, #2]
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x10
	str r4, [sp, #0]
	movs r0, #0xf
	movs r1, #7
	bl sub_08081518
	b _08082948
_08082800:
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r0, #0xf
	movs r1, #6
	ldr r2, [sp, #0x23c]
	bl sub_0805FFBC
	b _08082948
_08082810:
	ldr r2, [sp, #0x254]
	cmp r2, #0
	bne _08082818
	b _08082926
_08082818:
	movs r4, #0
	mov r8, r4
	ldr r3, [sp, #0x250]
	cmp r3, #0
	bne _08082824
	b _08082948
_08082824:
	adds r1, r3, #0
_08082826:
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _08082832
	cmp r0, #0x29
	beq _08082832
	adds r4, #1
_08082832:
	adds r1, #4
	movs r5, #1
	add r8, r5
	mov r0, r8
	cmp r0, #2
	bhi _08082844
	ldr r2, [sp, #0x250]
	cmp r2, #0
	bne _08082826
_08082844:
	movs r3, #0
	mov r8, r3
	ldr r5, [sp, #0x250]
	cmp r5, #0
	beq _08082948
_0808284E:
	ldr r1, [sp, #0x250]
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _08082910
	cmp r0, #0x29
	beq _08082910
	ldrh r0, [r1, #2]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08082876
	ldr r3, [sp, #0x250]
	ldrh r0, [r3, #0]
	lsls r0, r0, #1
	movs r5, #0xb1
	lsls r5, r5, #2
	adds r0, r0, r5
	b _08082880
_08082876:
	ldr r1, [sp, #0x250]
	ldrh r0, [r1, #0]
	lsls r0, r0, #1
	ldr r2, _0808289C
	adds r0, r0, r2
_08082880:
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r2, r0, #0
	cmp r4, #2
	beq _080828C2
	cmp r4, #2
	bhi _080828A0
	cmp r4, #1
	beq _080828A6
	b _08082910
	.2byte 0x0000
_0808289C: .4byte 0x000002C3
_080828A0:
	cmp r4, #3
	beq _080828EA
	b _08082910
_080828A6:
	ldr r5, [sp, #0x250]
	movs r0, #2
	ldrsh r3, [r5, r0]
	cmp r3, #0
	bge _080828B2
	negs r3, r3
_080828B2:
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r4, [sp, #0]
	movs r0, #0xf
	movs r1, #9
	bl sub_08081518
	b _08082910
_080828C2:
	mov r1, r8
	lsls r0, r1, #0x11
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r0, r0, r3
	lsrs r1, r0, #0x10
	ldr r5, [sp, #0x250]
	movs r0, #2
	ldrsh r3, [r5, r0]
	cmp r3, #0
	bge _080828DA
	negs r3, r3
_080828DA:
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #0xf
	bl sub_08081518
	b _08082910
_080828EA:
	mov r1, r8
	lsls r0, r1, #0x11
	movs r3, #0xe0
	lsls r3, r3, #0xb
	adds r0, r0, r3
	lsrs r1, r0, #0x10
	ldr r5, [sp, #0x250]
	movs r0, #2
	ldrsh r3, [r5, r0]
	cmp r3, #0
	bge _08082902
	negs r3, r3
_08082902:
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #0xf
	bl sub_08081518
_08082910:
	ldr r1, [sp, #0x250]
	adds r1, #4
	str r1, [sp, #0x250]
	movs r2, #1
	add r8, r2
	mov r3, r8
	cmp r3, #2
	bhi _08082948
	cmp r1, #0
	bne _0808284E
	b _08082948
_08082926:
	ldr r0, _0808295C
	bl sub_08007290
	adds r2, r0, #0
	adds r4, r2, #2
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #9
	bl sub_0801A3D0
_08082948:
	movs r3, #0xab
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0808295C: .4byte 0x00140365
	thumb_func_end sub_080815F4
