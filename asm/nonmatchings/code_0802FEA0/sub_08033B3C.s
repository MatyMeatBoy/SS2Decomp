	thumb_func_start sub_08033B3C
sub_08033B3C: @ 0x08033B3C
	push {r4, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08033B68
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	ldr r0, _08033B6C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x20]
	cmp r0, #0xc6
	ble _08033BC8
	b _08033B74
_08033B68: .4byte gUnk_03003CE0
_08033B6C: .4byte gUnk_030034E0
_08033B70:
	bl sub_080003F0
_08033B74:
	bl sub_0805F184
	cmp r0, #0
	bne _08033B70
	b _08033B82
_08033B7E:
	bl sub_080003F0
_08033B82:
	bl sub_0805EF90
	cmp r0, #0
	bne _08033B7E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033BA4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033BAC
_08033BA4: .4byte 0x001401A9
_08033BA8:
	bl sub_080003F0
_08033BAC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08033C16
	bl sub_0800CDF8
	cmp r0, #0
	beq _08033BA8
	bl sub_0805EFBC
	b _08033C16
_08033BC4:
	bl sub_080003F0
_08033BC8:
	bl sub_0805F184
	cmp r0, #0
	bne _08033BC4
	b _08033BD6
_08033BD2:
	bl sub_080003F0
_08033BD6:
	bl sub_0805EF90
	cmp r0, #0
	bne _08033BD2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033BF8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033C00
_08033BF8: .4byte 0x001401A8
_08033BFC:
	bl sub_080003F0
_08033C00:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08033C16
	bl sub_0800CDF8
	cmp r0, #0
	beq _08033BFC
	bl sub_0805EFBC
_08033C16:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08033C3C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_08033C3C: .4byte gUnk_03003CE0
	thumb_func_end sub_08033B3C
