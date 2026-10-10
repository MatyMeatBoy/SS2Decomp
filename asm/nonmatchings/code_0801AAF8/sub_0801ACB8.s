	thumb_func_start sub_0801ACB8
sub_0801ACB8: @ 0x0801ACB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _0801AD08
	ldr r7, [r0, #0]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0801AD0C
	adds r1, r1, r0
	mov r9, r1
	ldr r2, _0801AD10
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #5
	adds r1, r7, #0
	adds r1, #0x10
	adds r0, r0, r2
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _0801ACFE
	b _0801B0B0
_0801ACFE:
	lsls r0, r0, #2
	ldr r1, _0801AD14
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801AD08: .4byte gUnk_030034E0
_0801AD0C: .4byte gUnk_03003CE0
_0801AD10: .4byte gUnk_0848FA48
_0801AD14: .4byte _0801AD18
_0801AD18:
	.4byte _0801AD3C
_0801AD1C: .4byte _0801AE68
_0801AD20: .4byte _0801AE04
_0801AD24: .4byte _0801ADA0
_0801AD28: .4byte _0801AECC
_0801AD2C: .4byte _0801AF94
_0801AD30: .4byte _0801AF30
_0801AD34: .4byte _0801AFF8
_0801AD38: .4byte _0801B064
_0801AD3C:
	ldr r0, _0801AD80
	movs r1, #0
	bl sub_0805D064
	ldr r0, _0801AD84
	movs r1, #1
	bl sub_0805D064
	ldr r0, _0801AD88
	movs r1, #2
	bl sub_0805D064
	ldr r2, _0801AD8C
	movs r0, #4
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AD90
	movs r0, #2
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AD94
	movs r0, #3
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AD98
	movs r0, #5
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AD9C
	b _0801B03A
_0801AD80: .4byte gUnk_0848FB84
_0801AD84: .4byte gUnk_0848FB90
_0801AD88: .4byte gUnk_0848FB9C
_0801AD8C: .4byte gUnk_0848FBA8
_0801AD90: .4byte gUnk_0848FBB4
_0801AD94: .4byte gUnk_0848FBC0
_0801AD98: .4byte gUnk_0848FBD8
_0801AD9C: .4byte gUnk_0848FBCC
_0801ADA0:
	ldr r0, _0801ADE4
	movs r1, #0
	bl sub_0805D064
	ldr r0, _0801ADE8
	movs r1, #1
	bl sub_0805D064
	ldr r0, _0801ADEC
	movs r1, #2
	bl sub_0805D064
	ldr r2, _0801ADF0
	movs r0, #4
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801ADF4
	movs r0, #2
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801ADF8
	movs r0, #3
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801ADFC
	movs r0, #5
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AE00
	b _0801B03A
_0801ADE4: .4byte gUnk_0848FDC4
_0801ADE8: .4byte gUnk_0848FDD0
_0801ADEC: .4byte gUnk_0848FDDC
_0801ADF0: .4byte gUnk_0848FDE8
_0801ADF4: .4byte gUnk_0848FDF4
_0801ADF8: .4byte gUnk_0848FE00
_0801ADFC: .4byte gUnk_0848FE18
_0801AE00: .4byte gUnk_0848FE0C
_0801AE04:
	ldr r0, _0801AE48
	movs r1, #0
	bl sub_0805D064
	ldr r0, _0801AE4C
	movs r1, #1
	bl sub_0805D064
	ldr r0, _0801AE50
	movs r1, #2
	bl sub_0805D064
	ldr r2, _0801AE54
	movs r0, #4
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AE58
	movs r0, #2
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AE5C
	movs r0, #3
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AE60
	movs r0, #5
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AE64
	b _0801B03A
_0801AE48: .4byte gUnk_0848FD64
_0801AE4C: .4byte gUnk_0848FD70
_0801AE50: .4byte gUnk_0848FD7C
_0801AE54: .4byte gUnk_0848FD88
_0801AE58: .4byte gUnk_0848FD94
_0801AE5C: .4byte gUnk_0848FDA0
_0801AE60: .4byte gUnk_0848FDB8
_0801AE64: .4byte gUnk_0848FDAC
_0801AE68:
	ldr r0, _0801AEAC
	movs r1, #0
	bl sub_0805D064
	ldr r0, _0801AEB0
	movs r1, #1
	bl sub_0805D064
	ldr r0, _0801AEB4
	movs r1, #2
	bl sub_0805D064
	ldr r2, _0801AEB8
	movs r0, #4
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AEBC
	movs r0, #2
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AEC0
	movs r0, #3
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AEC4
	movs r0, #5
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AEC8
	b _0801B03A
_0801AEAC: .4byte gUnk_0848FBE4
_0801AEB0: .4byte gUnk_0848FBF0
_0801AEB4: .4byte gUnk_0848FBFC
_0801AEB8: .4byte gUnk_0848FC08
_0801AEBC: .4byte gUnk_0848FC14
_0801AEC0: .4byte gUnk_0848FC20
_0801AEC4: .4byte gUnk_0848FC2C
_0801AEC8: .4byte gUnk_0848FC38
_0801AECC:
	ldr r0, _0801AF10
	movs r1, #0
	bl sub_0805D064
	ldr r0, _0801AF14
	movs r1, #1
	bl sub_0805D064
	ldr r0, _0801AF18
	movs r1, #2
	bl sub_0805D064
	ldr r2, _0801AF1C
	movs r0, #4
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AF20
	movs r0, #2
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AF24
	movs r0, #3
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AF28
	movs r0, #5
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AF2C
	b _0801B03A
_0801AF10: .4byte gUnk_0848FC44
_0801AF14: .4byte gUnk_0848FC50
_0801AF18: .4byte gUnk_0848FC5C
_0801AF1C: .4byte gUnk_0848FC68
_0801AF20: .4byte gUnk_0848FC74
_0801AF24: .4byte gUnk_0848FC80
_0801AF28: .4byte gUnk_0848FC8C
_0801AF2C: .4byte gUnk_0848FC98
_0801AF30:
	ldr r0, _0801AF74
	movs r1, #0
	bl sub_0805D064
	ldr r0, _0801AF78
	movs r1, #1
	bl sub_0805D064
	ldr r0, _0801AF7C
	movs r1, #2
	bl sub_0805D064
	ldr r2, _0801AF80
	movs r0, #4
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AF84
	movs r0, #2
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AF88
	movs r0, #3
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AF8C
	movs r0, #5
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AF90
	b _0801B03A
_0801AF74: .4byte gUnk_0848FE24
_0801AF78: .4byte gUnk_0848FE30
_0801AF7C: .4byte gUnk_0848FE3C
_0801AF80: .4byte gUnk_0848FE48
_0801AF84: .4byte gUnk_0848FE54
_0801AF88: .4byte gUnk_0848FE60
_0801AF8C: .4byte gUnk_0848FE6C
_0801AF90: .4byte gUnk_0848FE78
_0801AF94:
	ldr r0, _0801AFD8
	movs r1, #0
	bl sub_0805D064
	ldr r0, _0801AFDC
	movs r1, #1
	bl sub_0805D064
	ldr r0, _0801AFE0
	movs r1, #2
	bl sub_0805D064
	ldr r2, _0801AFE4
	movs r0, #4
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AFE8
	movs r0, #2
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AFEC
	movs r0, #3
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AFF0
	movs r0, #5
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801AFF4
	b _0801B03A
_0801AFD8: .4byte gUnk_0848FCA4
_0801AFDC: .4byte gUnk_0848FCB0
_0801AFE0: .4byte gUnk_0848FCBC
_0801AFE4: .4byte gUnk_0848FCC8
_0801AFE8: .4byte gUnk_0848FCD4
_0801AFEC: .4byte gUnk_0848FCE0
_0801AFF0: .4byte gUnk_0848FCF8
_0801AFF4: .4byte gUnk_0848FCEC
_0801AFF8:
	ldr r0, _0801B044
	movs r1, #0
	bl sub_0805D064
	ldr r0, _0801B048
	movs r1, #1
	bl sub_0805D064
	ldr r0, _0801B04C
	movs r1, #2
	bl sub_0805D064
	ldr r2, _0801B050
	movs r0, #4
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801B054
	movs r0, #2
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801B058
	movs r0, #3
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801B05C
	movs r0, #5
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801B060
_0801B03A:
	movs r0, #6
	movs r1, #0
	bl sub_0807BEA0
	b _0801B0B0
_0801B044: .4byte gUnk_0848FD04
_0801B048: .4byte gUnk_0848FD10
_0801B04C: .4byte gUnk_0848FD1C
_0801B050: .4byte gUnk_0848FD28
_0801B054: .4byte gUnk_0848FD34
_0801B058: .4byte gUnk_0848FD40
_0801B05C: .4byte gUnk_0848FD58
_0801B060: .4byte gUnk_0848FD4C
_0801B064:
	ldr r4, _0801B130
	adds r0, r4, #0
	movs r1, #0
	bl sub_0805D064
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805D064
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805D064
	ldr r2, _0801B134
	movs r0, #4
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801B138
	movs r0, #2
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801B13C
	movs r0, #3
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801B140
	movs r0, #5
	movs r1, #0
	bl sub_0807BEA0
	ldr r2, _0801B144
	movs r0, #6
	movs r1, #0
	bl sub_0807BEA0
_0801B0B0:
	movs r0, #0
	bl sub_0805AD78
	bl sub_0805D094
	bl sub_0805D0E8
	bl sub_0805D13C
	bl sub_0805D190
	bl sub_0805D1E0
	movs r5, #0
	adds r4, r7, #0
	adds r4, #0x68
	str r4, [sp, #0x1c]
	mov r0, r9
	adds r0, #0xc2
	str r0, [sp, #0x10]
	movs r1, #0x60
	add r1, r9
	mov sl, r1
	mov r2, r9
	adds r2, #0xc4
	str r2, [sp, #0x14]
	mov r3, r9
	adds r3, #0x62
	str r3, [sp, #0x18]
	movs r6, #0
	mov r4, sp
	ldr r0, _0801B148
	mov r8, r0
_0801B0F2:
	str r6, [sp, #4]
	lsls r1, r5, #2
	add r1, r8
	ldrh r0, [r1, #2]
	strh r0, [r4, #2]
	ldrh r0, [r1, #0]
	strh r0, [r4, #0]
	strh r6, [r4, #4]
	strb r6, [r4, #8]
	adds r0, r5, #0
	mov r1, sp
	bl sub_0805CFF8
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0801B0F2
	ldr r1, _0801B14C
	movs r0, #0x18
	bl sub_0805CFF8
	bl sub_0802A9B0
	cmp r0, #0xc
	bhi _0801B21C
	lsls r0, r0, #2
	ldr r1, _0801B150
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801B130: .4byte gUnk_0848FE84
_0801B134: .4byte gUnk_0848FEA8
_0801B138: .4byte gUnk_0848FEB4
_0801B13C: .4byte gUnk_0848FEC0
_0801B140: .4byte gUnk_0848FED8
_0801B144: .4byte gUnk_0848FECC
_0801B148: .4byte gUnk_0848FB68
_0801B14C: .4byte gUnk_0848FB7C
_0801B150: .4byte _0801B154
_0801B154:
	.4byte _0801B188
_0801B158: .4byte _0801B190
_0801B15C: .4byte _0801B198
_0801B160: .4byte _0801B1A6
_0801B164: .4byte _0801B1B4
_0801B168: .4byte _0801B1BC
_0801B16C: .4byte _0801B1C4
_0801B170: .4byte _0801B1CC
_0801B174: .4byte _0801B1D4
_0801B178: .4byte _0801B1E2
_0801B17C: .4byte _0801B1EA
_0801B180: .4byte _0801B1F2
_0801B184: .4byte _0801B210
_0801B188:
	ldrh r0, [r7, #0x12]
	adds r0, #5
	strh r0, [r7, #0x12]
	b _0801B21C
_0801B190:
	ldrh r0, [r7, #0x24]
	adds r0, #0x1e
	strh r0, [r7, #0x24]
	b _0801B21C
_0801B198:
	mov r1, sp
	movs r2, #0
	movs r3, #0
	movs r0, #6
	strh r0, [r1, #0]
	movs r0, #0x5e
	b _0801B1FE
_0801B1A6:
	mov r1, sp
	movs r2, #0
	movs r3, #0
	movs r0, #5
	strh r0, [r1, #0]
	movs r0, #0x21
	b _0801B1FE
_0801B1B4:
	ldrh r0, [r7, #0x10]
	adds r0, #5
	strh r0, [r7, #0x10]
	b _0801B21C
_0801B1BC:
	ldrh r0, [r7, #0x26]
	adds r0, #0x1e
	strh r0, [r7, #0x26]
	b _0801B21C
_0801B1C4:
	ldrh r0, [r7, #0x16]
	adds r0, #5
	strh r0, [r7, #0x16]
	b _0801B21C
_0801B1CC:
	ldrh r0, [r7, #0x2e]
	adds r0, #0x1e
	strh r0, [r7, #0x2e]
	b _0801B21C
_0801B1D4:
	mov r1, sp
	movs r2, #0
	movs r3, #0
	movs r0, #4
	strh r0, [r1, #0]
	movs r0, #0x95
	b _0801B1FE
_0801B1E2:
	ldrh r0, [r7, #0x2a]
	adds r0, #0x1e
	strh r0, [r7, #0x2a]
	b _0801B21C
_0801B1EA:
	ldrh r0, [r7, #0x2c]
	adds r0, #0x1e
	strh r0, [r7, #0x2c]
	b _0801B21C
_0801B1F2:
	mov r1, sp
	movs r2, #0
	movs r3, #0
	movs r0, #6
	strh r0, [r1, #0]
	movs r0, #0x5f
_0801B1FE:
	strh r0, [r1, #2]
	mov r0, sp
	strb r2, [r0, #8]
	strh r3, [r0, #4]
	strb r2, [r0, #6]
	strb r2, [r0, #7]
	bl sub_0805AB20
	b _0801B21C
_0801B210:
	ldrh r0, [r7, #0x14]
	adds r0, #5
	strh r0, [r7, #0x14]
	ldrh r0, [r7, #0x28]
	adds r0, #0x1e
	strh r0, [r7, #0x28]
_0801B21C:
	movs r0, #0
	ldr r1, [sp, #0x1c]
	strh r0, [r1, #0]
	mov r0, r9
	bl sub_0801E024
	ldr r2, [sp, #0x10]
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r4, sl
	ldrh r2, [r4, #0]
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r1, r0
	ble _0801B23E
	ldr r4, [sp, #0x10]
	strh r2, [r4, #0]
_0801B23E:
	ldr r0, [sp, #0x14]
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, [sp, #0x18]
	ldrh r2, [r3, #0]
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r1, r0
	ble _0801B254
	ldr r0, [sp, #0x14]
	strh r2, [r0, #0]
_0801B254:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0801ACB8
