	thumb_func_start sub_08054FB8
sub_08054FB8: @ 0x08054FB8
	push {r4, r5, r6, lr}
	ldr r6, _08054FC8
	ldr r0, _08054FCC
	ldr r0, [r0, #0]
	ldr r1, _08054FD0
	adds r4, r0, r1
	movs r5, #0
	b _08054FD8
_08054FC8: .4byte sub_0805664C
_08054FCC: .4byte gUnk_03005CF4
_08054FD0: .4byte 0x00000E34
_08054FD4:
	adds r5, #1
	adds r4, #0x28
_08054FD8:
	cmp r5, #0x1d
	bhi _08055016
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08054FD4
	b _08054FEC
_08054FE8:
	bl sub_080003F0
_08054FEC:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054FE8
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
	movs r1, #0x25
	bl sub_08000274
_08055016:
	ldr r6, _08055024
	ldr r0, _08055028
	ldr r0, [r0, #0]
	ldr r1, _0805502C
	adds r4, r0, r1
	movs r5, #0
	b _08055034
_08055024: .4byte sub_0805664C
_08055028: .4byte gUnk_03005CF4
_0805502C: .4byte 0x00000E34
_08055030:
	adds r5, #1
	adds r4, #0x28
_08055034:
	cmp r5, #0x1d
	bhi _08055072
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08055030
	b _08055048
_08055044:
	bl sub_080003F0
_08055048:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08055044
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
	movs r1, #0x26
	bl sub_08000274
_08055072:
	ldr r6, _08055080
	ldr r0, _08055084
	ldr r0, [r0, #0]
	ldr r1, _08055088
	adds r4, r0, r1
	movs r5, #0
	b _08055090
_08055080: .4byte sub_0805664C
_08055084: .4byte gUnk_03005CF4
_08055088: .4byte 0x00000E34
_0805508C:
	adds r5, #1
	adds r4, #0x28
_08055090:
	cmp r5, #0x1d
	bhi _080550CE
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0805508C
	b _080550A4
_080550A0:
	bl sub_080003F0
_080550A4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080550A0
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
	movs r1, #0x27
	bl sub_08000274
_080550CE:
	ldr r6, _080550DC
	ldr r0, _080550E0
	ldr r0, [r0, #0]
	ldr r1, _080550E4
	adds r4, r0, r1
	movs r5, #0
	b _080550EC
_080550DC: .4byte sub_0805664C
_080550E0: .4byte gUnk_03005CF4
_080550E4: .4byte 0x00000E34
_080550E8:
	adds r5, #1
	adds r4, #0x28
_080550EC:
	cmp r5, #0x1d
	bhi _0805512A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080550E8
	b _08055100
_080550FC:
	bl sub_080003F0
_08055100:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080550FC
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
	movs r1, #0x28
	bl sub_08000274
_0805512A:
	bl sub_0800CC98
	cmp r0, #0
	bne _0805516C
	bl sub_0801AB24
	cmp r0, #1
	beq _08055150
	cmp r0, #1
	bgt _08055144
	cmp r0, #0
	beq _0805514A
	b _08055164
_08055144:
	cmp r0, #2
	beq _08055158
	b _08055164
_0805514A:
	bl sub_080576A8
	b _08055164
_08055150:
	movs r0, #6
	bl sub_0801AB50
	b _08055164
_08055158:
	movs r0, #6
	bl sub_0801AB90
	b _08055164
_08055160:
	bl sub_080003F0
_08055164:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08055160
_0805516C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_08054FB8
