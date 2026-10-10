	thumb_func_start sub_0802FA80
sub_0802FA80: @ 0x0802FA80
	push {r4, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0802FAB0
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _0802FAB8
	ldr r0, _0802FAB4
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x7c]
	b _0802FABE
_0802FAB0: .4byte gUnk_03003CE0
_0802FAB4: .4byte gUnk_03005CF4
_0802FAB8:
	ldr r0, _0802FACC
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x74]
_0802FABE:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802FB26
	b _0802FAD4
	.2byte 0x0000
_0802FACC: .4byte gUnk_03005CF4
_0802FAD0:
	bl sub_080003F0
_0802FAD4:
	bl sub_0805F184
	cmp r0, #0
	bne _0802FAD0
	b _0802FAE2
_0802FADE:
	bl sub_080003F0
_0802FAE2:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802FADE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802FB04
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802FB0C
_0802FB04: .4byte 0x001400C4
_0802FB08:
	bl sub_080003F0
_0802FB0C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802FB18
	b _0802FE76
_0802FB18:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802FB08
	bl sub_0805EFBC
	b _0802FE76
_0802FB26:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802FB86
	b _0802FB34
_0802FB30:
	bl sub_080003F0
_0802FB34:
	bl sub_0805F184
	cmp r0, #0
	bne _0802FB30
	b _0802FB42
_0802FB3E:
	bl sub_080003F0
_0802FB42:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802FB3E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802FB64
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802FB6C
_0802FB64: .4byte 0x001400C3
_0802FB68:
	bl sub_080003F0
_0802FB6C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802FB78
	b _0802FE76
_0802FB78:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802FB68
	bl sub_0805EFBC
	b _0802FE76
_0802FB86:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802FBE6
	b _0802FB94
_0802FB90:
	bl sub_080003F0
_0802FB94:
	bl sub_0805F184
	cmp r0, #0
	bne _0802FB90
	b _0802FBA2
_0802FB9E:
	bl sub_080003F0
_0802FBA2:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802FB9E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802FBC4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802FBCC
_0802FBC4: .4byte 0x001400C2
_0802FBC8:
	bl sub_080003F0
_0802FBCC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802FBD8
	b _0802FE76
_0802FBD8:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802FBC8
	bl sub_0805EFBC
	b _0802FE76
_0802FBE6:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0802FC46
	b _0802FBF4
_0802FBF0:
	bl sub_080003F0
_0802FBF4:
	bl sub_0805F184
	cmp r0, #0
	bne _0802FBF0
	b _0802FC02
_0802FBFE:
	bl sub_080003F0
_0802FC02:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802FBFE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802FC24
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802FC2C
_0802FC24: .4byte 0x001400C1
_0802FC28:
	bl sub_080003F0
_0802FC2C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802FC38
	b _0802FE76
_0802FC38:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802FC28
	bl sub_0805EFBC
	b _0802FE76
_0802FC46:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802FCA6
	b _0802FC54
_0802FC50:
	bl sub_080003F0
_0802FC54:
	bl sub_0805F184
	cmp r0, #0
	bne _0802FC50
	b _0802FC62
_0802FC5E:
	bl sub_080003F0
_0802FC62:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802FC5E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802FC84
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802FC8C
_0802FC84: .4byte 0x001400C0
_0802FC88:
	bl sub_080003F0
_0802FC8C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802FC98
	b _0802FE76
_0802FC98:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802FC88
	bl sub_0805EFBC
	b _0802FE76
_0802FCA6:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0802FD06
	b _0802FCB4
_0802FCB0:
	bl sub_080003F0
_0802FCB4:
	bl sub_0805F184
	cmp r0, #0
	bne _0802FCB0
	b _0802FCC2
_0802FCBE:
	bl sub_080003F0
_0802FCC2:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802FCBE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802FCE4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802FCEC
_0802FCE4: .4byte 0x001400BF
_0802FCE8:
	bl sub_080003F0
_0802FCEC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802FCF8
	b _0802FE76
_0802FCF8:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802FCE8
	bl sub_0805EFBC
	b _0802FE76
_0802FD06:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0802FD66
	b _0802FD14
_0802FD10:
	bl sub_080003F0
_0802FD14:
	bl sub_0805F184
	cmp r0, #0
	bne _0802FD10
	b _0802FD22
_0802FD1E:
	bl sub_080003F0
_0802FD22:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802FD1E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802FD44
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802FD4C
_0802FD44: .4byte 0x001400BE
_0802FD48:
	bl sub_080003F0
_0802FD4C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802FD58
	b _0802FE76
_0802FD58:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802FD48
	bl sub_0805EFBC
	b _0802FE76
_0802FD66:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802FDC4
	b _0802FD74
_0802FD70:
	bl sub_080003F0
_0802FD74:
	bl sub_0805F184
	cmp r0, #0
	bne _0802FD70
	b _0802FD82
_0802FD7E:
	bl sub_080003F0
_0802FD82:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802FD7E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802FDA4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802FDAC
_0802FDA4: .4byte 0x001400BD
_0802FDA8:
	bl sub_080003F0
_0802FDAC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0802FE76
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802FDA8
	bl sub_0805EFBC
	b _0802FE76
_0802FDC4:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0802FE28
	b _0802FDD2
_0802FDCE:
	bl sub_080003F0
_0802FDD2:
	bl sub_0805F184
	cmp r0, #0
	bne _0802FDCE
	b _0802FDE0
_0802FDDC:
	bl sub_080003F0
_0802FDE0:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802FDDC
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802FE04
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802FE0C
	.2byte 0x0000
_0802FE04: .4byte 0x001400BC
_0802FE08:
	bl sub_080003F0
_0802FE0C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0802FE76
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802FE08
	bl sub_0805EFBC
	b _0802FE76
_0802FE24:
	bl sub_080003F0
_0802FE28:
	bl sub_0805F184
	cmp r0, #0
	bne _0802FE24
	b _0802FE36
_0802FE32:
	bl sub_080003F0
_0802FE36:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802FE32
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802FE58
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802FE60
_0802FE58: .4byte 0x001400BB
_0802FE5C:
	bl sub_080003F0
_0802FE60:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0802FE76
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802FE5C
	bl sub_0805EFBC
_0802FE76:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0802FE9C
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
_0802FE9C: .4byte gUnk_03003CE0
	thumb_func_end sub_0802FA80
