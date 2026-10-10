	thumb_func_start sub_08061E44
sub_08061E44: @ 0x08061E44
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	bl sub_0800CDD0
	bl sub_0800D11C
	cmp r0, #0
	bne _08061E5E
	bl sub_0801DF8C
	cmp r0, #0
	beq _08061E64
_08061E5E:
	bl sub_0800CDE4
	b _080624CC
_08061E64:
	cmp r5, #0
	beq _08061E6A
	b _08062214
_08061E6A:
	bl sub_0800CB9C
	cmp r0, #0
	beq _08061E80
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08061E7C
	b _08061E88
_08061E7C: .4byte 0x001403D7
_08061E80:
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08061ECC
_08061E88:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	adds r4, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0805EF84
_08061EA0:
	bl sub_080003F0
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08061EA0
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _08061EBA
	b _080624C8
_08061EBA:
	bl sub_0800CB9C
	cmp r0, #0
	beq _08061EE0
	bl sub_08002204
	cmp r0, #0
	beq _08061EE0
	b _08061ED4
_08061ECC: .4byte 0x001403D6
_08061ED0:
	bl sub_080003F0
_08061ED4:
	adds r0, r5, #0
	bl sub_080681F4
	cmp r0, #0
	beq _08061ED0
	b _080624CC
_08061EE0:
	bl sub_08006DAC
	movs r5, #0
