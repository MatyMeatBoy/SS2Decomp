	thumb_func_start sub_08061910
sub_08061910: @ 0x08061910
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r0, #0xfe
	lsls r0, r0, #7
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	movs r0, #1
	bl sub_080570DC
	bl sub_0805EFBC
	add r7, sp, #0xc
	b _08061932
_0806192E:
	bl sub_080003F0
_08061932:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0806192E
	bl sub_0801AAF8
	cmp r0, #0
	beq _08061956
	movs r0, #6
	bl sub_0801ABE8
	b _0806194E
_0806194A:
	bl sub_080003F0
_0806194E:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0806194A
_08061956:
	bl sub_08006C14
	movs r5, #0
_0806195C:
	bl sub_080003F0
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x3b
	bls _0806195C
	bl sub_0800CCB8
	bl sub_0800CBAC
	bl sub_0805EF2C
	ldr r4, _080619C4
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08061988
	adds r0, r4, #0
	bl sub_080003A8
_08061988:
	adds r4, #0x28
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _0806199A
	adds r0, r4, #0
	bl sub_080003A8
_0806199A:
	ldr r4, _080619C8
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _080619AC
	adds r0, r4, #0
	bl sub_080003A8
_080619AC:
	adds r4, #0x28
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _080619BE
	adds r0, r4, #0
	bl sub_080003A8
_080619BE:
	movs r5, #0
	b _080619EC
	.2byte 0x0000
_080619C4: .4byte gUnk_03006110
_080619C8: .4byte gUnk_03006160
_080619CC:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	ldr r1, _08061ADC
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _080619E6
	adds r0, r4, #0
	bl sub_080003A8
_080619E6:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080619EC:
	bl sub_08002164
	cmp r5, r0
	blo _080619CC
	ldr r4, _08061AE0
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08061A06
	adds r0, r4, #0
	bl sub_080003A8
_08061A06:
	ldr r4, _08061AE4
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08061A18
	adds r0, r4, #0
	bl sub_080003A8
_08061A18:
	ldr r4, _08061AE8
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08061A2A
	adds r0, r4, #0
	bl sub_080003A8
_08061A2A:
	ldr r4, _08061AEC
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08061A3C
	adds r0, r4, #0
	bl sub_080003A8
_08061A3C:
	ldr r4, _08061AF0
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08061A4E
	adds r0, r4, #0
	bl sub_080003A8
_08061A4E:
	movs r6, #0xfe
	lsls r6, r6, #7
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	bl sub_080003F0
	bl sub_080003F0
	bl sub_0805EF2C
	bl sub_080003F0
	bl sub_080003F0
	bl sub_0805EF2C
	bl sub_080003F0
	bl sub_080003F0
	bl sub_0805EF2C
	bl sub_080003F0
	bl sub_080003F0
	bl sub_0805EF2C
	movs r5, #0
	str r5, [sp, #8]
	ldr r1, _08061AF4
	ldr r2, _08061AF8
	add r0, sp, #8
	bl sub_080B8578
	bl sub_080003F0
	bl sub_080003F0
	ldr r1, _08061AFC
	ldr r0, [sp, #0xc]
	ands r0, r1
	ldr r1, _08061B00
	orrs r0, r1
	str r0, [sp, #0xc]
	movs r0, #0
	adds r1, r7, #0
	bl sub_08000AA8
	ldr r4, _08061B04
	strh r5, [r4, #4]
	strh r5, [r4, #6]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	bl sub_080009F8
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	movs r0, #6
	bl sub_0801AB50
	b _08061B14
	.2byte 0x0000
_08061ADC: .4byte gUnk_030034F0
_08061AE0: .4byte gUnk_030061B0
_08061AE4: .4byte gUnk_03003C10
_08061AE8: .4byte gUnk_03006000
_08061AEC: .4byte gUnk_03003480
_08061AF0: .4byte gUnk_03006450
_08061AF4: .4byte 0x0600E000
_08061AF8: .4byte 0x05000200
_08061AFC: .4byte 0xFFFF0000
_08061B00: .4byte 0x00001C08
_08061B04: .4byte gUnk_03001250
_08061B08:
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	bl sub_0805EF2C
	bl sub_080003F0
_08061B14:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08061B08
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08061B68
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	bl sub_0805F07C
_08061B38:
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	movs r2, #1
	bl sub_080009F8
	movs r0, #0
	adds r1, r7, #0
	bl sub_08000AA8
	bl sub_080003F0
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08061B38
	adds r0, r4, #0
	bl sub_0805EE6C
	movs r0, #0xa
	bl sub_0801AA8C
	b _08061B70
_08061B68: .4byte 0x001404E2
_08061B6C:
	bl sub_080003F0
_08061B70:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08061B6C
	movs r0, #0
	bl sub_080B8598
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08061910
