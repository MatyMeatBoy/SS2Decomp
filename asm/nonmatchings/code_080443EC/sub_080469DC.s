	thumb_func_start sub_080469DC
sub_080469DC: @ 0x080469DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	adds r7, r0, #0
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _08046A24
	adds r2, r2, r4
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_080020F4
	muls r0, r5, r0
	adds r4, #0x8c
	adds r0, r0, r4
	ldr r0, [r0, #0]
	asrs r6, r0, #8
	movs r0, #0x89
	lsls r0, r0, #2
	cmp r6, r0
	ble _08046A28
	adds r0, r7, #0
	movs r1, #5
	bl sub_08029174
	b _08046A30
	.2byte 0x0000
_08046A24: .4byte gUnk_03003CE0
_08046A28:
	adds r0, r7, #0
	movs r1, #3
	bl sub_08029174
_08046A30:
	bl sub_0800CE30
	cmp r0, #0
	beq _08046A4C
	ldr r0, _08046A44
	ldr r0, [r0, #0]
	ldr r1, _08046A48
	adds r0, r0, r1
	b _08046A54
	.2byte 0x0000
_08046A44: .4byte gUnk_03005CF4
_08046A48: .4byte 0x000001C7
_08046A4C:
	ldr r0, _08046A70
	ldr r0, [r0, #0]
	ldr r3, _08046A74
	adds r0, r0, r3
_08046A54:
	ldrb r0, [r0, #0]
	asrs r6, r0, #2
	movs r0, #1
	ands r6, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _08046A7C
	ldr r0, _08046A70
	ldr r0, [r0, #0]
	ldr r4, _08046A78
	adds r0, r0, r4
	b _08046A84
	.2byte 0x0000
_08046A70: .4byte gUnk_03005CF4
_08046A74: .4byte 0x000001BB
_08046A78: .4byte 0x000001C7
_08046A7C:
	ldr r0, _08046AA0
	ldr r0, [r0, #0]
	ldr r1, _08046AA4
	adds r0, r0, r1
_08046A84:
	ldrb r0, [r0, #0]
	asrs r5, r0, #3
	movs r0, #1
	ands r5, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _08046AAC
	ldr r0, _08046AA0
	ldr r0, [r0, #0]
	ldr r3, _08046AA8
	adds r0, r0, r3
	b _08046AB4
	.2byte 0x0000
_08046AA0: .4byte gUnk_03005CF4
_08046AA4: .4byte 0x000001BB
_08046AA8: .4byte 0x000001C7
_08046AAC:
	ldr r0, _08046AD0
	ldr r0, [r0, #0]
	ldr r4, _08046AD4
	adds r0, r0, r4
_08046AB4:
	ldrb r0, [r0, #0]
	asrs r4, r0, #4
	movs r0, #1
	ands r4, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _08046ADC
	ldr r0, _08046AD0
	ldr r0, [r0, #0]
	ldr r1, _08046AD8
	adds r0, r0, r1
	b _08046AE4
	.2byte 0x0000
_08046AD0: .4byte gUnk_03005CF4
_08046AD4: .4byte 0x000001BB
_08046AD8: .4byte 0x000001C7
_08046ADC:
	ldr r0, _08046B00
	ldr r0, [r0, #0]
	ldr r3, _08046B04
	adds r0, r0, r3
_08046AE4:
	ldrb r0, [r0, #0]
	asrs r1, r0, #5
	movs r0, #1
	ands r1, r0
	cmp r6, #0
	beq _08046B5E
	cmp r5, #0
	beq _08046B5E
	cmp r4, #0
	beq _08046BC2
	cmp r1, #0
	beq _08046B5E
	b _08046B0C
	.2byte 0x0000
_08046B00: .4byte gUnk_03005CF4
_08046B04: .4byte 0x000001BB
_08046B08:
	bl sub_080003F0
_08046B0C:
	bl sub_0805F184
	cmp r0, #0
	bne _08046B08
	b _08046B1A
_08046B16:
	bl sub_080003F0
_08046B1A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08046B16
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08046B3C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08046B44
_08046B3C: .4byte 0x001402BB
_08046B40:
	bl sub_080003F0
_08046B44:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08046B50
	b _08046EF2
_08046B50:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08046B40
	bl sub_0805EFBC
	b _08046EF2
_08046B5E:
	cmp r4, #0
	beq _08046BC2
	b _08046B68
_08046B64:
	bl sub_080003F0
_08046B68:
	bl sub_0805F184
	cmp r0, #0
	bne _08046B64
	b _08046B76
_08046B72:
	bl sub_080003F0
_08046B76:
	bl sub_0805EF90
	cmp r0, #0
	bne _08046B72
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08046B98
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08046BA0
_08046B98: .4byte 0x001402BA
_08046B9C:
	bl sub_080003F0
_08046BA0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08046BAC
	b _08046EF2
_08046BAC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08046B9C
	bl sub_0805EFBC
	b _08046EF2
_08046BBA:
	adds r0, r1, #0
	b _08046C74
_08046BBE:
	bl sub_080003F0
_08046BC2:
	bl sub_0805F184
	cmp r0, #0
	bne _08046BBE
	b _08046BD0
_08046BCC:
	bl sub_080003F0
_08046BD0:
	bl sub_0805EF90
	cmp r0, #0
	bne _08046BCC
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08046BF4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08046BFC
	.2byte 0x0000
_08046BF4: .4byte 0x001402B3
_08046BF8:
	bl sub_080003F0
_08046BFC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08046C12
	bl sub_0800CDF8
	cmp r0, #0
	beq _08046BF8
	bl sub_0805EFBC
_08046C12:
	movs r3, #0
	movs r2, #0
	ldr r0, _08046C80
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_08046C20:
	ldrh r0, [r1, #0]
	cmp r0, #4
	bne _08046C2E
	ldrh r0, [r1, #2]
	cmp r0, #3
	bne _08046C2E
	adds r3, #1
_08046C2E:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _08046C20
	adds r6, r3, #0
	bl sub_080020F4
	adds r5, r0, #0
	cmp r6, #0
	bne _08046C44
	b _08046EF2
_08046C44:
	cmp r5, #0
	beq _08046C4A
	b _08046EF2
_08046C4A:
	adds r2, r7, #0
	movs r4, #3
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r7, r0
	bls _08046C8C
	ldr r0, _08046C84
	ldr r0, [r0, #0]
	ldr r3, _08046C88
	adds r1, r0, r3
	movs r3, #0
_08046C60:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _08046BBA
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _08046C60
	bl sub_080003F0
	movs r0, #0
_08046C74:
	cmp r0, #0
	beq _08046CD4
	adds r0, #0x42
	strh r4, [r0, #0]
	b _08046CD4
	.2byte 0x0000
_08046C80: .4byte gUnk_030034E0
_08046C84: .4byte gUnk_03005CF4
_08046C88: .4byte 0x000007A4
_08046C8C:
	cmp r7, #0
	beq _08046CB4
	subs r2, r7, #1
	cmp r2, #4
	bhi _08046CD4
	ldr r1, _08046CB0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	movs r1, #3
	bl sub_08019EB8
	b _08046CD4
_08046CB0: .4byte gUnk_030056F4
_08046CB4:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _08046CCC
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r4, [r0, #0]
	b _08046CD4
_08046CCC: .4byte gUnk_03003CE0
_08046CD0:
	bl sub_080003F0
_08046CD4:
	bl sub_0805F184
	cmp r0, #0
	bne _08046CD0
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08046CF8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08046D00
	.2byte 0x0000
_08046CF8: .4byte 0x001402B4
_08046CFC:
	bl sub_080003F0
_08046D00:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08046CFC
	adds r0, r4, #0
	bl sub_0805EF14
	adds r4, r0, #0
	cmp r4, #0
	bne _08046D18
	b _08046EA4
_08046D18:
	add r3, sp, #0xc
	mov r8, r3
	b _08046D22
_08046D1E:
	bl sub_080003F0
_08046D22:
	bl sub_0805F184
	cmp r0, #0
	bne _08046D1E
	b _08046D30
_08046D2C:
	bl sub_080003F0
_08046D30:
	bl sub_0805EF90
	cmp r0, #0
	bne _08046D2C
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08046D54
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08046D5C
	.2byte 0x0000
_08046D54: .4byte 0x001402B6
_08046D58:
	bl sub_080003F0
_08046D5C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08046D72
	bl sub_0800CDF8
	cmp r0, #0
	beq _08046D58
	bl sub_0805EFBC
_08046D72:
	movs r4, #1
	movs r3, #0
	ldr r6, _08046DEC
	movs r5, #0
_08046D7A:
	ldr r0, [r6, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #4
	bne _08046DA2
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #3
	bne _08046DA2
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _08046DA8
_08046DA2:
	adds r3, #1
	cmp r3, #0x18
	bls _08046D7A
_08046DA8:
	movs r1, #1
	movs r2, #0x1e
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	mov r1, r8
	movs r2, #0
_08046DB8:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _08046DB8
	movs r4, #0
_08046DC4:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08046DC4
	ldr r0, _08046DF0
	movs r1, #0x24
	bl sub_08068070
	ldr r0, _08046DF4
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08046DFC
	movs r0, #0x33
	bl sub_08006D08
	b _08046DFC
_08046DEC: .4byte gUnk_030034E0
_08046DF0: .4byte sub_0805990C
_08046DF4: .4byte gUnk_030027D0
_08046DF8:
	bl sub_080003F0
_08046DFC:
	bl sub_0805F184
	cmp r0, #0
	bne _08046DF8
	b _08046E0A
_08046E06:
	bl sub_080003F0
_08046E0A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08046E06
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08046E2C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08046E34
_08046E2C: .4byte 0x001402B7
_08046E30:
	bl sub_080003F0
_08046E34:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08046E50
	bl sub_0800CDF8
	cmp r0, #0
	beq _08046E30
	bl sub_0805EFBC
	b _08046E50
_08046E4C:
	bl sub_080003F0
_08046E50:
	bl sub_0805F184
	cmp r0, #0
	bne _08046E4C
	b _08046E5E
_08046E5A:
	bl sub_080003F0
_08046E5E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08046E5A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08046E80
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08046E88
_08046E80: .4byte 0x001402B8
_08046E84:
	bl sub_080003F0
_08046E88:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08046EF2
	bl sub_0800CDF8
	cmp r0, #0
	beq _08046E84
	bl sub_0805EFBC
	b _08046EF2
_08046EA0:
	bl sub_080003F0
_08046EA4:
	bl sub_0805F184
	cmp r0, #0
	bne _08046EA0
	b _08046EB2
_08046EAE:
	bl sub_080003F0
_08046EB2:
	bl sub_0805EF90
	cmp r0, #0
	bne _08046EAE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08046ED4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08046EDC
_08046ED4: .4byte 0x001402B5
_08046ED8:
	bl sub_080003F0
_08046EDC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08046EF2
	bl sub_0800CDF8
	cmp r0, #0
	beq _08046ED8
	bl sub_0805EFBC
_08046EF2:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0802939C
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08046F24
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08046F24: .4byte gUnk_03003CE0
	thumb_func_end sub_080469DC
