	thumb_func_start sub_08002694
sub_08002694: @ 0x08002694
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	bl sub_0805F07C
	bl sub_080003F0
	movs r0, #1
	bl sub_08006E64
	mov r0, sp
	adds r0, #0x3c
	str r0, [sp, #0x44]
	mov r1, sp
	adds r1, #0x38
	str r1, [sp, #0x40]
	movs r0, #0x3a
	add r0, sp
	mov sl, r0
_080026C0:
	movs r0, #0x14
	bl sub_080003F4
	ldr r0, _080026E4
	ldrb r1, [r0, #0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080026D6
	bl sub_08000940
_080026D6:
	bl sub_08002228
	cmp r0, #0
	beq _080026EC
	bl sub_080020E0
	b _080026EC
_080026E4: .4byte gUnk_0300129C
_080026E8:
	bl sub_080003F0
_080026EC:
	bl sub_08002228
	cmp r0, #0
	bne _080026E8
	bl sub_08002228
	cmp r0, #0
	bne _08002702
	movs r0, #1
	bl sub_0800208C
_08002702:
	movs r1, #0
	mov r9, r1
	bl sub_080013F8
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	mov r0, r9
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08000A34
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	movs r0, #0x90
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	ldr r1, _080027A0
	ldr r0, [sp, #0x3c]
	ands r0, r1
	ldr r1, _080027A4
	orrs r0, r1
	str r0, [sp, #0x3c]
	movs r0, #0
	ldr r1, [sp, #0x44]
	bl sub_08000AA8
	movs r1, #0xe8
	lsls r1, r1, #5
	add r0, sp, #0x3c
	strh r1, [r0, #0]
	movs r0, #1
	ldr r1, [sp, #0x44]
	bl sub_08000AA8
	ldr r0, _080027A8
	mov r1, r9
	strh r1, [r0, #0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r0, #0x10
	str r0, [sp, #0]
	movs r0, #0x37
	movs r1, #1
	movs r3, #0
	bl sub_0800BCDC
	ldr r0, _080027AC
	ldr r0, [r0, #0]
	cmp r0, #4
	bhi _08002808
	lsls r0, r0, #2
	ldr r1, _080027B0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080027A0: .4byte 0xFFFF0000
_080027A4: .4byte 0x00001C08
_080027A8: .4byte gUnk_03001250
_080027AC: .4byte gUnk_03003470
_080027B0: .4byte _080027B4
_080027B4:
	.4byte _080027C8
_080027B8: .4byte _080027CE
_080027BC: .4byte _080027D8
_080027C0: .4byte _080027E0
_080027C4: .4byte _080027F8
_080027C8:
	movs r1, #0xa0
	lsls r1, r1, #0xb
	b _080027E2
_080027CE:
	ldr r1, _080027D4
	b _080027E2
	.2byte 0x0000
_080027D4: .4byte 0x0005015A
_080027D8:
	ldr r1, _080027DC
	b _080027E2
_080027DC: .4byte 0x00050158
_080027E0:
	ldr r1, _080027F4
_080027E2:
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #4
	movs r2, #0xe
	movs r3, #1
	bl sub_08065158
	b _08002808
	.2byte 0x0000
_080027F4: .4byte 0x00050159
_080027F8:
	ldr r1, _0800284C
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #4
	movs r2, #0xe
	movs r3, #1
	bl sub_08065158
_08002808:
	bl sub_080003F0
	bl sub_080003F0
	ldr r1, _08002850
	movs r0, #0
	str r0, [r1, #0]
	movs r0, #1
	mov r8, r0
	movs r6, #0
	ldr r1, [sp, #0x40]
	strh r6, [r1, #0]
	mov r0, sl
	strh r6, [r0, #0]
	movs r0, #0xc5
	bl sub_08006C70
	movs r4, #0
_0800282C:
	bl sub_080003F0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x13
	bls _0800282C
	bl sub_0801AB24
	cmp r0, #0
	bne _08002868
	movs r0, #6
	bl sub_0801AA34
	b _0800286E
	.2byte 0x0000
_0800284C: .4byte 0x00050157
_08002850: .4byte gUnk_03002838
_08002854:
	ldr r1, _08002864
	movs r0, #3
	str r0, [r1, #0]
	movs r0, #0xf
	bl sub_08006D08
	b _0800293E
	.2byte 0x0000
_08002864: .4byte gUnk_03002838
_08002868:
	movs r0, #6
	bl sub_0801AB50
_0800286E:
	mov r1, r8
	cmp r1, #0
	beq _0800293E
	ldr r5, _08002894
	movs r7, #1
_08002878:
	cmp r6, #0
	beq _080028E4
	ldr r0, _08002898
	ldrh r1, [r0, #0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800289C
	movs r0, #0xe
	bl sub_08006D08
	str r7, [r5, #0]
	b _080028F8
	.2byte 0x0000
_08002894: .4byte gUnk_03002838
_08002898: .4byte gUnk_03001308
_0800289C:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080028B0
	movs r4, #0
	movs r0, #0xe
	bl sub_08006D08
	str r4, [r5, #0]
	b _080028F8
_080028B0:
	ldr r0, _080028DC
	ldrh r1, [r0, #0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080028F8
	ldr r0, _080028E0
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080028D0
	bl sub_08092080
	cmp r0, #0
	bne _08002854
_080028D0:
	movs r0, #0xf
	bl sub_08006D08
	movs r0, #0
	mov r8, r0
	b _080028F8
_080028DC: .4byte gUnk_03001324
_080028E0: .4byte gUnk_0300130C
_080028E4:
	ldr r0, _08002910
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080028F8
	movs r6, #1
	movs r0, #0xf
	bl sub_08006D08
_080028F8:
	cmp r6, #0
	beq _08002914
	ldrh r0, [r5, #0]
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x82
	movs r3, #0
	bl sub_08065230
	b _08002934
	.2byte 0x0000
_08002910: .4byte gUnk_03001324
_08002914:
	str r7, [sp, #0]
	add r0, sp, #4
	movs r1, #4
	ldr r2, [sp, #0x40]
	mov r3, sl
	bl sub_08065370
	ldr r1, [sp, #0x40]
	ldrh r0, [r1, #0]
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x88
	movs r3, #4
	bl sub_08065230
_08002934:
	bl sub_080003F0
	mov r0, r8
	cmp r0, #0
	bne _08002878
_0800293E:
	movs r0, #2
	bl sub_08006C30
	cmp r6, #0
	beq _08002952
	movs r0, #0
	ldr r1, [sp, #0x40]
	strh r0, [r1, #0]
	mov r1, sl
	strh r0, [r1, #0]
_08002952:
	movs r0, #3
	bl sub_0801ABE8
	ldr r5, _08002960
	ldr r4, [sp, #0x40]
	b _080029E2
	.2byte 0x0000
_08002960: .4byte gUnk_03002838
_08002964:
	cmp r6, #0
	beq _080029AE
	mov r0, r9
	cmp r0, #0
	bne _0800299C
	ldr r1, [r5, #0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #4
	adds r2, r4, #0
	mov r3, sl
	bl sub_08065370
	ldr r3, [r5, #0]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldrh r0, [r4, #0]
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x64
	bl sub_08065230
	b _080029CE
_0800299C:
	ldrh r0, [r5, #0]
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #0
	bl sub_08065230
	b _080029CE
_080029AE:
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #4
	adds r2, r4, #0
	mov r3, sl
	bl sub_08065370
	ldrh r0, [r4, #0]
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x70
	movs r3, #4
	bl sub_08065230
_080029CE:
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #0x78
	movs r2, #0x5a
	movs r3, #3
	bl sub_08065230
	bl sub_080003F0
_080029E2:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08002964
	add r0, sp, #4
	bl sub_08065204
	bl sub_0805F07C
	ldr r0, _08002A0C
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _08002A36
	cmp r0, #1
	blo _08002A10
	cmp r0, #2
	beq _08002A46
	cmp r0, #3
	beq _08002A4C
	b _080026C0
	.2byte 0x0000
_08002A0C: .4byte gUnk_03002838
_08002A10:
	bl sub_08002228
	cmp r0, #0
	beq _08002A22
	bl sub_080020E0
	b _08002A22
_08002A1E:
	bl sub_080003F0
_08002A22:
	bl sub_08002228
	cmp r0, #0
	bne _08002A1E
	movs r0, #0
	bl sub_0800208C
_08002A30:
	bl sub_080065B0
	b _080026C0
_08002A36:
	bl sub_08002228
	cmp r0, #0
	bne _08002A30
	movs r0, #1
	bl sub_0800208C
	b _08002A30
_08002A46:
	bl sub_08088914
	b _080026C0
_08002A4C:
	bl sub_080920E4
	b _080026C0
	thumb_func_end sub_08002694
