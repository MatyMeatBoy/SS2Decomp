	thumb_func_start sub_0802DAF0
sub_0802DAF0: @ 0x0802DAF0
	push {r4, r5, lr}
	ldr r0, _0802DD78
	movs r1, #0x6e
	movs r2, #0x84
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802DD7C
	ldr r0, [r0, #0]
	ldr r2, _0802DD80
	adds r1, r0, r2
	movs r2, #0
_0802DB08:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802DB10
	b _0802DDD8
_0802DB10:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802DB08
	bl sub_080003F0
	movs r2, #0
_0802DB1E:
	cmp r2, #0
	beq _0802DB32
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802DB32:
	ldr r5, _0802DD84
	ldr r0, _0802DD7C
	ldr r0, [r0, #0]
	ldr r2, _0802DD80
	adds r1, r0, r2
	movs r2, #0
_0802DB3E:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802DB46
	b _0802DDD4
_0802DB46:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802DB3E
	bl sub_080003F0
	movs r0, #0
_0802DB54:
	cmp r0, #0
	beq _0802DB5A
	str r5, [r0, #0x44]
_0802DB5A:
	ldr r0, _0802DD88
	movs r1, #0x67
	movs r2, #0x4b
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802DD7C
	ldr r0, [r0, #0]
	ldr r2, _0802DD80
	adds r1, r0, r2
	movs r2, #0
_0802DB70:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802DB78
	b _0802DDD0
_0802DB78:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802DB70
	bl sub_080003F0
	movs r2, #0
_0802DB86:
	cmp r2, #0
	beq _0802DB9A
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802DB9A:
	ldr r5, _0802DD8C
	ldr r0, _0802DD7C
	ldr r0, [r0, #0]
	ldr r2, _0802DD80
	adds r1, r0, r2
	movs r2, #0
_0802DBA6:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802DBAE
	b _0802DDCC
_0802DBAE:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802DBA6
	bl sub_080003F0
	movs r0, #0
_0802DBBC:
	cmp r0, #0
	beq _0802DBC2
	str r5, [r0, #0x44]
_0802DBC2:
	ldr r0, _0802DD90
	movs r1, #0xcc
	movs r2, #0x70
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802DD7C
	ldr r0, [r0, #0]
	ldr r2, _0802DD80
	adds r1, r0, r2
	movs r2, #0
_0802DBD8:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802DBE0
	b _0802DDC8
_0802DBE0:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802DBD8
	bl sub_080003F0
	movs r2, #0
_0802DBEE:
	cmp r2, #0
	beq _0802DC02
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802DC02:
	ldr r5, _0802DD94
	ldr r0, _0802DD7C
	ldr r0, [r0, #0]
	ldr r2, _0802DD80
	adds r1, r0, r2
	movs r2, #0
_0802DC0E:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802DC16
	b _0802DDC4
_0802DC16:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802DC0E
	bl sub_080003F0
	movs r0, #0
_0802DC24:
	cmp r0, #0
	beq _0802DC2A
	str r5, [r0, #0x44]
_0802DC2A:
	movs r0, #0x19
	movs r1, #0xfc
	movs r2, #0x4b
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802DD7C
	ldr r0, [r0, #0]
	ldr r2, _0802DD80
	adds r1, r0, r2
	movs r2, #0
_0802DC40:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802DC48
	b _0802DDC0
_0802DC48:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802DC40
	bl sub_080003F0
	movs r2, #0
_0802DC56:
	cmp r2, #0
	beq _0802DC6A
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802DC6A:
	ldr r5, _0802DD98
	ldr r0, _0802DD7C
	ldr r0, [r0, #0]
	ldr r2, _0802DD80
	adds r1, r0, r2
	movs r2, #0
_0802DC76:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802DC7E
	b _0802DDBC
_0802DC7E:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802DC76
	bl sub_080003F0
	movs r0, #0
_0802DC8C:
	cmp r0, #0
	beq _0802DC92
	str r5, [r0, #0x44]
_0802DC92:
	ldr r0, _0802DD9C
	movs r1, #0xb3
	lsls r1, r1, #1
	movs r2, #0x46
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802DD7C
	ldr r0, [r0, #0]
	ldr r2, _0802DD80
	adds r1, r0, r2
	movs r2, #0
_0802DCAA:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802DCB2
	b _0802DDB8
_0802DCB2:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802DCAA
	bl sub_080003F0
	movs r2, #0
_0802DCC0:
	cmp r2, #0
	beq _0802DCD4
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802DCD4:
	ldr r5, _0802DDA0
	ldr r0, _0802DD7C
	ldr r0, [r0, #0]
	ldr r2, _0802DD80
	adds r1, r0, r2
	movs r2, #0
_0802DCE0:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802DDB4
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802DCE0
	bl sub_080003F0
	movs r0, #0
_0802DCF4:
	cmp r0, #0
	beq _0802DCFA
	str r5, [r0, #0x44]
_0802DCFA:
	ldr r0, _0802DDA4
	movs r1, #0x90
	movs r2, #0x68
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802DD7C
	ldr r0, [r0, #0]
	ldr r2, _0802DD80
	adds r1, r0, r2
	movs r2, #0
_0802DD10:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802DDB0
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802DD10
	bl sub_080003F0
	movs r2, #0
_0802DD24:
	cmp r2, #0
	beq _0802DD38
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802DD38:
	ldr r5, _0802DDA8
	ldr r0, _0802DD7C
	ldr r0, [r0, #0]
	ldr r2, _0802DD80
	adds r1, r0, r2
	movs r2, #0
_0802DD44:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802DDAC
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802DD44
	bl sub_080003F0
	movs r0, #0
_0802DD58:
	cmp r0, #0
	beq _0802DD5E
	str r5, [r0, #0x44]
_0802DD5E:
	bl sub_0800CC98
	cmp r0, #0
	bne _0802DE04
	bl sub_0801AB24
	cmp r0, #1
	beq _0802DDE8
	cmp r0, #1
	bgt _0802DDDC
	cmp r0, #0
	beq _0802DDE2
	b _0802DDFC
_0802DD78: .4byte 0x00050019
_0802DD7C: .4byte gUnk_03005CF4
_0802DD80: .4byte 0x000007A4
_0802DD84: .4byte sub_08059488
_0802DD88: .4byte 0x00040019
_0802DD8C: .4byte sub_08059534
_0802DD90: .4byte 0x00070019
_0802DD94: .4byte sub_080595E0
_0802DD98: .4byte sub_0805968C
_0802DD9C: .4byte 0x0004001B
_0802DDA0: .4byte sub_08059738
_0802DDA4: .4byte 0x00010019
_0802DDA8: .4byte sub_080597E4
_0802DDAC:
	adds r0, r1, #0
	b _0802DD58
_0802DDB0:
	adds r2, r1, #0
	b _0802DD24
_0802DDB4:
	adds r0, r1, #0
	b _0802DCF4
_0802DDB8:
	adds r2, r1, #0
	b _0802DCC0
_0802DDBC:
	adds r0, r1, #0
	b _0802DC8C
_0802DDC0:
	adds r2, r1, #0
	b _0802DC56
_0802DDC4:
	adds r0, r1, #0
	b _0802DC24
_0802DDC8:
	adds r2, r1, #0
	b _0802DBEE
_0802DDCC:
	adds r0, r1, #0
	b _0802DBBC
_0802DDD0:
	adds r2, r1, #0
	b _0802DB86
_0802DDD4:
	adds r0, r1, #0
	b _0802DB54
_0802DDD8:
	adds r2, r1, #0
	b _0802DB1E
_0802DDDC:
	cmp r0, #2
	beq _0802DDF0
	b _0802DDFC
_0802DDE2:
	bl sub_080576A8
	b _0802DDFC
_0802DDE8:
	movs r0, #6
	bl sub_0801AB50
	b _0802DDFC
_0802DDF0:
	movs r0, #6
	bl sub_0801AB90
	b _0802DDFC
_0802DDF8:
	bl sub_080003F0
_0802DDFC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802DDF8
_0802DE04:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0802DAF0
