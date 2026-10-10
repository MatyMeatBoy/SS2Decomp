	thumb_func_start sub_08055C58
sub_08055C58: @ 0x08055C58
	push {r4, r5, lr}
	movs r0, #0x3e
	movs r1, #0x78
	movs r2, #0x60
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _08055CD8
	ldr r0, [r0, #0]
	ldr r2, _08055CDC
	adds r1, r0, r2
	movs r2, #0
_08055C70:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _08055CE8
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08055C70
	bl sub_080003F0
	movs r2, #0
_08055C84:
	cmp r2, #0
	beq _08055C98
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0x1e
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_08055C98:
	ldr r5, _08055CE0
	ldr r0, _08055CD8
	ldr r0, [r0, #0]
	ldr r2, _08055CDC
	adds r1, r0, r2
	movs r2, #0
_08055CA4:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _08055CE4
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08055CA4
	bl sub_080003F0
	movs r0, #0
_08055CB8:
	cmp r0, #0
	beq _08055CBE
	str r5, [r0, #0x44]
_08055CBE:
	bl sub_0800CC98
	cmp r0, #0
	bne _08055D14
	bl sub_0801AB24
	cmp r0, #1
	beq _08055CF8
	cmp r0, #1
	bgt _08055CEC
	cmp r0, #0
	beq _08055CF2
	b _08055D0C
_08055CD8: .4byte gUnk_03005CF4
_08055CDC: .4byte 0x000007A4
_08055CE0: .4byte sub_08055D1C
_08055CE4:
	adds r0, r1, #0
	b _08055CB8
_08055CE8:
	adds r2, r1, #0
	b _08055C84
_08055CEC:
	cmp r0, #2
	beq _08055D00
	b _08055D0C
_08055CF2:
	bl sub_080576A8
	b _08055D0C
_08055CF8:
	movs r0, #6
	bl sub_0801AB50
	b _08055D0C
_08055D00:
	movs r0, #6
	bl sub_0801AB90
	b _08055D0C
_08055D08:
	bl sub_080003F0
_08055D0C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08055D08
_08055D14:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08055C58
