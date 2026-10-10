	thumb_func_start sub_080855D4
sub_080855D4: @ 0x080855D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08085750
	add sp, r4
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
	ldr r1, _08085754
	movs r2, #0xbb
	lsls r2, r2, #3
	add r2, sp
	ldr r0, [r2, #0]
	ands r0, r1
	movs r1, #0xf0
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #0]
	movs r4, #0xbb
	lsls r4, r4, #3
	add r4, sp
	movs r0, #3
	adds r1, r4, #0
	bl sub_08000AA8
	ldr r1, _08085758
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1, #0]
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xc]
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r0, #0xf
	str r0, [sp, #0]
	movs r0, #0x47
	movs r1, #0x1e
	movs r3, #0
	bl sub_0800B650
	bl sub_0800CF90
	movs r0, #0
	movs r1, #0x14
	bl sub_0801A664
	bl sub_080003F0
	bl sub_080003F0
	movs r0, #0
	movs r1, #0x14
	bl sub_0801A664
	bl sub_080003F0
	movs r0, #0
	mov sl, r0
	movs r7, #0
	ldr r1, _0808575C
	mov r8, r1
	movs r5, #0xa8
	lsls r5, r5, #1
	movs r4, #0
_08085672:
	mov r3, r8
	ldr r2, [r3, #0]
	lsls r3, r7, #4
	adds r1, r2, r3
	adds r0, r1, r5
	ldrh r0, [r0, #0]
	cmp r0, #8
	bne _080856B2
	movs r6, #0xa9
	lsls r6, r6, #1
	adds r1, r1, r6
	movs r6, #0xc1
	lsls r6, r6, #4
	adds r0, r2, r6
	ldrh r1, [r1, #0]
	adds r1, r0, r1
	ldrb r0, [r1, #0]
	cmp r0, #0x62
	bhi _080856B2
	adds r0, #1
	strb r0, [r1, #0]
	mov r0, r8
	ldr r1, [r0, #0]
	adds r1, r1, r3
	adds r0, r1, r5
	strh r4, [r0, #0]
	movs r2, #0xa9
	lsls r2, r2, #1
	adds r0, r1, r2
	strh r4, [r0, #0]
	movs r3, #1
	add sl, r3
_080856B2:
	adds r7, #1
	cmp r7, #0x18
	bls _08085672
	add r0, sp, #0x3e4
	ldr r1, _08085760
	movs r3, #1
	negs r3, r3
	movs r2, #0
	str r2, [sp, #0]
	movs r2, #1
	bl sub_08065158
	movs r7, #0
	cmp r7, sl
	bhs _08085746
	ldr r4, _08085764
	mov r8, r4
	movs r6, #0
_080856D6:
	bl sub_080008C8
	adds r5, r0, #0
	movs r0, #0xff
	ands r5, r0
	movs r2, #0x85
	lsls r2, r2, #3
	add r2, sp
	lsls r3, r7, #3
	adds r2, r2, r3
	adds r0, r5, #0
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0x78
	str r0, [r2, #0]
	ldr r2, _08085768
	add r2, sp
	adds r2, r2, r3
	lsls r0, r5, #1
	add r0, r8
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0x50
	str r0, [r2, #0]
	ldr r0, _0808576C
	add r0, sp
	lsls r4, r7, #2
	adds r0, r0, r4
	str r6, [r0, #0]
	bl sub_080008C8
	movs r2, #0x9e
	lsls r2, r2, #3
	add r2, sp
	adds r2, r2, r4
	movs r1, #0xf
	ands r1, r0
	adds r1, #8
	str r1, [r2, #0]
	movs r0, #0xb7
	lsls r0, r0, #3
	add r0, sp
	adds r0, r0, r7
	strb r6, [r0, #0]
	adds r7, #1
	cmp r7, sl
	blo _080856D6
_08085746:
	movs r0, #0x1e
	bl sub_0801AA34
	b _0808577E
	.2byte 0x0000
_08085750: .4byte 0xFFFFF9FC
_08085754: .4byte 0xFFFF0000
_08085758: .4byte gUnk_03001250
_0808575C: .4byte gUnk_030034E0
_08085760: .4byte 0x000500AF
_08085764: .4byte gUnk_080B9704
_08085768: .4byte 0x0000042C
_0808576C: .4byte 0x00000554
_08085770:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0808577A
	b _08085A60
_0808577A:
	bl sub_080003F0
_0808577E:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08085770
	ldr r0, _0808578C
	ldrh r1, [r0, #0]
	b _0808586C
_0808578C: .4byte gUnk_03001324
_08085790:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0808579A
	b _08085A60
_0808579A:
	movs r7, #0
	cmp r7, sl
	bhs _08085858
	ldr r5, _08085890
	add r5, sp
	movs r6, #0
_080857A6:
	movs r0, #0x85
	lsls r0, r0, #3
	add r0, sp
	lsls r4, r7, #3
	adds r0, r0, r4
	ldr r1, [r0, #0]
	ldr r3, [r5, #0]
	ldr r0, _08085894
	add r0, sp
	movs r2, #0xf0
	lsls r2, r2, #7
	bl sub_080659F4
	ldr r0, _08085898
	add r0, sp
	adds r0, r0, r4
	ldr r1, [r0, #0]
	ldr r3, [r5, #0]
	movs r0, #0xbc
	lsls r0, r0, #3
	add r0, sp
	movs r2, #0xa0
	lsls r2, r2, #7
	bl sub_080659F4
	movs r0, #0xb7
	lsls r0, r0, #3
	add r0, sp
	adds r4, r0, r7
	ldrb r0, [r4, #0]
	cmp r0, #2
	beq _08085804
	ldr r0, _08085894
	add r0, sp
	ldr r1, [r0, #0]
	asrs r1, r1, #8
	movs r0, #0xbc
	lsls r0, r0, #3
	add r0, sp
	ldr r2, [r0, #0]
	asrs r2, r2, #8
	movs r0, #0x1d
	str r0, [sp, #0]
	add r0, sp, #0x3e4
	movs r3, #0
	bl sub_08065230
_08085804:
	movs r0, #0x9e
	lsls r0, r0, #3
	add r0, sp
	adds r0, r0, r6
	ldr r1, [r5, #0]
	ldr r0, [r0, #0]
	adds r1, r1, r0
	str r1, [r5, #0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _0808582C
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne _0808582C
	movs r0, #0x60
	bl sub_0805865C
	movs r0, #1
	strb r0, [r4, #0]
_0808582C:
	ldr r1, [r5, #0]
	ldr r0, _0808589C
	cmp r1, r0
	ble _0808584E
	adds r0, #1
	str r0, [r5, #0]
	adds r0, #0xf0
	add r0, sp
	adds r0, r0, r6
	movs r1, #0
	str r1, [r0, #0]
	movs r0, #0xb7
	lsls r0, r0, #3
	add r0, sp
	adds r0, r0, r7
	movs r1, #2
	strb r1, [r0, #0]
_0808584E:
	adds r5, #4
	adds r6, #4
	adds r7, #1
	cmp r7, sl
	blo _080857A6
_08085858:
	bl sub_080003F0
	ldr r0, _080858A0
	ldrh r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808586C
	bl _0808677C
_0808586C:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08085790
	ldr r0, _080858A4
	bl sub_0805865C
	movs r0, #0x3c
	bl sub_0801AA8C
	mov r6, sp
	adds r6, #0xd0
	movs r0, #0xbe
	lsls r0, r0, #3
	add r0, sp
	str r6, [r0, #0]
	b _08085950
	.2byte 0x0000
_08085890: .4byte 0x00000554
_08085894: .4byte 0x000005DC
_08085898: .4byte 0x0000042C
_0808589C: .4byte 0x000003FF
_080858A0: .4byte gUnk_03001324
_080858A4: .4byte 0x00000177
_080858A8:
	movs r7, #0
	cmp r7, sl
	bhs _0808594C
_080858AE:
	movs r0, #0x85
	lsls r0, r0, #3
	add r0, sp
	lsls r4, r7, #3
	adds r0, r0, r4
	ldr r1, [r0, #0]
	ldr r0, _080859D4
	add r0, sp
	lsls r6, r7, #2
	adds r5, r0, r6
	ldr r3, [r5, #0]
	ldr r0, _080859D8
	add r0, sp
	movs r2, #0xf0
	lsls r2, r2, #7
	bl sub_080659F4
	ldr r0, _080859DC
	add r0, sp
	adds r0, r0, r4
	ldr r1, [r0, #0]
	ldr r3, [r5, #0]
	movs r0, #0xbc
	lsls r0, r0, #3
	add r0, sp
	movs r2, #0xa0
	lsls r2, r2, #7
	bl sub_080659F4
	movs r0, #0xb7
	lsls r0, r0, #3
	add r0, sp
	adds r0, r0, r7
	mov r8, r0
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _08085916
	ldr r0, _080859D8
	add r0, sp
	ldr r1, [r0, #0]
	asrs r1, r1, #8
	movs r0, #0xbc
	lsls r0, r0, #3
	add r0, sp
	ldr r2, [r0, #0]
	asrs r2, r2, #8
	movs r0, #0x1d
	str r0, [sp, #0]
	add r0, sp, #0x3e4
	movs r3, #0
	bl sub_08065230
_08085916:
	movs r0, #0x9e
	lsls r0, r0, #3
	add r0, sp
	adds r6, r0, r6
	ldr r1, [r5, #0]
	ldr r0, [r6, #0]
	adds r1, r1, r0
	str r1, [r5, #0]
	ldr r0, _080859E0
	cmp r1, r0
	ble _08085946
	adds r0, #1
	str r0, [r5, #0]
	mov r1, r8
	ldrb r4, [r1, #0]
	cmp r4, #0
	bne _08085946
	movs r0, #0x60
	bl sub_0805865C
	movs r0, #1
	mov r2, r8
	strb r0, [r2, #0]
	str r4, [r6, #0]
_08085946:
	adds r7, #1
	cmp r7, sl
	blo _080858AE
_0808594C:
	bl sub_080003F0
_08085950:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080858A8
	bl sub_080020F4
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #0x2e
	movs r1, #0x1a
	adds r2, r5, #0
	movs r3, #0
	bl sub_0800B7DC
	str r4, [sp, #0]
	movs r0, #0x30
	movs r1, #0x1b
	adds r2, r5, #0
	movs r3, #0
	bl sub_0800B650
	str r4, [sp, #0]
	movs r0, #0x2f
	movs r1, #0x1e
	adds r2, r5, #0
	movs r3, #0
	bl sub_0800B650
	movs r0, #2
	str r0, [sp, #0]
	movs r0, #0x31
	movs r1, #0x1f
	adds r2, r5, #0
	movs r3, #0
	bl sub_0800B650
	movs r0, #0xf
	str r0, [sp, #0]
	movs r0, #0x49
	movs r1, #0x1d
	adds r2, r5, #0
	movs r3, #0
	bl sub_0800B650
	ldr r0, _080859E4
	bl sub_08007290
	movs r3, #0xf0
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r0, #0xf
	movs r2, #1
	bl sub_08000AF0
	ldr r0, _080859E8
	ldr r0, [r0, #0]
	cmp r0, #4
	bhi _08085A80
	lsls r0, r0, #2
	ldr r1, _080859EC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080859D4: .4byte 0x00000554
_080859D8: .4byte 0x000005DC
_080859DC: .4byte 0x0000042C
_080859E0: .4byte 0x000003FF
_080859E4: .4byte 0x00070016
_080859E8: .4byte gUnk_03003470
_080859EC: .4byte _080859F0
_080859F0:
	.4byte _08085A04
_080859F4: .4byte _08085A18
_080859F8: .4byte _08085A2C
_080859FC: .4byte _08085A40
_08085A00: .4byte _08085A6C
_08085A04:
	ldr r0, _08085A10
	ldr r0, [r0, #0]
	adds r0, #0x2c
	ldr r1, _08085A14
	b _08085A48
	.2byte 0x0000
_08085A10: .4byte gUnk_03006478
_08085A14: .4byte 0x00050006
_08085A18:
	ldr r0, _08085A24
	ldr r0, [r0, #0]
	adds r0, #0x2c
	ldr r1, _08085A28
	b _08085A48
	.2byte 0x0000
_08085A24: .4byte gUnk_03006478
_08085A28: .4byte 0x00050007
_08085A2C:
	ldr r0, _08085A38
	ldr r0, [r0, #0]
	adds r0, #0x2c
	ldr r1, _08085A3C
	b _08085A48
	.2byte 0x0000
_08085A38: .4byte gUnk_03006478
_08085A3C: .4byte 0x00050008
_08085A40:
	ldr r0, _08085A58
	ldr r0, [r0, #0]
	adds r0, #0x2c
	ldr r1, _08085A5C
_08085A48:
	movs r3, #1
	negs r3, r3
	movs r2, #0
	str r2, [sp, #0]
	bl sub_08065158
	b _08085A80
	.2byte 0x0000
_08085A58: .4byte gUnk_03006478
_08085A5C: .4byte 0x00050009
_08085A60:
	bl sub_0800CCB8
	bl sub_0800CE54
	bl _080867C0
_08085A6C:
	ldr r0, _08085B64
	ldr r0, [r0, #0]
	adds r0, #0x2c
	ldr r1, _08085B68
	movs r3, #1
	negs r3, r3
	movs r2, #0
	str r2, [sp, #0]
	bl sub_08065158
_08085A80:
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	movs r0, #0xf8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	movs r5, #0
	ldr r0, _08085B6C
	movs r4, #0xbb
	lsls r4, r4, #3
	add r4, sp
	strh r0, [r4, #0]
	movs r0, #1
	movs r1, #0xbb
	lsls r1, r1, #3
	add r1, sp
	bl sub_08000AA8
	ldr r0, _08085B70
	strh r0, [r4, #0]
	movs r0, #2
	movs r1, #0xbb
	lsls r1, r1, #3
	add r1, sp
	bl sub_08000AA8
	ldr r0, _08085B74
	strh r0, [r4, #0]
	movs r0, #3
	movs r1, #0xbb
	lsls r1, r1, #3
	add r1, sp
	bl sub_08000AA8
	ldr r0, _08085B64
	ldr r0, [r0, #0]
	str r5, [r0, #0x18]
	str r5, [r0, #4]
	str r5, [r0, #8]
	str r5, [r0, #0x10]
	movs r1, #1
	str r1, [r0, #0]
	str r5, [r0, #0x14]
	ldr r7, _08085B78
	add r7, sp
	movs r4, #0xbe
	lsls r4, r4, #3
	add r4, sp
	ldr r6, [r4, #0]
	adds r6, #0x94
	ldr r4, [r4, #0]
	adds r4, #0x8c
_08085AF4:
	ldr r0, _08085B7C
	strh r0, [r4, #0]
	movs r0, #0
	strh r0, [r7, #0]
	adds r0, r7, #0
	adds r1, r6, #0
	ldr r2, _08085B80
	bl CpuSet
	adds r6, #0x28
	adds r4, #0x28
	adds r5, #1
	cmp r5, #7
	bls _08085AF4
	movs r5, #0
	ldr r6, _08085B84
	add r6, sp
	str r5, [r6, #0]
	ldr r1, _08085B88
	ldrh r0, [r1, #2]
	cmp r0, #0x64
	beq _08085B3E
	adds r1, #2
_08085B22:
	ldrh r0, [r1, #0]
	movs r2, #0xbd
	lsls r2, r2, #3
	add r2, sp
	str r0, [r2, #0]
	adds r1, #4
	ldr r4, _08085B84
	add r4, sp
	ldr r3, [r4, #0]
	adds r3, #1
	str r3, [r4, #0]
	ldrh r0, [r1, #0]
	cmp r0, #0x64
	bne _08085B22
_08085B3E:
	bl sub_080003F0
	movs r0, #0
	movs r1, #0x13
	bl sub_0801A664
	bl sub_080003F0
	movs r0, #0xc
	movs r1, #2
	bl sub_08000C08
	movs r0, #0x14
	bl sub_0801AA34
	ldr r0, _08085B64
	ldr r0, [r0, #0]
	bl _08086772
_08085B64: .4byte gUnk_03006478
_08085B68: .4byte 0x0005000A
_08085B6C: .4byte 0x00005A01
_08085B70: .4byte 0x00005E01
_08085B74: .4byte 0x00001D03
_08085B78: .4byte 0x000005D4
_08085B7C: .4byte 0x0000FFFF
_08085B80: .4byte 0x01000018
_08085B84: .4byte 0x000005E4
_08085B88: .4byte gUnk_084ECC2C
_08085B8C:
	bl sub_0800CDF8
	adds r4, r0, #0
	cmp r4, #0
	beq _08085B98
	b _08085A60
_08085B98:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08085BA8
	bl sub_08058DB0
	cmp r0, #0
	beq _08085BB4
_08085BA8:
	ldr r0, _08085BD8
	strh r4, [r0, #0]
	ldr r0, _08085BDC
	strh r4, [r0, #0]
	ldr r0, _08085BE0
	strh r4, [r0, #0]
_08085BB4:
	bl sub_080021A8
	cmp r0, #0
	beq _08085BC0
	bl _080867C0
_08085BC0:
	ldr r6, _08085BE4
	ldr r2, [r6, #0]
	ldr r1, [r2, #0x18]
	cmp r1, #1
	bne _08085BCC
	b _08085D30
_08085BCC:
	cmp r1, #1
	blo _08085BE8
	cmp r1, #3
	bne _08085BD6
	b _08085E2C
_08085BD6:
	b _08085F44
_08085BD8: .4byte gUnk_03001324
_08085BDC: .4byte gUnk_03001308
_08085BE0: .4byte gUnk_0300130C
_08085BE4: .4byte gUnk_03006478
_08085BE8:
	ldr r0, _08085C14
	ldrh r1, [r0, #0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08085C1C
	ldr r1, _08085C18
	ldr r0, [r2, #0x10]
	ldr r3, [r2, #8]
	adds r0, r0, r3
	adds r0, #1
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	ldr r0, [r2, #4]
	cmp r1, r0
	beq _08085C0E
	b _08085F44
_08085C0E:
	adds r0, r3, #1
	str r0, [r2, #8]
	b _08085F24
_08085C14: .4byte gUnk_03001308
_08085C18: .4byte gUnk_084ECC2C
_08085C1C:
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08085C36
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _08085C30
	b _08085F44
_08085C30:
	subs r0, #1
	str r0, [r2, #8]
	b _08085F24
_08085C36:
	ldr r0, _08085C80
	ldrh r1, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08085C8C
	ldr r0, _08085C84
	bl sub_0805865C
	ldr r1, [r6, #0]
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	movs r5, #0xbd
	lsls r5, r5, #3
	add r5, sp
	ldr r5, [r5, #0]
	cmp r0, r5
	bls _08085C60
	str r4, [r1, #4]
_08085C60:
	movs r7, #0
	ldr r3, _08085C88
	ldrh r1, [r3, #2]
	ldr r0, [r6, #0]
	ldr r0, [r0, #4]
	cmp r1, r0
	beq _08085CCE
	adds r2, r0, #0
	adds r1, r3, #2
_08085C72:
	adds r1, #4
	adds r7, #1
	ldrh r0, [r1, #0]
	cmp r0, r2
	bne _08085C72
	b _08085CCE
	.2byte 0x0000
_08085C80: .4byte gUnk_03001324
_08085C84: .4byte 0x00000177
_08085C88: .4byte gUnk_084ECC2C
_08085C8C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08085CF0
	ldr r0, _08085CE4
	bl sub_0805865C
	ldr r1, [r6, #0]
	ldr r0, [r1, #4]
	subs r0, #1
	str r0, [r1, #4]
	cmp r0, #0
	bge _08085CB2
	movs r0, #0xbd
	lsls r0, r0, #3
	add r0, sp
	ldr r0, [r0, #0]
	str r0, [r1, #4]
_08085CB2:
	movs r7, #0
	ldr r3, _08085CE8
	ldrh r1, [r3, #2]
	ldr r0, [r6, #0]
	ldr r0, [r0, #4]
	cmp r1, r0
	beq _08085CCE
	adds r2, r0, #0
	adds r1, r3, #2
_08085CC4:
	adds r1, #4
	adds r7, #1
	ldrh r0, [r1, #0]
	cmp r0, r2
	bne _08085CC4
_08085CCE:
	ldr r4, _08085CEC
	ldr r0, [r4, #0]
	str r7, [r0, #0x10]
	movs r0, #0
	movs r1, #0x13
	bl sub_0801A664
	ldr r1, [r4, #0]
	movs r0, #0
	str r0, [r1, #8]
	b _08085F44
_08085CE4: .4byte 0x00000177
_08085CE8: .4byte gUnk_084ECC2C
_08085CEC: .4byte gUnk_03006478
_08085CF0:
	movs r5, #1
	adds r4, r5, #0
	ands r4, r1
	cmp r4, #0
	beq _08085D1A
	movs r0, #0xf
	bl sub_0805865C
	ldr r0, [r6, #0]
	ldr r1, [r0, #0x10]
	ldr r2, [r0, #8]
	adds r1, r1, r2
	str r1, [r0, #0x10]
	adds r1, #1
	str r1, [r0, #0xc]
	str r5, [r0, #0x18]
	movs r0, #0
	movs r1, #0x13
	bl sub_0801A664
	b _08085F44
_08085D1A:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08085D24
	b _08085F44
_08085D24:
	movs r0, #0x10
	bl sub_0805865C
	ldr r0, [r6, #0]
	str r4, [r0, #0]
	b _08085F44
_08085D30:
	ldr r0, _08085D48
	ldrh r3, [r0, #0]
	ands r1, r3
	cmp r1, #0
	beq _08085D4C
	movs r0, #3
	str r0, [r2, #0x18]
	movs r0, #0xf
	bl sub_0805865C
	b _08085F44
	.2byte 0x0000
_08085D48: .4byte gUnk_03001324
_08085D4C:
	movs r0, #2
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08085D94
	movs r7, #0
	ldr r3, _08085D8C
	ldrh r0, [r3, #2]
	ldr r1, [r2, #4]
	cmp r0, r1
	beq _08085D72
	adds r2, r1, #0
	adds r1, r3, #2
_08085D68:
	adds r1, #4
	adds r7, #1
	ldrh r0, [r1, #0]
	cmp r0, r2
	bne _08085D68
_08085D72:
	ldr r0, _08085D90
	ldr r1, [r0, #0]
	str r7, [r1, #0x10]
	movs r0, #0
	str r0, [r1, #0x18]
	movs r1, #0x13
	bl sub_0801A664
	movs r0, #0x10
	bl sub_0805865C
	b _08085F44
	.2byte 0x0000
_08085D8C: .4byte gUnk_084ECC2C
_08085D90: .4byte gUnk_03006478
_08085D94:
	ldr r0, _08085DB0
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08085DB4
	ldr r0, [r2, #0x10]
	subs r0, #1
	str r0, [r2, #0x10]
	cmp r0, #0
	bge _08085E20
	str r4, [r2, #0x10]
	b _08085E20
	.2byte 0x0000
_08085DB0: .4byte gUnk_03001308
_08085DB4:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08085DD8
	ldr r0, [r2, #0x10]
	adds r0, #1
	str r0, [r2, #0x10]
	ldr r1, _08085DD4
	add r1, sp
	ldr r1, [r1, #0]
	cmp r0, r1
	blo _08085E20
	adds r0, r1, #0
	subs r0, #1
	str r0, [r2, #0x10]
	b _08085E20
_08085DD4: .4byte 0x000005E4
_08085DD8:
	ldr r4, _08085E00
	adds r1, r4, #0
	ands r1, r3
	cmp r1, #0
	beq _08085E08
	ldr r0, [r2, #0x10]
	adds r0, #0xa
	str r0, [r2, #0x10]
	ldr r5, _08085E04
	add r5, sp
	ldr r5, [r5, #0]
	cmp r0, r5
	blo _08085DF8
	adds r0, r5, #0
	subs r0, #1
	str r0, [r2, #0x10]
_08085DF8:
	adds r0, r4, #0
	bl sub_0805865C
	b _08085F44
_08085E00: .4byte 0x00000177
_08085E04: .4byte 0x000005E4
_08085E08:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r3
	cmp r0, #0
	bne _08085E14
	b _08085F44
_08085E14:
	ldr r0, [r2, #0x10]
	subs r0, #0xa
	str r0, [r2, #0x10]
	cmp r0, #0
	bge _08085E20
	str r1, [r2, #0x10]
_08085E20:
	ldr r0, _08085E28
	bl sub_0805865C
	b _08085F44
_08085E28: .4byte 0x00000177
_08085E2C:
	ldr r0, _08085EC4
	ldrh r1, [r0, #0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08085ED8
	ldr r0, [r2, #0x14]
	cmp r0, #0xd
	beq _08085E42
	b _08085F44
_08085E42:
	ldr r7, _08085EC8
	ldr r1, [r7, #0]
	ldr r4, _08085ECC
	ldr r0, [r2, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r5, #0xc1
	lsls r5, r5, #4
	adds r1, r1, r5
	ldrh r0, [r0, #0]
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _08085F44
	movs r0, #0x83
	lsls r0, r0, #3
	add r0, sp
	movs r1, #8
	strh r1, [r0, #0]
	ldr r1, [r2, #0x10]
	lsls r1, r1, #2
	adds r1, r1, r4
	ldrh r1, [r1, #0]
	strh r1, [r0, #2]
	movs r1, #0xc0
	lsls r1, r1, #3
	add r1, sp
	str r3, [r1, #0]
	bl sub_0805AB20
	movs r2, #0xc0
	lsls r2, r2, #3
	add r2, sp
	ldr r3, [r2, #0]
	cmp r0, #0
	beq _08085ED0
	ldr r1, [r7, #0]
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r4
	adds r1, r1, r5
	ldrh r0, [r0, #0]
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
	ldr r2, [r6, #0]
	ldr r1, [r2, #0x10]
	adds r0, r1, #1
	str r0, [r2, #0xc]
	ldr r0, [r7, #0]
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r0, r0, r5
	ldrh r1, [r1, #0]
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _08085EBC
	str r3, [r2, #0x18]
_08085EBC:
	movs r0, #0x26
	bl sub_0805865C
	b _08085F44
_08085EC4: .4byte gUnk_03001324
_08085EC8: .4byte gUnk_030034E0
_08085ECC: .4byte gUnk_084ECC2C
_08085ED0:
	movs r0, #0x61
	bl sub_0805865C
	b _08085F44
_08085ED8:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08085EEA
	ldr r0, [r2, #0x10]
	adds r0, #1
	str r0, [r2, #0xc]
	str r3, [r2, #0x18]
	b _08085F24
_08085EEA:
	ldr r0, _08085F00
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08085F04
	ldr r0, [r2, #0x14]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	b _08085F22
_08085F00: .4byte gUnk_03001308
_08085F04:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08085F12
	ldr r0, [r2, #0x14]
	orrs r0, r3
	b _08085F22
_08085F12:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08085F2C
	ldr r0, [r2, #0x14]
	cmp r0, #1
	bls _08085F44
	subs r0, #2
_08085F22:
	str r0, [r2, #0x14]
_08085F24:
	movs r0, #0xe
	bl sub_0805865C
	b _08085F44
_08085F2C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08085F44
	ldr r0, [r2, #0x14]
	cmp r0, #0xb
	bhi _08085F44
	adds r0, #2
	str r0, [r2, #0x14]
	movs r0, #0xe
	bl sub_0805865C
_08085F44:
	ldr r0, _08085F60
	ldr r3, [r0, #0]
	ldr r0, [r3, #0x18]
	cmp r0, #1
	bne _08085F50
	b _080860A4
_08085F50:
	cmp r0, #1
	blo _08085F64
	cmp r0, #3
	bne _08085F5A
	b _0808608C
_08085F5A:
	bl _0808673C
	.2byte 0x0000
_08085F60: .4byte gUnk_03006478
_08085F64:
	ldr r1, _08085FC4
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	movs r7, #0
	ldr r4, _08085FC8
	ldr r0, [r3, #0x10]
	lsls r0, r0, #2
	adds r1, r4, #2
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	ldr r0, [r3, #4]
	cmp r1, r0
	bne _0808602A
_08085F84:
	ldr r0, _08085FCC
	ldr r1, [r0, #0]
	ldr r0, _08085FD0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r2, [r0, #0]
	movs r3, #0xc1
	lsls r3, r3, #4
	adds r1, r1, r3
	adds r1, r1, r2
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _08085FD8
	movs r0, #0x90
	lsls r0, r0, #0xd
	orrs r2, r0
	adds r0, r2, #0
	bl sub_08007290
	adds r4, r0, #0
	bl sub_0800CE30
	ldr r0, _08085FD4
	ldr r1, [r0, #0]
	lsls r0, r1, #5
	subs r0, r0, r1
	adds r6, r4, r0
	b _08085FDA
	.2byte 0x0000
_08085FC4: .4byte gUnk_03001250
_08085FC8: .4byte gUnk_084ECC2C
_08085FCC: .4byte gUnk_030034E0
_08085FD0: .4byte gUnk_03006478
_08085FD4: .4byte gUnk_03003470
_08085FD8:
	ldr r6, _0808607C
_08085FDA:
	movs r5, #0
	ldrb r1, [r6, #0]
	adds r4, r7, #1
	lsls r2, r7, #1
	cmp r1, #0
	beq _08085FF8
_08085FE6:
	mov r0, sp
	adds r0, r0, r5
	adds r0, #8
	strb r1, [r0, #0]
	adds r5, #1
	adds r6, #1
	ldrb r1, [r6, #0]
	cmp r1, #0
	bne _08085FE6
_08085FF8:
	mov r1, sp
	adds r1, r1, r5
	adds r1, #8
	movs r0, #0xfd
	strb r0, [r1, #0]
	adds r2, #2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	add r0, sp, #8
	movs r1, #5
	bl sub_0801A3D0
	adds r7, r4, #0
	ldr r4, _08086080
	ldr r0, _08086084
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x10]
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r1, r4, #2
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	ldr r0, [r2, #4]
	cmp r1, r0
	beq _08085F84
_0808602A:
	ldr r4, _08086084
	ldr r2, [r4, #0]
	movs r3, #0
	movs r0, #0x20
	strh r0, [r2, #0x28]
	ldr r0, [r2, #8]
	lsls r0, r0, #4
	adds r0, #0x18
	strh r0, [r2, #0x2a]
	adds r0, r2, #0
	adds r0, #0x2c
	movs r5, #0x24
	ldrsh r1, [r2, r5]
	movs r6, #0x26
	ldrsh r2, [r2, r6]
	str r3, [sp, #0]
	movs r3, #0x15
	bl sub_08065230
	ldr r1, [r4, #0]
	movs r0, #0x64
	str r0, [r1, #0xc]
	ldr r0, [r1, #8]
	adds r0, #1
	ldr r2, [r1, #0x10]
	adds r2, r2, r0
	movs r0, #0xe
	movs r1, #0x13
	movs r3, #0
	bl sub_0805FB7C
	movs r0, #0x12
	movs r1, #0x13
	ldr r3, _08086088
	add r3, sp
	ldr r2, [r3, #0]
	movs r3, #0
	bl sub_0805FB7C
	b _0808673C
	.2byte 0x0000
_0808607C: .4byte gUnk_084ECE8E
_08086080: .4byte gUnk_084ECC2C
_08086084: .4byte gUnk_03006478
_08086088: .4byte 0x000005E4
_0808608C:
	ldr r2, [r3, #0x14]
	movs r1, #1
	ands r1, r2
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x74
	strh r0, [r3, #0x28]
	lsrs r2, r2, #1
	lsls r2, r2, #3
	adds r2, #0x24
	strh r2, [r3, #0x2a]
_080860A4:
	ldr r0, _08086100
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	ldr r0, _08086104
	ldr r0, [r0, #0]
	ldr r1, [r0, #0xc]
	ldr r3, [r0, #0x10]
	cmp r1, r3
	bne _080860C2
	b _08086388
_080860C2:
	ldr r0, _08086108
	ldr r1, [r0, #0]
	ldr r2, _0808610C
	lsls r0, r3, #2
	adds r0, r0, r2
	ldrh r2, [r0, #0]
	movs r4, #0xc1
	lsls r4, r4, #4
	adds r1, r1, r4
	adds r1, r1, r2
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _08086138
	movs r0, #0x90
	lsls r0, r0, #0xd
	orrs r2, r0
	adds r0, r2, #0
	bl sub_08007290
	adds r4, r0, #0
	bl sub_0800CE30
	cmp r0, #0
	beq _08086114
	adds r0, r4, #0
	adds r0, #0x9e
	ldrh r1, [r0, #0]
	movs r0, #0xd8
	muls r1, r0, r1
	ldr r0, _08086110
	b _08086120
_08086100: .4byte gUnk_03001250
_08086104: .4byte gUnk_03006478
_08086108: .4byte gUnk_030034E0
_0808610C: .4byte gUnk_084ECC2C
_08086110: .4byte gUnk_0848529C
_08086114:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrh r1, [r0, #0]
	movs r0, #0xd8
	muls r1, r0, r1
	ldr r0, _08086130
_08086120:
	adds r1, r1, r0
	mov r9, r1
	ldr r0, _08086134
	ldr r1, [r0, #0]
	lsls r0, r1, #5
	subs r0, r0, r1
	adds r6, r4, r0
	b _0808613E
_08086130: .4byte gUnk_0847AC64
_08086134: .4byte gUnk_03003470
_08086138:
	ldr r5, _080861F0
	mov r9, r5
	ldr r6, _080861F4
_0808613E:
	add r0, sp, #0x2d4
	mov r1, r9
	movs r2, #0xd8
	bl memcpy
	movs r5, #0
	ldrb r1, [r6, #0]
	add r0, sp, #0x28
	mov r8, r0
	movs r2, #0xa7
	lsls r2, r2, #2
	add r2, sp
	mov sl, r2
	ldr r3, _080861F8
	add r3, sp
	ldr r4, _080861FC
	add r4, sp
	str r3, [r4, #0]
	mov r0, r9
	adds r0, #0xd4
	ldr r2, _08086200
	add r2, sp
	str r0, [r2, #0]
	mov r3, r9
	adds r3, #0xd6
	movs r4, #0xbf
	lsls r4, r4, #3
	add r4, sp
	str r3, [r4, #0]
	cmp r1, #0
	beq _0808618E
_0808617C:
	mov r0, sp
	adds r0, r0, r5
	adds r0, #8
	strb r1, [r0, #0]
	adds r5, #1
	adds r6, #1
	ldrb r1, [r6, #0]
	cmp r1, #0
	bne _0808617C
_0808618E:
	mov r1, sp
	adds r1, r1, r5
	adds r1, #8
	movs r0, #0xfd
	strb r0, [r1, #0]
	ldr r1, _08086204
	ldr r0, _08086208
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r4, r0, #0
	adds r0, #0xa2
	ldrh r0, [r0, #0]
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	ldr r5, _0808620C
	add r5, sp
	str r0, [r5, #0]
	adds r6, r0, #0
	adds r6, #2
	movs r7, #0
	movs r5, #0
	ldrb r0, [r0, #2]
	cmp r0, #0xfd
	beq _08086220
	mov r2, r8
	movs r3, #0
	movs r4, #0xfd
_080861DA:
	ldrb r1, [r6, #0]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _08086210
	adds r0, r5, r3
	adds r0, r2, r0
	strb r4, [r0, #0]
	adds r3, #0x20
	adds r7, #1
	movs r5, #0
	b _08086218
_080861F0: .4byte gUnk_084ECEB0
_080861F4: .4byte gUnk_084ECE8E
_080861F8: .4byte 0x0000029E
_080861FC: .4byte 0x000005FC
_08086200: .4byte 0x000005F4
_08086204: .4byte gUnk_084ECC2C
_08086208: .4byte gUnk_03006478
_0808620C: .4byte 0x000005EC
_08086210:
	adds r0, r5, r3
	adds r0, r2, r0
	strb r1, [r0, #0]
	adds r5, #1
_08086218:
	adds r6, #1
	ldrb r0, [r6, #0]
	cmp r0, #0xfd
	bne _080861DA
_08086220:
	lsls r1, r7, #5
	adds r1, r5, r1
	add r1, r8
	movs r6, #0
	movs r0, #0xfd
	strb r0, [r1, #0]
	movs r2, #0xbe
	lsls r2, r2, #3
	add r2, sp
	ldr r0, [r2, #0]
	bl sub_0801C8F0
	mov r3, sl
	movs r4, #0
	ldrsh r2, [r3, r4]
	movs r0, #0x14
	movs r1, #4
	movs r3, #0
	bl sub_0805FB7C
	ldr r5, _080863CC
	add r5, sp
	ldr r5, [r5, #0]
	movs r0, #0
	ldrsh r2, [r5, r0]
	movs r0, #0x14
	movs r1, #5
	movs r3, #0
	bl sub_0805FB7C
	mov r0, r9
	movs r1, #8
	ldrsh r2, [r0, r1]
	movs r0, #0x14
	movs r1, #6
	movs r3, #0
	bl sub_0805FB7C
	mov r3, r9
	movs r4, #0
	ldrsh r2, [r3, r4]
	movs r0, #0x14
	movs r1, #7
	movs r3, #0
	bl sub_0805FB7C
	mov r5, r9
	movs r0, #2
	ldrsh r2, [r5, r0]
	movs r0, #0x14
	movs r1, #8
	movs r3, #0
	bl sub_0805FB7C
	movs r1, #4
	ldrsh r2, [r5, r1]
	movs r0, #0x14
	movs r1, #9
	movs r3, #0
	bl sub_0805FB7C
	movs r3, #6
	ldrsh r2, [r5, r3]
	movs r0, #0x14
	movs r1, #0xa
	movs r3, #0
	bl sub_0805FB7C
	movs r4, #0x14
	ldrsh r2, [r5, r4]
	movs r0, #0x1b
	movs r1, #4
	movs r3, #0
	bl sub_0805FB7C
	movs r0, #0x16
	ldrsh r2, [r5, r0]
	movs r0, #0x1b
	movs r1, #5
	movs r3, #0
	bl sub_0805FB7C
	movs r1, #0x18
	ldrsh r2, [r5, r1]
	movs r0, #0x1b
	movs r1, #6
	movs r3, #0
	bl sub_0805FB7C
	movs r3, #0x1a
	ldrsh r2, [r5, r3]
	movs r0, #0x1b
	movs r1, #7
	movs r3, #0
	bl sub_0805FB7C
	movs r4, #0x1c
	ldrsh r2, [r5, r4]
	movs r0, #0x1b
	movs r1, #8
	movs r3, #0
	bl sub_0805FB7C
	movs r0, #0x1e
	ldrsh r2, [r5, r0]
	movs r0, #0x1b
	movs r1, #9
	movs r3, #0
	bl sub_0805FB7C
	ldr r5, _080863D0
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x10]
	str r0, [r1, #0xc]
	add r4, sp, #0x3b0
	ldr r2, _080863D4
	ldr r1, _080863D8
	add r1, sp
	ldr r1, [r1, #0]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	str r6, [sp, #0]
	adds r0, r4, #0
	movs r2, #4
	bl sub_08065158
	movs r0, #4
	strb r0, [r4, #0x1c]
	movs r2, #0xbf
	lsls r2, r2, #3
	add r2, sp
	ldr r2, [r2, #0]
	ldrh r0, [r2, #0]
	lsls r0, r0, #5
	ldr r1, [r4, #0xc]
	adds r1, r1, r0
	movs r0, #0x14
	movs r2, #1
	bl sub_08000AF0
	ldr r0, [r5, #0]
	ldr r2, [r0, #0x10]
	adds r2, #1
	movs r0, #0xe
	movs r1, #0x13
	movs r3, #0
	bl sub_0805FB7C
	movs r0, #0x12
	movs r1, #0x13
	ldr r3, _080863DC
	add r3, sp
	ldr r2, [r3, #0]
	movs r3, #0
	bl sub_0805FB7C
	ldr r0, _080863E0
	ldr r1, [r0, #0]
	ldr r2, _080863E4
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r4, #0xc1
	lsls r4, r4, #4
	adds r1, r1, r4
	ldrh r0, [r0, #0]
	adds r1, r1, r0
	ldrb r2, [r1, #0]
	movs r0, #0x1b
	movs r1, #0xb
	movs r3, #0
	bl sub_0805FB7C
_08086388:
	mov r5, r9
	movs r6, #6
	ldrsh r0, [r5, r6]
	lsls r2, r0, #1
	adds r2, r2, r0
	movs r0, #0x11
	movs r1, #0xc
	movs r3, #0
	bl sub_0805FB7C
	movs r0, #4
	ldrsh r2, [r5, r0]
	lsls r2, r2, #1
	movs r0, #0x11
	movs r1, #0xd
	movs r3, #0
	bl sub_0805FB7C
	ldr r2, [r5, #0x10]
	movs r0, #9
	movs r1, #0xd
	movs r3, #0
	bl sub_0805FB7C
	mov r1, r9
	adds r1, #0x22
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _0808643E
	cmp r0, #1
	beq _080863E8
	cmp r0, #2
	beq _08086400
	b _0808640C
_080863CC: .4byte 0x000005FC
_080863D0: .4byte gUnk_03006478
_080863D4: .4byte gUnk_08479140
_080863D8: .4byte 0x000005F4
_080863DC: .4byte 0x000005E4
_080863E0: .4byte gUnk_030034E0
_080863E4: .4byte gUnk_084ECC2C
_080863E8:
	ldr r0, _080863F8
	bl sub_08007290
	ldr r1, _080863FC
	add r1, sp
	str r0, [r1, #0]
	b _0808640C
	.2byte 0x0000
_080863F8: .4byte 0x00140541
_080863FC: .4byte 0x000005EC
_08086400:
	ldr r0, _08086498
	bl sub_08007290
	ldr r2, _0808649C
	add r2, sp
	str r0, [r2, #0]
_0808640C:
	ldr r3, _0808649C
	add r3, sp
	ldr r6, [r3, #0]
	adds r6, #2
	ldr r0, _080864A0
	ldr r1, [r0, #0]
	ldr r2, _080864A4
	ldr r0, _080864A8
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r4, #0xc1
	lsls r4, r4, #4
	adds r1, r1, r4
	ldrh r0, [r0, #0]
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _0808643E
	adds r0, r6, #0
	movs r1, #0x12
	movs r2, #0xc
	bl sub_0801A3D0
_0808643E:
	add r0, sp, #8
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r0, sp, #8
	movs r2, #1
	bl sub_0801A3D0
	ldr r4, _080864A8
	ldr r0, [r4, #0]
	adds r0, #0x2c
	movs r5, #0
	str r5, [sp, #0]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #0xbc
	movs r2, #0x55
	movs r3, #0x25
	bl sub_080659BC
	ldr r3, [r4, #0]
	ldr r0, [r3, #0x18]
	cmp r0, #3
	beq _08086478
	b _08086580
_08086478:
	ldr r0, [r3, #0x14]
	cmp r0, #0xd
	bne _080864AC
	adds r0, r3, #0
	adds r0, #0x2c
	movs r6, #0x24
	ldrsh r1, [r3, r6]
	movs r4, #0x26
	ldrsh r2, [r3, r4]
	adds r2, #8
	str r5, [sp, #0]
	movs r3, #0xb
	bl sub_08065230
	b _080864C0
	.2byte 0x0000
_08086498: .4byte 0x00140540
_0808649C: .4byte 0x000005EC
_080864A0: .4byte gUnk_030034E0
_080864A4: .4byte gUnk_084ECC2C
_080864A8: .4byte gUnk_03006478
_080864AC:
	adds r0, r3, #0
	adds r0, #0x2c
	movs r6, #0x24
	ldrsh r1, [r3, r6]
	movs r4, #0x26
	ldrsh r2, [r3, r4]
	str r5, [sp, #0]
	movs r3, #0xb
	bl sub_08065230
_080864C0:
	ldr r4, _080864FC
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x14]
	cmp r0, #0xc
	bhi _08086508
	movs r0, #0xf
	movs r1, #4
	bl sub_0801A664
	ldr r1, _08086500
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	ldr r5, _08086504
	add r5, sp
	str r0, [r5, #0]
	adds r0, #2
	movs r1, #1
	movs r2, #0xf
	bl sub_0801A3D0
	b _080865C8
	.2byte 0x0000
_080864FC: .4byte gUnk_03006478
_08086500: .4byte gUnk_084ECE74
_08086504: .4byte 0x000005EC
_08086508:
	movs r0, #0xf
	movs r1, #4
	bl sub_0801A664
	ldr r0, _0808654C
	bl sub_08007290
	ldr r6, _08086550
	add r6, sp
	str r0, [r6, #0]
	adds r6, r0, #0
	adds r6, #2
	movs r7, #0
	movs r5, #0
	ldrb r0, [r0, #2]
	add r2, sp, #0x28
	mov r8, r2
	cmp r0, #0xfd
	beq _08086564
	mov r3, r8
	movs r2, #0
	movs r4, #0xfd
_08086534:
	ldrb r1, [r6, #0]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _08086554
	adds r0, r5, r2
	adds r0, r3, r0
	strb r4, [r0, #0]
	adds r2, #0x20
	adds r7, #1
	movs r5, #0
	b _0808655C
	.2byte 0x0000
_0808654C: .4byte 0x00140542
_08086550: .4byte 0x000005EC
_08086554:
	adds r0, r5, r2
	adds r0, r3, r0
	strb r1, [r0, #0]
	adds r5, #1
_0808655C:
	adds r6, #1
	ldrb r0, [r6, #0]
	cmp r0, #0xfd
	bne _08086534
_08086564:
	lsls r0, r7, #5
	adds r0, r5, r0
	add r0, r8
	movs r1, #0xfd
	strb r1, [r0, #0]
	mov r0, r8
	movs r1, #2
	movs r2, #0xf
	bl sub_0801A3D0
	mov r0, r8
	adds r0, #0x20
	movs r1, #2
	b _080865AE
_08086580:
	ldr r0, _080865B8
	ldr r1, [r0, #0]
	ldr r2, _080865BC
	ldr r0, [r3, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r3, #0xc1
	lsls r3, r3, #4
	adds r1, r1, r3
	ldrh r0, [r0, #0]
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _080865C0
	add r4, sp, #0x28
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xf
	bl sub_0801A3D0
	adds r4, #0x20
	adds r0, r4, #0
	movs r1, #1
_080865AE:
	movs r2, #0x11
	bl sub_0801A3D0
	b _080865C8
	.2byte 0x0000
_080865B8: .4byte gUnk_030034E0
_080865BC: .4byte gUnk_084ECC2C
_080865C0:
	movs r0, #0xf
	movs r1, #4
	bl sub_0801A664
_080865C8:
	ldr r0, _080865FC
	ldr r1, [r0, #0]
	ldr r2, _08086600
	ldr r0, _08086604
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r2, [r0, #0]
	movs r4, #0xc1
	lsls r4, r4, #4
	adds r1, r1, r4
	adds r1, r1, r2
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne _080865EA
	b _0808673C
_080865EA:
	adds r0, r2, #0
	subs r0, #0x66
	cmp r0, #0x2a
	bhi _080866E8
	lsls r0, r0, #2
	ldr r1, _08086608
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080865FC: .4byte gUnk_030034E0
_08086600: .4byte gUnk_084ECC2C
_08086604: .4byte gUnk_03006478
_08086608: .4byte _0808660C
_0808660C:
	.4byte _080866C8
_08086610: .4byte _080866C8
_08086614: .4byte _080866C8
_08086618: .4byte _080866E8
_0808661C: .4byte _080866E8
_08086620: .4byte _080866E8
_08086624: .4byte _080866E8
_08086628: .4byte _080866E8
_0808662C: .4byte _080866E8
_08086630: .4byte _080866E8
_08086634: .4byte _080866E8
_08086638: .4byte _080866E8
_0808663C: .4byte _080866E8
_08086640: .4byte _080866E8
_08086644: .4byte _080866E8
_08086648: .4byte _080866B8
_0808664C: .4byte _080866B8
_08086650: .4byte _080866B8
_08086654: .4byte _080866E8
_08086658: .4byte _080866E8
_0808665C: .4byte _080866E8
_08086660: .4byte _080866E8
_08086664: .4byte _080866E8
_08086668: .4byte _080866E8
_0808666C: .4byte _080866E8
_08086670: .4byte _080866E8
_08086674: .4byte _080866E8
_08086678: .4byte _080866E8
_0808667C: .4byte _080866E8
_08086680: .4byte _080866E8
_08086684: .4byte _08086712
_08086688: .4byte _08086712
_0808668C: .4byte _08086712
_08086690: .4byte _080866E8
_08086694: .4byte _080866E8
_08086698: .4byte _080866E8
_0808669C: .4byte _080866E8
_080866A0: .4byte _080866E8
_080866A4: .4byte _080866E8
_080866A8: .4byte _080866E8
_080866AC: .4byte _080866E8
_080866B0: .4byte _080866E8
_080866B4: .4byte _080866D8
_080866B8:
	add r0, sp, #0x3b0
	movs r1, #0
	str r1, [sp, #0]
	movs r1, #3
	str r1, [sp, #4]
	movs r1, #0x34
	movs r2, #0x48
	b _08086720
_080866C8:
	add r0, sp, #0x3b0
	movs r1, #0
	str r1, [sp, #0]
	movs r1, #3
	str r1, [sp, #4]
	movs r1, #0x34
	movs r2, #0x5c
	b _08086720
_080866D8:
	add r0, sp, #0x3b0
	movs r1, #0
	str r1, [sp, #0]
	movs r1, #3
	str r1, [sp, #4]
	movs r1, #0x34
	movs r2, #0x59
	b _08086720
_080866E8:
	mov r0, r9
	adds r0, #0x45
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #1
	beq _08086712
	cmp r1, #1
	bgt _080866FE
	cmp r1, #0
	beq _08086704
	b _0808673C
_080866FE:
	cmp r1, #2
	beq _08086728
	b _0808673C
_08086704:
	add r0, sp, #0x3b0
	str r1, [sp, #0]
	movs r1, #3
	str r1, [sp, #4]
	movs r1, #0x34
	movs r2, #0x50
	b _08086720
_08086712:
	add r0, sp, #0x3b0
	movs r1, #0
	str r1, [sp, #0]
	movs r1, #3
	str r1, [sp, #4]
	movs r1, #0x34
	movs r2, #0x56
_08086720:
	movs r3, #0
	bl sub_080659BC
	b _0808673C
_08086728:
	add r0, sp, #0x3b0
	movs r1, #0
	str r1, [sp, #0]
	movs r1, #3
	str r1, [sp, #4]
	movs r1, #0x34
	movs r2, #0x5c
	movs r3, #0
	bl sub_080659BC
_0808673C:
	ldr r4, _08086784
	ldr r2, [r4, #0]
	movs r5, #0x28
	ldrsh r0, [r2, r5]
	movs r6, #0x24
	ldrsh r1, [r2, r6]
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldrh r1, [r2, #0x24]
	adds r0, r0, r1
	strh r0, [r2, #0x24]
	movs r3, #0x2a
	ldrsh r0, [r2, r3]
	movs r5, #0x26
	ldrsh r1, [r2, r5]
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldrh r6, [r2, #0x26]
	adds r0, r0, r6
	strh r0, [r2, #0x26]
	bl sub_080003F0
	ldr r0, [r4, #0]
_08086772:
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0808677C
	bl _08085B8C
_0808677C:
	movs r0, #6
	bl sub_0801ABE8
	b _0808678C
_08086784: .4byte gUnk_03006478
_08086788:
	bl sub_080003F0
_0808678C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08086788
	movs r0, #0x1e
	bl sub_08057624
	ldr r0, _080867D4
	bl sub_08007290
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #0xf
	movs r2, #1
	bl sub_08000AF0
	movs r0, #0
	movs r1, #0x14
	bl sub_0801A664
	bl sub_0800CFA4
	ldr r0, _080867D8
	bl sub_08000420
_080867C0:
	ldr r3, _080867DC
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080867D4: .4byte 0x00070003
_080867D8: .4byte 0x11201100
_080867DC: .4byte 0x00000604
	thumb_func_end sub_080855D4