_08061EE6:
	bl sub_080003F0
	adds r5, #1
	cmp r5, #9
	bls _08061EE6
	bl sub_08006C14
	ldr r6, _08061F54
	ldr r0, [r6, #0]
	ldr r7, _08061F58
	ldr r1, [r7, #0]
	adds r1, #0x70
	ldr r2, _08061F5C
	bl sub_080B96A4
	bl sub_0800CCCC
	cmp r0, #0
	bne _08061F0E
	b _08062084
_08061F0E:
	ldr r5, _08061F60
	bl sub_080020F4
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x2e]
	cmp r0, #0
	bne _08061F68
	ldr r1, [r6, #0]
	movs r0, #2
	str r0, [r1, #0]
	movs r5, #0
	mov ip, r6
	adds r4, #0x90
	ldr r3, _08061F64
_08061F30:
	mov r1, ip
	ldr r0, [r1, #0]
	lsls r1, r5, #5
	adds r0, r0, r1
	ldr r2, [r3, #0]
	adds r0, r0, r4
	adds r1, r1, r2
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldm r1!, {r2, r6}
	stm r0!, {r2, r6}
	adds r5, #1
	cmp r5, #0xf
	bls _08061F30
	b _0806217C
	.2byte 0x0000
_08061F54: .4byte gUnk_03004210
_08061F58: .4byte gUnk_03005CF4
_08061F5C: .4byte 0x0000051C
_08061F60: .4byte gUnk_03003CE0
_08061F64: .4byte gUnk_03005D58
_08061F68:
	ldr r1, [r6, #0]
	movs r0, #3
	str r0, [r1, #0]
	ldr r3, [r7, #0]
	ldrh r2, [r3, #4]
	adds r0, r1, #0
	adds r0, #0xd8
	strh r2, [r0, #0]
	ldr r0, [r3, #0x38]
	str r0, [r1, #0x28]
	bl sub_080020F4
	ldr r1, [r6, #0]
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x2e]
	strh r0, [r1, #0x1c]
	bl sub_080020F4
	ldr r1, [r6, #0]
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x2c]
	strh r0, [r1, #0x1e]
	bl sub_080020F4
	ldr r2, [r6, #0]
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xa4
	ldr r1, [r0, #4]
	ldr r0, [r0, #0]
	str r0, [r2, #0x30]
	str r1, [r2, #0x34]
	bl sub_080020F4
	ldr r1, [r6, #0]
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xc4
	ldrh r0, [r0, #0]
	strh r0, [r1, #0x20]
	bl sub_080020F4
	ldr r1, [r6, #0]
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xc2
	ldrh r0, [r0, #0]
	strh r0, [r1, #0x22]
	bl sub_080020F4
	ldr r2, [r6, #0]
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xc6
	ldrh r0, [r0, #0]
	strh r0, [r2, #0x24]
	ldr r0, _0806206C
	ldr r0, [r0, #0]
	ldr r1, _08062070
	ands r0, r1
	str r0, [r2, #0x2c]
	movs r5, #0
	mov ip, r6
	movs r4, #0xee
	lsls r4, r4, #1
	ldr r3, _08062074
_08061FF0:
	mov r7, ip
	ldr r0, [r7, #0]
	lsls r1, r5, #5
	adds r0, r0, r1
	ldr r2, [r3, #0]
	adds r0, r0, r4
	adds r1, r1, r2
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldm r1!, {r2, r6}
	stm r0!, {r2, r6}
	adds r5, #1
	cmp r5, #0xf
	bls _08061FF0
	movs r5, #0
	ldr r4, _08062078
	ldr r3, _0806207C
_08062016:
	ldr r1, [r4, #0]
	lsls r2, r5, #1
	adds r1, #0xdc
	adds r1, r1, r2
	ldr r0, [r3, #0]
	adds r0, #0x22
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	adds r5, #1
	cmp r5, #9
	bls _08062016
	movs r5, #0
	ldr r6, _08062080
	movs r4, #0
_08062034:
	bl sub_080020F4
	ldr r1, _08062078
	ldr r1, [r1, #0]
	adds r1, r1, r4
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r0, r0, r6
	ldr r0, [r0, #0]
	movs r7, #0xf7
	lsls r7, r7, #2
	adds r1, r1, r7
	adds r0, r4, r0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	adds r4, #0x28
	adds r5, #1
	cmp r5, #7
	bls _08062034
	b _0806217C
	.2byte 0x0000
_0806206C: .4byte gUnk_03003478
_08062070: .4byte 0xFFFFFEFF
_08062074: .4byte gUnk_03005D58
_08062078: .4byte gUnk_03004210
_0806207C: .4byte gUnk_03005CF4
_08062080: .4byte gUnk_03003D14
_08062084:
	ldr r2, [r6, #0]
	ldr r3, [r7, #0]
	ldrh r1, [r3, #4]
	adds r0, r2, #0
	adds r0, #0xd8
	strh r1, [r0, #0]
	ldr r0, [r3, #0x38]
	str r0, [r2, #0x28]
	movs r0, #4
	str r0, [r2, #0]
	ldr r0, _080621B4
	adds r1, r0, #0
	adds r1, #0x8c
	ldrh r1, [r1, #0]
	strh r1, [r2, #0x1c]
	adds r0, #0x90
	ldrh r0, [r0, #0]
	strh r0, [r2, #0x1e]
	bl sub_080020F4
	ldr r1, [r6, #0]
	ldr r5, _080621B8
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xc4
	ldrh r0, [r0, #0]
	strh r0, [r1, #0x20]
	bl sub_080020F4
	ldr r1, [r6, #0]
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xc2
	ldrh r0, [r0, #0]
	strh r0, [r1, #0x22]
	bl sub_080020F4
	ldr r1, [r6, #0]
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xc6
	ldrh r0, [r0, #0]
	strh r0, [r1, #0x24]
	bl sub_080020F4
	ldr r2, [r6, #0]
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0x8c
	ldr r1, [r0, #4]
	ldr r0, [r0, #0]
	str r0, [r2, #0x30]
	str r1, [r2, #0x34]
	ldr r0, _080621BC
	ldr r0, [r0, #0]
	ldr r1, _080621C0
	ands r0, r1
	str r0, [r2, #0x2c]
	movs r5, #0
	mov ip, r6
	adds r4, #0x90
	ldr r3, _080621C4
_08062104:
	mov r1, ip
	ldr r0, [r1, #0]
	lsls r1, r5, #5
	adds r0, r0, r1
	ldr r2, [r3, #0]
	adds r0, r0, r4
	adds r1, r1, r2
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldm r1!, {r2, r6}
	stm r0!, {r2, r6}
	adds r5, #1
	cmp r5, #0xf
	bls _08062104
	movs r5, #0
	ldr r4, _080621C8
	ldr r3, _080621CC
_0806212A:
	ldr r1, [r4, #0]
	lsls r2, r5, #1
	adds r1, #0xdc
	adds r1, r1, r2
	ldr r0, [r3, #0]
	adds r0, #0x22
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	adds r5, #1
	cmp r5, #9
	bls _0806212A
	movs r5, #0
	ldr r6, _080621D0
	movs r4, #0
_08062148:
	bl sub_080020F4
	ldr r1, _080621C8
	ldr r1, [r1, #0]
	adds r1, r1, r4
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r0, r0, r6
	ldr r0, [r0, #0]
	movs r7, #0xf7
	lsls r7, r7, #2
	adds r1, r1, r7
	adds r0, r4, r0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	adds r4, #0x28
	adds r5, #1
	cmp r5, #7
	bls _08062148
_0806217C:
	bl sub_0807A124
	cmp r0, #0
	bne _080621E6
	bl sub_08006BF8
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _080621D4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	adds r4, r0, #0
_0806219E:
	bl sub_080003F0
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0806219E
	movs r0, #0xa
	bl sub_0801ABE8
	b _080621DC
_080621B4: .4byte gUnk_03003170
_080621B8: .4byte gUnk_03003CE0
_080621BC: .4byte gUnk_03003478
_080621C0: .4byte 0xFFFFFEFF
_080621C4: .4byte gUnk_03005D58
_080621C8: .4byte gUnk_03004210
_080621CC: .4byte gUnk_03005CF4
_080621D0: .4byte gUnk_03003D14
_080621D4: .4byte 0x001403D9
_080621D8:
	bl sub_080003F0
_080621DC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080621D8
	b _08062494
_080621E6:
	bl sub_08006BF8
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _08062210
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	adds r4, r0, #0
_08062200:
	bl sub_080003F0
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08062200
	b _080624C8
_08062210: .4byte 0x001403DA
_08062214:
	cmp r5, #1
	beq _0806221A
	b _0806231C
_0806221A:
	b _08062220
_0806221C:
	bl sub_080003F0
_08062220:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0806221C
	bl sub_0801AC78
	cmp r0, #0
	beq _08062244
	movs r0, #6
	bl sub_0801ABE8
	b _0806223C
_08062238:
	bl sub_080003F0
_0806223C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08062238
_08062244:
	bl sub_0800CB9C
	cmp r0, #0
	beq _08062268
	bl sub_08002204
	cmp r0, #0
	bne _08062256
	b _080624CC
_08062256:
	b _0806225C
_08062258:
	bl sub_080003F0
_0806225C:
	adds r0, r5, #0
	bl sub_080681F4
	cmp r0, #0
	beq _08062258
	b _080624CC
_08062268:
	bl sub_08006DAC
	movs r5, #0
_0806226E:
	bl sub_080003F0
	adds r5, #1
	cmp r5, #9
	bls _0806226E
	bl sub_08006C14
	ldr r4, _080622D0
	ldr r0, [r4, #0]
	ldr r1, _080622D4
	ldr r1, [r1, #0]
	adds r1, #0x70
	ldr r2, _080622D8
	bl sub_080B96A4
	ldr r1, [r4, #0]
	movs r0, #2
	str r0, [r1, #0]
	bl sub_0807A124
	cmp r0, #0
	bne _080622EE
	bl sub_08006BF8
	movs r0, #0xa
	bl sub_0801AB50
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _080622DC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	adds r4, r0, #0
_080622BA:
	bl sub_080003F0
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080622BA
	movs r0, #0xa
	bl sub_0801ABE8
	b _080622E4
_080622D0: .4byte gUnk_03004210
_080622D4: .4byte gUnk_03005CF4
_080622D8: .4byte 0x0000051C
_080622DC: .4byte 0x001403D9
_080622E0:
	bl sub_080003F0
_080622E4:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080622E0
	b _080624C8
_080622EE:
	bl sub_08006BF8
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _08062318
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	adds r4, r0, #0
_08062308:
	bl sub_080003F0
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08062308
	b _080624C8
_08062318: .4byte 0x001403DA
_0806231C:
	bl sub_08002204
	cmp r0, #0
	beq _080623E2
	bl sub_0800CE30
	cmp r0, #0
	bne _08062390
	ldr r3, _08062380
	ldr r2, [r3, #0]
	ldr r4, _08062384
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x74]
	str r0, [r2, #4]
	ldr r0, [r1, #0x78]
	str r0, [r2, #8]
	movs r5, #0
	movs r6, #0xa0
	lsls r6, r6, #1
	movs r2, #0xd8
	lsls r2, r2, #1
_08062346:
	ldr r0, [r3, #0]
	adds r0, r0, r6
	adds r0, r0, r5
	ldr r1, [r4, #0]
	adds r1, r1, r2
	adds r1, r1, r5
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r5, #1
	cmp r5, #6
	bls _08062346
	movs r5, #0
	ldr r6, _08062380
	ldr r4, _08062388
	ldr r3, _08062384
	ldr r2, _0806238C
_08062366:
	ldr r0, [r6, #0]
	adds r0, r0, r4
	adds r0, r0, r5
	ldr r1, [r3, #0]
	adds r1, r1, r2
	adds r1, r1, r5
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r5, #1
	cmp r5, #4
	bls _08062366
	b _080623E2
	.2byte 0x0000
_08062380: .4byte gUnk_03004210
_08062384: .4byte gUnk_03005CF4
_08062388: .4byte 0x00000147
_0806238C: .4byte 0x000001B7
_08062390:
	ldr r3, _08062474
	ldr r2, [r3, #0]
	ldr r4, _08062478
	ldr r0, [r4, #0]
	ldr r1, [r0, #0x7c]
	str r1, [r2, #0xc]
	adds r0, #0x80
	ldr r0, [r0, #0]
	str r0, [r2, #0x10]
	movs r5, #0
	movs r6, #0xa6
	lsls r6, r6, #1
	movs r2, #0xde
	lsls r2, r2, #1
_080623AC:
	ldr r0, [r3, #0]
	adds r0, r0, r6
	adds r0, r0, r5
	ldr r1, [r4, #0]
	adds r1, r1, r2
	adds r1, r1, r5
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r5, #1
	cmp r5, #6
	bls _080623AC
	movs r5, #0
	ldr r6, _08062474
	ldr r4, _0806247C
	ldr r3, _08062478
	ldr r2, _08062480
_080623CC:
	ldr r0, [r6, #0]
	adds r0, r0, r4
	adds r0, r0, r5
	ldr r1, [r3, #0]
	adds r1, r1, r2
	adds r1, r1, r5
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r5, #1
	cmp r5, #4
	bls _080623CC
_080623E2:
	movs r5, #0
	ldr r6, _08062474
	ldr r7, _08062478
	adds r4, r6, #0
	movs r3, #0xf3
	lsls r3, r3, #1
	movs r2, #0
_080623F0:
	ldr r0, [r4, #0]
	lsls r1, r5, #5
	adds r0, r0, r1
	adds r0, r0, r3
	strh r2, [r0, #0]
	adds r5, #1
	cmp r5, #0xf
	bls _080623F0
	ldr r1, [r6, #0]
	movs r0, #2
	str r0, [r1, #0]
	ldr r0, [r7, #0]
	movs r2, #0xa5
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	adds r1, #0xda
	strh r0, [r1, #0]
	bl sub_08006DAC
	movs r5, #0
_0806241A:
	bl sub_080003F0
	adds r5, #1
	cmp r5, #9
	bls _0806241A
	bl sub_08006C14
	bl sub_0800CB9C
	cmp r0, #0
	beq _0806243C
	bl sub_08002204
	cmp r0, #0
	beq _0806243C
	bl sub_080021D4
_0806243C:
	bl sub_0807A124
	cmp r0, #0
	bne _080624A0
	bl sub_08006BF8
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _08062484
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	adds r4, r0, #0
_0806245E:
	bl sub_080003F0
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0806245E
	movs r0, #0xa
	bl sub_0801ABE8
	b _0806248C
_08062474: .4byte gUnk_03004210
_08062478: .4byte gUnk_03005CF4
_0806247C: .4byte 0x00000153
_08062480: .4byte 0x000001C3
_08062484: .4byte 0x001403D9
_08062488:
	bl sub_080003F0
_0806248C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08062488
_08062494:
	bl sub_0800CBAC
	movs r0, #0
	bl sub_080B8598
	b _080624C8
_080624A0:
	bl sub_08006BF8
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _080624D4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	adds r4, r0, #0
_080624BA:
	bl sub_080003F0
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080624BA
_080624C8:
	bl sub_0800CDE4
_080624CC:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080624D4: .4byte 0x001403DA
	thumb_func_end sub_08061E44
