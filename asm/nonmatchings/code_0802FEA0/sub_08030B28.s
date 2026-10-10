	thumb_func_start sub_08030B28
sub_08030B28: @ 0x08030B28
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08030B64
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r4, #0
	movs r1, #0
	bl sub_0802949C
	bl sub_0800CE30
	cmp r0, #0
	beq _08030B6C
	ldr r0, _08030B68
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x7c]
	b _08030B72
	.2byte 0x0000
_08030B64: .4byte gUnk_03003CE0
_08030B68: .4byte gUnk_03005CF4
_08030B6C:
	ldr r0, _08030B80
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x74]
_08030B72:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08030BDA
	b _08030B88
	.2byte 0x0000
_08030B80: .4byte gUnk_03005CF4
_08030B84:
	bl sub_080003F0
_08030B88:
	bl sub_0805F184
	cmp r0, #0
	bne _08030B84
	b _08030B96
_08030B92:
	bl sub_080003F0
_08030B96:
	bl sub_0805EF90
	cmp r0, #0
	bne _08030B92
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030BB8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030BC0
_08030BB8: .4byte 0x00140162
_08030BBC:
	bl sub_080003F0
_08030BC0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08030BCC
	b _08030F2A
_08030BCC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030BBC
	bl sub_0805EFBC
	b _08030F2A
_08030BDA:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08030C3A
	b _08030BE8
_08030BE4:
	bl sub_080003F0
_08030BE8:
	bl sub_0805F184
	cmp r0, #0
	bne _08030BE4
	b _08030BF6
_08030BF2:
	bl sub_080003F0
_08030BF6:
	bl sub_0805EF90
	cmp r0, #0
	bne _08030BF2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030C18
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030C20
_08030C18: .4byte 0x00140161
_08030C1C:
	bl sub_080003F0
_08030C20:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08030C2C
	b _08030F2A
_08030C2C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030C1C
	bl sub_0805EFBC
	b _08030F2A
_08030C3A:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08030C9A
	b _08030C48
_08030C44:
	bl sub_080003F0
_08030C48:
	bl sub_0805F184
	cmp r0, #0
	bne _08030C44
	b _08030C56
_08030C52:
	bl sub_080003F0
_08030C56:
	bl sub_0805EF90
	cmp r0, #0
	bne _08030C52
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030C78
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030C80
_08030C78: .4byte 0x00140160
_08030C7C:
	bl sub_080003F0
_08030C80:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08030C8C
	b _08030F2A
_08030C8C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030C7C
	bl sub_0805EFBC
	b _08030F2A
_08030C9A:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08030CFA
	b _08030CA8
_08030CA4:
	bl sub_080003F0
_08030CA8:
	bl sub_0805F184
	cmp r0, #0
	bne _08030CA4
	b _08030CB6
_08030CB2:
	bl sub_080003F0
_08030CB6:
	bl sub_0805EF90
	cmp r0, #0
	bne _08030CB2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030CD8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030CE0
_08030CD8: .4byte 0x0014015F
_08030CDC:
	bl sub_080003F0
_08030CE0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08030CEC
	b _08030F2A
_08030CEC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030CDC
	bl sub_0805EFBC
	b _08030F2A
_08030CFA:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08030D5A
	b _08030D08
_08030D04:
	bl sub_080003F0
_08030D08:
	bl sub_0805F184
	cmp r0, #0
	bne _08030D04
	b _08030D16
_08030D12:
	bl sub_080003F0
_08030D16:
	bl sub_0805EF90
	cmp r0, #0
	bne _08030D12
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030D38
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030D40
_08030D38: .4byte 0x0014015E
_08030D3C:
	bl sub_080003F0
_08030D40:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08030D4C
	b _08030F2A
_08030D4C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030D3C
	bl sub_0805EFBC
	b _08030F2A
_08030D5A:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08030DBA
	b _08030D68
_08030D64:
	bl sub_080003F0
_08030D68:
	bl sub_0805F184
	cmp r0, #0
	bne _08030D64
	b _08030D76
_08030D72:
	bl sub_080003F0
_08030D76:
	bl sub_0805EF90
	cmp r0, #0
	bne _08030D72
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030D98
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030DA0
_08030D98: .4byte 0x0014015D
_08030D9C:
	bl sub_080003F0
_08030DA0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08030DAC
	b _08030F2A
_08030DAC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030D9C
	bl sub_0805EFBC
	b _08030F2A
_08030DBA:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08030E1A
	b _08030DC8
_08030DC4:
	bl sub_080003F0
_08030DC8:
	bl sub_0805F184
	cmp r0, #0
	bne _08030DC4
	b _08030DD6
_08030DD2:
	bl sub_080003F0
_08030DD6:
	bl sub_0805EF90
	cmp r0, #0
	bne _08030DD2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030DF8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030E00
_08030DF8: .4byte 0x0014015C
_08030DFC:
	bl sub_080003F0
_08030E00:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08030E0C
	b _08030F2A
_08030E0C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030DFC
	bl sub_0805EFBC
	b _08030F2A
_08030E1A:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08030E78
	b _08030E28
_08030E24:
	bl sub_080003F0
_08030E28:
	bl sub_0805F184
	cmp r0, #0
	bne _08030E24
	b _08030E36
_08030E32:
	bl sub_080003F0
_08030E36:
	bl sub_0805EF90
	cmp r0, #0
	bne _08030E32
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030E58
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030E60
_08030E58: .4byte 0x0014015B
_08030E5C:
	bl sub_080003F0
_08030E60:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08030F2A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030E5C
	bl sub_0805EFBC
	b _08030F2A
_08030E78:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08030EDC
	b _08030E86
_08030E82:
	bl sub_080003F0
_08030E86:
	bl sub_0805F184
	cmp r0, #0
	bne _08030E82
	b _08030E94
_08030E90:
	bl sub_080003F0
_08030E94:
	bl sub_0805EF90
	cmp r0, #0
	bne _08030E90
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030EB8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030EC0
	.2byte 0x0000
_08030EB8: .4byte 0x0014015A
_08030EBC:
	bl sub_080003F0
_08030EC0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08030F2A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030EBC
	bl sub_0805EFBC
	b _08030F2A
_08030ED8:
	bl sub_080003F0
_08030EDC:
	bl sub_0805F184
	cmp r0, #0
	bne _08030ED8
	b _08030EEA
_08030EE6:
	bl sub_080003F0
_08030EEA:
	bl sub_0805EF90
	cmp r0, #0
	bne _08030EE6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030F0C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030F14
_08030F0C: .4byte 0x00140159
_08030F10:
	bl sub_080003F0
_08030F14:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08030F2A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030F10
	bl sub_0805EFBC
_08030F2A:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08030F50
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
_08030F50: .4byte gUnk_03003CE0
	thumb_func_end sub_08030B28
