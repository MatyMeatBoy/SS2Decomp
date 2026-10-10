	thumb_func_start sub_08061B88
sub_08061B88: @ 0x08061B88
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	bl sub_0800CDD0
	movs r5, #0
_08061B92:
	bl sub_080021A8
	cmp r0, #0
	beq _08061B9C
	b _08061E3A
_08061B9C:
	bl sub_080003F0
	adds r5, #1
	cmp r5, #0x63
	bls _08061B92
	bl sub_080021D4
	b _08061BBA
_08061BAC:
	bl sub_080021A8
	cmp r0, #0
	beq _08061BB6
	b _08061E3A
_08061BB6:
	bl sub_080003F0
_08061BBA:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08061BAC
	bl sub_0801AC78
	cmp r0, #0
	beq _08061BE8
	movs r0, #6
	bl sub_0801ABE8
	b _08061BE0
_08061BD2:
	bl sub_080021A8
	cmp r0, #0
	beq _08061BDC
	b _08061E3A
_08061BDC:
	bl sub_080003F0
_08061BE0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08061BD2
_08061BE8:
	ldr r1, _08061CA8
	movs r0, #0
	strh r0, [r1, #0x3a]
	bl sub_0800CCEC
	ldr r1, _08061CAC
	adds r1, #0x9c
	ldr r0, [r1, #0]
	movs r2, #0xc
	orrs r0, r2
	str r0, [r1, #0]
	ldr r4, _08061CB0
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08061C10
	adds r0, r4, #0
	bl sub_080003A8
_08061C10:
	ldr r4, _08061CB4
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08061C22
	adds r0, r4, #0
	bl sub_080003A8
_08061C22:
	ldr r4, _08061CB8
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08061C34
	adds r0, r4, #0
	bl sub_080003A8
_08061C34:
	movs r5, #0
	movs r6, #0
_08061C38:
	ldr r0, _08061CBC
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08061C4C
	adds r0, r4, #0
	bl sub_080003A8
_08061C4C:
	adds r6, #0x28
	adds r5, #1
	cmp r5, #4
	bls _08061C38
	bl sub_0805DE98
	ldr r4, _08061CC0
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08061C6A
	adds r0, r4, #0
	bl sub_080003A8
_08061C6A:
	adds r4, #0x28
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08061C7C
	adds r0, r4, #0
	bl sub_080003A8
_08061C7C:
	ldr r4, _08061CC4
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08061C8E
	adds r0, r4, #0
	bl sub_080003A8
_08061C8E:
	adds r4, #0x28
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08061CA0
	adds r0, r4, #0
	bl sub_080003A8
_08061CA0:
	movs r5, #0
	movs r6, #0
	b _08061CE0
	.2byte 0x0000
_08061CA8: .4byte gUnk_03001250
_08061CAC: .4byte gUnk_03003170
_08061CB0: .4byte gUnk_03003C10
_08061CB4: .4byte gUnk_03006000
_08061CB8: .4byte gUnk_03003480
_08061CBC: .4byte gUnk_03004220
_08061CC0: .4byte gUnk_03006110
_08061CC4: .4byte gUnk_03006160
_08061CC8:
	ldr r0, _08061D9C
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08061CDC
	adds r0, r4, #0
	bl sub_080003A8
_08061CDC:
	adds r6, #0x28
	adds r5, #1
_08061CE0:
	bl sub_08002164
	cmp r5, r0
	blo _08061CC8
	bl sub_080021A8
	cmp r0, #0
	beq _08061CF2
	b _08061E3A
_08061CF2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08061D00
	b _08061E3A
_08061D00:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08061D0E
	b _08061E3A
_08061D0E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08061D1C
	b _08061E3A
_08061D1C:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08061D2A
	b _08061E3A
_08061D2A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08061D38
	b _08061E3A
_08061D38:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	bne _08061E3A
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	bne _08061E3A
	bl sub_080003F0
	bl sub_080021A8
	adds r4, r0, #0
	cmp r4, #0
	bne _08061E3A
	movs r0, #0xfe
	lsls r0, r0, #7
	movs r1, #0
	movs r2, #0
	bl sub_080009F8
	movs r0, #0x88
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	ldr r1, _08061DA0
	ldr r0, [sp, #0]
	ands r0, r1
	ldr r1, _08061DA4
	orrs r0, r1
	str r0, [sp, #0]
	movs r0, #0
	mov r1, sp
	bl sub_08000AA8
	ldr r0, _08061DA8
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	bl sub_0805F07C
	movs r0, #6
	bl sub_0801AB50
	b _08061DB0
_08061D9C: .4byte gUnk_030034F0
_08061DA0: .4byte 0xFFFF0000
_08061DA4: .4byte 0x00001C08
_08061DA8: .4byte gUnk_03001250
_08061DAC:
	bl sub_080003F0
_08061DB0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08061DAC
_08061DB8:
	bl sub_080003F0
	adds r0, r7, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08061DB8
	bl sub_08006DAC
	movs r5, #0
_08061DCC:
	bl sub_080003F0
	adds r5, #1
	cmp r5, #0x3b
	bls _08061DCC
_08061DD6:
	bl sub_08006C14
	bl sub_0807A124
	cmp r0, #0
	bne _08061E14
_08061DE2:
	bl sub_080003F0
	adds r0, r7, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08061DE2
	movs r0, #0xa
	bl sub_0801ABE8
	b _08061DFC
_08061DF8:
	bl sub_080003F0
_08061DFC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08061DF8
	bl sub_0800CBAC
	bl sub_0800CDE4
	movs r0, #6
	bl sub_0801AA8C
	b _08061E2C
_08061E14:
	bl sub_08006BF8
_08061E18:
	bl sub_080003F0
	adds r0, r7, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08061E18
	b _08061DD6
_08061E28:
	bl sub_080003F0
_08061E2C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08061E28
	movs r0, #0
	bl SoftReset
_08061E3A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08061B88
