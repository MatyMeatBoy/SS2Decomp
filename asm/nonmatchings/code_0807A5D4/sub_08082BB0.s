	thumb_func_start sub_08082BB0
sub_08082BB0: @ 0x08082BB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	adds r7, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08082BFC
	adds r1, r1, r0
	str r1, [sp, #0x44]
	movs r0, #0xf8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	ldr r1, _08082C00
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1, #0]
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xc]
	cmp r7, #8
	beq _08082CA0
	cmp r7, #8
	bhi _08082C04
	cmp r7, #7
	beq _08082C0A
	b _08082CEC
_08082BFC: .4byte gUnk_03003CE0
_08082C00: .4byte gUnk_03001250
_08082C04:
	cmp r7, #9
	beq _08082CB8
	b _08082CEC
_08082C0A:
	ldr r0, _08082C2C
	ldr r1, [r0, #0]
	movs r0, #4
	str r0, [r1, #0]
	ldr r0, _08082C30
	ldr r0, [r0, #0]
	adds r0, #0x6a
	ldrh r0, [r0, #0]
	subs r0, #1
	cmp r0, #4
	bhi _08082C8E
	lsls r0, r0, #2
	ldr r1, _08082C34
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08082C2C: .4byte gUnk_03006440
_08082C30: .4byte gUnk_030034E0
_08082C34: .4byte _08082C38
_08082C38:
	.4byte _08082C4C
_08082C3C: .4byte _08082C54
_08082C40: .4byte _08082C5C
_08082C44: .4byte _08082C64
_08082C48: .4byte _08082C7C
_08082C4C:
	ldr r0, _08082C50
	b _08082C66
_08082C50: .4byte 0x4000001B
_08082C54:
	ldr r0, _08082C58
	b _08082C66
_08082C58: .4byte 0x4000001C
_08082C5C:
	ldr r0, _08082C60
	b _08082C66
_08082C60: .4byte 0x4000001E
_08082C64:
	ldr r0, _08082C78
_08082C66:
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r1, #0xf
	str r1, [sp, #0]
	movs r1, #0x1d
	movs r3, #0
	bl sub_0800B650
	b _08082C8E
_08082C78: .4byte 0x40000021
_08082C7C:
	ldr r0, _08082C9C
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r1, #0xf
	str r1, [sp, #0]
	movs r1, #0x1d
	movs r3, #0
	bl sub_0800B650
_08082C8E:
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r4, #0xf
	str r4, [sp, #0]
	movs r0, #0x2b
	b _08082CCA
	.2byte 0x0000
_08082C9C: .4byte 0x40000025
_08082CA0:
	ldr r0, _08082CB4
	ldr r1, [r0, #0]
	movs r0, #5
	str r0, [r1, #0]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r4, #0xf
	str r4, [sp, #0]
	movs r0, #0x1a
	b _08082CCA
_08082CB4: .4byte gUnk_03006440
_08082CB8:
	ldr r0, _08082CE4
	ldr r1, [r0, #0]
	movs r0, #6
	str r0, [r1, #0]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r4, #0xf
	str r4, [sp, #0]
	movs r0, #0x2a
_08082CCA:
	movs r1, #0x1a
	adds r2, r5, #0
	movs r3, #0
	bl sub_0800B7DC
	ldr r0, _08082CE8
	str r4, [sp, #0]
	movs r1, #0x1b
	adds r2, r5, #0
	movs r3, #0
	bl sub_0800B7DC
	b _08082D2C
_08082CE4: .4byte gUnk_03006440
_08082CE8: .4byte 0x40000005
_08082CEC:
	ldr r0, _08082D70
	ldr r1, [r0, #0]
	movs r0, #3
	str r0, [r1, #0]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r4, #0xf
	str r4, [sp, #0]
	movs r0, #0x11
	movs r1, #0x1a
	adds r2, r5, #0
	movs r3, #0
	bl sub_0800B7DC
	ldr r0, _08082D74
	str r4, [sp, #0]
	movs r1, #0x1b
	adds r2, r5, #0
	movs r3, #0
	bl sub_0800B7DC
	ldr r0, _08082D78
	bl sub_08007290
	adds r1, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0xe
	movs r2, #1
	bl sub_08000AF0
_08082D2C:
	ldr r2, _08082D7C
	ldr r1, _08082D80
	ldr r0, _08082D84
	ldr r0, [r0, #0]
	movs r3, #0xa5
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	movs r4, #0xfd
	lsls r4, r4, #1
	adds r1, r2, r4
	strh r0, [r1, #0]
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r0, #0xe
	str r0, [sp, #0]
	movs r0, #0x10
	movs r1, #0x1f
	movs r3, #0
	bl sub_0800B650
	ldr r0, _08082D88
	ldr r0, [r0, #0]
	cmp r0, #4
	bhi _08082E28
	lsls r0, r0, #2
	ldr r1, _08082D8C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08082D70: .4byte gUnk_03006440
_08082D74: .4byte 0x40000005
_08082D78: .4byte 0x00070003
_08082D7C: .4byte gUnk_03001F40
_08082D80: .4byte gUnk_084EBD38
_08082D84: .4byte gUnk_03005CF4
_08082D88: .4byte gUnk_03003470
_08082D8C: .4byte _08082D90
_08082D90:
	.4byte _08082DA4
_08082D94: .4byte _08082DBC
_08082D98: .4byte _08082DD4
_08082D9C: .4byte _08082DEC
_08082DA0: .4byte _08082E10
_08082DA4:
	ldr r0, _08082DB4
	ldr r0, [r0, #0]
	movs r5, #0xb7
	lsls r5, r5, #3
	adds r0, r0, r5
	ldr r1, _08082DB8
	b _08082DF8
	.2byte 0x0000
_08082DB4: .4byte gUnk_03006440
_08082DB8: .4byte 0x00050006
_08082DBC:
	ldr r0, _08082DCC
	ldr r0, [r0, #0]
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, _08082DD0
	b _08082DF8
	.2byte 0x0000
_08082DCC: .4byte gUnk_03006440
_08082DD0: .4byte 0x00050007
_08082DD4:
	ldr r0, _08082DE4
	ldr r0, [r0, #0]
	movs r2, #0xb7
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r1, _08082DE8
	b _08082DF8
	.2byte 0x0000
_08082DE4: .4byte gUnk_03006440
_08082DE8: .4byte 0x00050008
_08082DEC:
	ldr r0, _08082E08
	ldr r0, [r0, #0]
	movs r3, #0xb7
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r1, _08082E0C
_08082DF8:
	movs r3, #1
	negs r3, r3
	movs r2, #0
	str r2, [sp, #0]
	bl sub_08065158
	b _08082E28
	.2byte 0x0000
_08082E08: .4byte gUnk_03006440
_08082E0C: .4byte 0x00050009
_08082E10:
	ldr r0, _08082E70
	ldr r0, [r0, #0]
	movs r4, #0xb7
	lsls r4, r4, #3
	adds r0, r0, r4
	ldr r1, _08082E74
	movs r3, #1
	negs r3, r3
	movs r2, #0
	str r2, [sp, #0]
	bl sub_08065158
_08082E28:
	ldr r4, _08082E70
	ldr r0, [r4, #0]
	ldr r5, _08082E78
	adds r0, r0, r5
	ldr r1, _08082E7C
	movs r3, #1
	negs r3, r3
	movs r2, #0
	str r2, [sp, #0]
	bl sub_08065158
	ldr r0, [r4, #0]
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r0, #0]
	movs r0, #0x1e
	movs r2, #1
	bl sub_08000AF0
	ldr r0, [r4, #0]
	movs r2, #0xc1
	lsls r2, r2, #3
	adds r0, r0, r2
	movs r1, #0xe
	strb r1, [r0, #0]
	cmp r7, #7
	bne _08082E80
	movs r0, #0xf8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	b _08082E8C
	.2byte 0x0000
_08082E70: .4byte gUnk_03006440
_08082E74: .4byte 0x0005000A
_08082E78: .4byte 0x000005EC
_08082E7C: .4byte 0x0005007A
_08082E80:
	movs r0, #0xe8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
_08082E8C:
	ldr r1, _08082F00
	ldr r0, [sp, #0x40]
	ands r0, r1
	ldr r1, _08082F04
	orrs r0, r1
	str r0, [sp, #0x40]
	add r4, sp, #0x40
	movs r0, #1
	adds r1, r4, #0
	bl sub_08000AA8
	ldr r0, _08082F08
	strh r0, [r4, #0]
	movs r0, #2
	adds r1, r4, #0
	bl sub_08000AA8
	ldr r0, _08082F0C
	strh r0, [r4, #0]
	movs r0, #3
	adds r1, r4, #0
	bl sub_08000AA8
	movs r0, #0
	bl sub_08060DB0
	movs r0, #0x88
	bl sub_08001108
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x4c]
	ldr r0, _08082F10
	bl sub_0800115C
	str r0, [sp, #0x48]
	bl sub_08000D8C
	movs r0, #8
	movs r1, #2
	bl sub_08000C08
	bl sub_0800CB9C
	cmp r0, #0
	beq _08082F14
	bl sub_0800CF48
	cmp r0, #0
	bne _08082F1A
	bl sub_0800D154
	cmp r0, #0
	bne _08082F1A
	movs r0, #0xd7
	bl sub_08058688
	b _08082F1A
_08082F00: .4byte 0xFFFF0000
_08082F04: .4byte 0x00001D03
_08082F08: .4byte 0x00009A01
_08082F0C: .4byte 0x00001F03
_08082F10: .4byte sub_0808528C
_08082F14:
	movs r0, #0xd7
	bl sub_08058688
_08082F1A:
	ldr r5, _08082FF0
	ldr r3, [r5, #0]
	movs r4, #0
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #0x18]
	movs r0, #0x16
	str r0, [r3, #0x1c]
	str r4, [r3, #0x20]
	movs r0, #1
	str r0, [r3, #0x24]
	str r4, [r3, #0x28]
	adds r0, r3, #0
	adds r0, #0xd8
	str r4, [r0, #0]
	adds r0, #4
	str r4, [r0, #0]
	adds r0, #4
	movs r2, #0x58
	str r2, [r0, #0]
	adds r0, #4
	movs r1, #0x20
	str r1, [r0, #0]
	adds r0, #4
	str r2, [r0, #0]
	adds r0, #4
	str r1, [r0, #0]
	adds r0, #4
	str r4, [r0, #0]
	adds r0, #4
	strh r4, [r0, #0]
	str r4, [r3, #0x2c]
	bl sub_0805D3D4
	ldr r1, [r5, #0]
	str r0, [r1, #0x34]
	bl sub_0805D404
	ldr r2, [r5, #0]
	str r0, [r2, #0x3c]
	str r4, [r2, #0x38]
	str r4, [r2, #0x40]
	str r4, [r2, #0x44]
	ldr r0, _08082FF4
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x6a
	ldrh r0, [r0, #0]
	str r0, [r2, #0x48]
	str r4, [r2, #0x54]
	str r4, [r2, #0x5c]
	movs r3, #0
	str r3, [sp, #0x50]
	mov r9, r3
	adds r3, r2, #0
	adds r3, #0x6a
	movs r0, #0x64
	strh r0, [r3, #0]
	adds r1, #0x68
	ldrh r1, [r1, #0]
	mov sl, r1
	adds r0, r2, #0
	adds r0, #0x4c
	mov r4, r9
	strh r4, [r0, #0]
	adds r0, #2
	strh r4, [r0, #0]
	adds r0, #2
	strh r4, [r0, #0]
	adds r0, #2
	strh r4, [r0, #0]
	adds r1, r2, #0
	adds r1, #0x68
	movs r0, #5
	strh r0, [r1, #0]
	movs r0, #3
	str r0, [r2, #0x6c]
	movs r6, #0
	subs r5, r7, #1
	str r5, [sp, #0x54]
_08082FBA:
	ldr r0, _08082FF0
	ldr r4, [r0, #0]
	lsls r2, r6, #3
	adds r0, r4, #0
	adds r0, #0x74
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0, #0]
	adds r4, #0x78
	adds r4, r4, r2
	adds r0, r6, #0
	movs r1, #5
	bl sub_080B95E4
	str r0, [r4, #0]
	adds r6, #1
	cmp r6, #5
	bls _08082FBA
	ldr r0, _08082FF8
	ldr r0, [r0, #0]
	cmp r0, #4
	bhi _08083084
	lsls r0, r0, #2
	ldr r1, _08082FFC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08082FF0: .4byte gUnk_03006440
_08082FF4: .4byte gUnk_030034E0
_08082FF8: .4byte gUnk_03003470
_08082FFC: .4byte _08083000
_08083000:
	.4byte _08083014
_08083004: .4byte _08083028
_08083008: .4byte _0808303C
_0808300C: .4byte _08083050
_08083010: .4byte _08083070
_08083014:
	ldr r0, _08083020
	ldr r0, [r0, #0]
	adds r0, #0xa4
	ldr r1, _08083024
	b _08083058
	.2byte 0x0000
_08083020: .4byte gUnk_03006440
_08083024: .4byte 0x00050002
_08083028:
	ldr r0, _08083034
	ldr r0, [r0, #0]
	adds r0, #0xa4
	ldr r1, _08083038
	b _08083058
	.2byte 0x0000
_08083034: .4byte gUnk_03006440
_08083038: .4byte 0x0005015B
_0808303C:
	ldr r0, _08083048
	ldr r0, [r0, #0]
	adds r0, #0xa4
	ldr r1, _0808304C
	b _08083058
	.2byte 0x0000
_08083048: .4byte gUnk_03006440
_0808304C: .4byte 0x0005015C
_08083050:
	ldr r0, _08083068
	ldr r0, [r0, #0]
	adds r0, #0xa4
	ldr r1, _0808306C
_08083058:
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r2, #0
	str r2, [sp, #0]
	bl sub_08065158
	b _08083084
	.2byte 0x0000
_08083068: .4byte gUnk_03006440
_0808306C: .4byte 0x0005015D
_08083070:
	ldr r0, _08083098
	ldr r0, [r0, #0]
	adds r0, #0xa4
	ldr r1, _0808309C
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r2, #0
	str r2, [sp, #0]
	bl sub_08065158
_08083084:
	ldr r0, [sp, #0x54]
	cmp r0, #8
	bls _0808308C
	b _08083204
_0808308C:
	lsls r0, r0, #2
	ldr r1, _080830A0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08083098: .4byte gUnk_03006440
_0808309C: .4byte 0x0005015E
_080830A0: .4byte _080830A4
_080830A4:
	.4byte _080830C8
_080830A8: .4byte _080830F0
_080830AC: .4byte _08083108
_080830B0: .4byte _08083120
_080830B4: .4byte _08083138
_080830B8: .4byte _08083160
_080830BC: .4byte _080831B0
_080830C0: .4byte _08083204
_080830C4: .4byte _080831D8
_080830C8:
	bl sub_0800CE30
	cmp r0, #0
	beq _080830E0
	ldr r0, _080830DC
	ldr r0, [r0, #0]
	movs r1, #0xb5
	lsls r1, r1, #4
	adds r0, r0, r1
	b _08083182
_080830DC: .4byte gUnk_030034E0
_080830E0:
	ldr r0, _080830EC
	ldr r0, [r0, #0]
	movs r2, #0x91
	lsls r2, r2, #4
	adds r0, r0, r2
	b _08083182
_080830EC: .4byte gUnk_030034E0
_080830F0:
	ldr r4, _08083104
	ldr r1, [r4, #0]
	movs r3, #0x82
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #2
	bl sub_0805CB04
	ldr r3, [r4, #0]
	b _0808318A
_08083104: .4byte gUnk_03006440
_08083108:
	ldr r4, _0808311C
	ldr r1, [r4, #0]
	movs r5, #0x82
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r0, #3
	bl sub_0805CB04
	ldr r3, [r4, #0]
	b _0808318A
_0808311C: .4byte gUnk_03006440
_08083120:
	ldr r4, _08083134
	ldr r1, [r4, #0]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #4
	bl sub_0805CB04
	ldr r3, [r4, #0]
	b _0808318A
_08083134: .4byte gUnk_03006440
_08083138:
	bl sub_0800CE30
	cmp r0, #0
	beq _08083150
	ldr r0, _0808314C
	ldr r0, [r0, #0]
	movs r1, #0x9d
	lsls r1, r1, #4
	adds r0, r0, r1
	b _08083182
_0808314C: .4byte gUnk_030034E0
_08083150:
	ldr r0, _0808315C
	ldr r0, [r0, #0]
	movs r2, #0xf2
	lsls r2, r2, #3
	adds r0, r0, r2
	b _08083182
_0808315C: .4byte gUnk_030034E0
_08083160:
	bl sub_0800CE30
	cmp r0, #0
	beq _08083178
	ldr r0, _08083174
	ldr r0, [r0, #0]
	movs r3, #0xa9
	lsls r3, r3, #4
	adds r0, r0, r3
	b _08083182
_08083174: .4byte gUnk_030034E0
_08083178:
	ldr r0, _080831A8
	ldr r0, [r0, #0]
	movs r4, #0x85
	lsls r4, r4, #4
	adds r0, r0, r4
_08083182:
	bl sub_080852CC
	ldr r0, _080831AC
	ldr r3, [r0, #0]
_0808318A:
	movs r0, #0xb
	str r0, [r3, #0x18]
	adds r0, r3, #0
	adds r0, #0xe0
	movs r2, #0xb8
	str r2, [r0, #0]
	adds r0, #4
	movs r1, #0x20
	str r1, [r0, #0]
	adds r0, #4
	str r2, [r0, #0]
	adds r0, #4
	str r1, [r0, #0]
	b _08083204
	.2byte 0x0000
_080831A8: .4byte gUnk_030034E0
_080831AC: .4byte gUnk_03006440
_080831B0:
	ldr r2, _080831D0
	ldr r0, _080831D4
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x44]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #4
	movs r5, #0xb8
	lsls r5, r5, #2
	adds r0, r0, r5
	ldr r1, [r2, #0]
	adds r0, r1, r0
	bl sub_080852CC
	b _08083204
	.2byte 0x0000
_080831D0: .4byte gUnk_030034E0
_080831D4: .4byte gUnk_03006440
_080831D8:
	movs r6, #0
	ldr r4, _0808321C
	movs r3, #0x82
	lsls r3, r3, #1
	movs r2, #0
_080831E2:
	ldr r0, [r4, #0]
	lsls r1, r6, #4
	adds r0, r0, r1
	adds r0, r0, r3
	strh r2, [r0, #0]
	adds r6, #1
	cmp r6, #2
	bls _080831E2
	ldr r0, _0808321C
	ldr r0, [r0, #0]
	lsls r1, r6, #4
	adds r0, r0, r1
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #0]
_08083204:
	bl sub_0808536C
	adds r0, r7, #0
	bl sub_080853DC
	bl sub_080003F0
	movs r0, #6
	bl sub_0801AB50
	b _08083584
	.2byte 0x0000
_0808321C: .4byte gUnk_03006440
_08083220:
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x28]
	movs r4, #2
	ands r0, r4
	cmp r0, #0
	bne _08083230
	bl sub_0807C29C
_08083230:
	ldr r2, [r5, #0]
	ldr r1, [r2, #0x28]
	movs r3, #1
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08083240
	b _08083410
_08083240:
	ands r4, r1
	cmp r4, #0
	beq _08083248
	b _08083394
_08083248:
	ldr r0, _08083284
	strh r4, [r0, #0xa]
	ldr r0, [r2, #0x1c]
	cmp r0, #0x16
	beq _08083254
	b _0808334C
_08083254:
	ldr r1, [r2, #0x18]
	adds r0, r1, #0
	subs r0, #0x11
	cmp r0, #2
	bhi _08083260
	b _08083394
_08083260:
	ldr r0, [r2, #0]
	cmp r0, #5
	bne _0808326A
	cmp r1, #7
	bne _08083288
_0808326A:
	movs r3, #0xb7
	lsls r3, r3, #3
	adds r0, r2, r3
	adds r1, r2, #0
	adds r1, #0xe0
	ldr r1, [r1, #0]
	adds r2, #0xe4
	ldr r2, [r2, #0]
	str r4, [sp, #0]
	movs r3, #0xb
	bl sub_08065230
	b _080832F0
_08083284: .4byte gUnk_03001250
_08083288:
	adds r0, r2, #0
	adds r0, #0xf0
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0]
	cmp r1, #5
	bgt _080832D2
	cmp r1, #2
	blt _080832D2
	ldrb r3, [r0, #8]
	cmp r3, #0
	beq _080832B8
	movs r5, #0xb7
	lsls r5, r5, #3
	adds r0, r2, r5
	adds r1, r2, #0
	adds r1, #0xe0
	ldr r1, [r1, #0]
	adds r2, #0xe4
	ldr r2, [r2, #0]
	str r4, [sp, #0]
	movs r3, #9
	bl sub_08065264
	b _080832F0
_080832B8:
	movs r7, #0xb7
	lsls r7, r7, #3
	adds r0, r2, r7
	adds r1, r2, #0
	adds r1, #0xe0
	ldr r1, [r1, #0]
	adds r2, #0xe4
	ldr r2, [r2, #0]
	str r3, [sp, #0]
	movs r3, #9
	bl sub_08065230
	b _080832F0
_080832D2:
	ldr r0, _08083314
	ldr r2, [r0, #0]
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r0, r2, r1
	adds r1, r2, #0
	adds r1, #0xe0
	ldr r1, [r1, #0]
	adds r2, #0xe4
	ldr r2, [r2, #0]
	movs r3, #0
	str r3, [sp, #0]
	movs r3, #9
	bl sub_08065230
_080832F0:
	ldr r0, _08083314
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x18]
	cmp r0, #7
	beq _08083318
	subs r0, #0xe
	cmp r0, #1
	bls _08083394
	adds r0, r2, #0
	adds r0, #0xf0
	ldr r2, [r0, #0]
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r0, #0xf
	movs r1, #0x12
	bl sub_0805FFBC
	b _08083394
_08083314: .4byte gUnk_03006440
_08083318:
	ldr r1, _08083348
	ldr r0, [r2, #4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r4, r0, #2
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0801A3D0
	b _08083394
_08083348: .4byte gUnk_084ECB98
_0808334C:
	movs r4, #0xb7
	lsls r4, r4, #3
	adds r0, r2, r4
	adds r1, r2, #0
	adds r1, #0xe0
	ldr r1, [r1, #0]
	adds r2, #0xe4
	ldr r2, [r2, #0]
	subs r2, #4
	str r3, [sp, #0]
	movs r3, #0xb
	bl sub_08065230
	ldr r2, [r5, #0]
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r0, [r0, #0]
	adds r1, r2, #0
	adds r1, #0xe4
	ldr r1, [r1, #0]
	subs r1, #4
	adds r2, #0xf4
	movs r3, #8
	bl sub_0805FC80
	ldr r2, [r5, #0]
	ldr r0, [r2, #0x18]
	cmp r0, #0x11
	beq _08083394
	adds r2, #0xf4
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r0, #0xf
	movs r1, #0x12
	bl sub_0805FFBC
_08083394:
	ldr r4, _08083408
	ldr r2, [r4, #0]
	adds r0, r2, #0
	adds r0, #0x6a
	ldrh r1, [r0, #0]
	ldr r0, [r2, #4]
	cmp r1, r0
	bne _080833B0
	ldr r0, _0808340C
	ldr r0, [r0, #0]
	adds r0, #0x68
	ldrh r0, [r0, #0]
	cmp sl, r0
	beq _080833E8
_080833B0:
	ldr r0, [r2, #0x18]
	cmp r0, #0xe
	beq _080833E8
	adds r0, r2, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r1, #1
	strh r2, [r0, #0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #5
	bls _080833E8
	ldr r0, [sp, #0x44]
	bl sub_080811E0
	ldr r1, [r4, #0]
	adds r2, r1, #0
	adds r2, #0x68
	movs r0, #0
	strh r0, [r2, #0]
	ldr r0, [r1, #4]
	adds r1, #0x6a
	strh r0, [r1, #0]
	ldr r0, _0808340C
	ldr r0, [r0, #0]
	adds r0, #0x68
	ldrh r0, [r0, #0]
	mov sl, r0
_080833E8:
	bl sub_08080A78
	ldr r4, _08083408
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _08083462
	movs r0, #2
	movs r1, #0x12
	bl sub_0801A664
	ldr r1, [r4, #0]
	movs r0, #0
	str r0, [r1, #0x2c]
	b _08083462
	.2byte 0x0000
_08083408: .4byte gUnk_03006440
_0808340C: .4byte gUnk_030034E0
_08083410:
	adds r1, r2, #0
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	str r3, [r2, #0x2c]
	movs r0, #2
	movs r1, #0x12
	bl sub_0801A664
	ldr r1, _08083440
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0xa]
	ldr r2, [r5, #0]
	ldr r0, [r2, #0x18]
	cmp r0, #9
	bne _08083448
	ldr r5, _08083444
	adds r0, r2, r5
	ldr r0, [r0, #0]
	bl sub_08082960
	b _08083462
	.2byte 0x0000
_08083440: .4byte gUnk_03001250
_08083444: .4byte 0x000005B4
_08083448:
	ldr r0, [r2, #0x1c]
	cmp r0, #0x16
	bne _0808345A
	adds r0, r2, #0
	adds r0, #0xf0
	ldr r0, [r0, #0]
	bl sub_080815F4
	b _08083462
_0808345A:
	adds r0, r2, #0
	adds r0, #0xf4
	bl sub_080815F4
_08083462:
	ldr r0, _08083494
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	cmp r0, #4
	bne _080834F0
	ldr r0, [r1, #0x44]
	ldr r7, [sp, #0x50]
	cmp r7, r0
	bne _0808347A
	ldr r0, [r1, #0x48]
	cmp r9, r0
	beq _080834F0
_0808347A:
	ldr r0, _08083498
	ldr r0, [r0, #0]
	adds r0, #0x6a
	ldrh r0, [r0, #0]
	subs r0, #1
	cmp r0, #4
	bhi _080834D6
	lsls r0, r0, #2
	ldr r1, _0808349C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08083494: .4byte gUnk_03006440
_08083498: .4byte gUnk_030034E0
_0808349C: .4byte _080834A0
_080834A0:
	.4byte _080834B4
_080834A4: .4byte _080834BC
_080834A8: .4byte _080834C4
_080834AC: .4byte _080834CC
_080834B0: .4byte _080834D4
_080834B4:
	ldr r6, _080834B8
	b _080834D6
_080834B8: .4byte 0x4000001B
_080834BC:
	ldr r6, _080834C0
	b _080834D6
_080834C0: .4byte 0x4000001C
_080834C4:
	ldr r6, _080834C8
	b _080834D6
_080834C8: .4byte 0x4000001E
_080834CC:
	ldr r6, _080834D0
	b _080834D6
_080834D0: .4byte 0x40000021
_080834D4:
	ldr r6, _08083568
_080834D6:
	ldr r4, _0808356C
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x44]
	adds r6, r6, r0
	adds r0, r6, #0
	movs r1, #0x1d
	bl sub_0800B974
	ldr r0, [r4, #0]
	ldr r1, [r0, #0x44]
	str r1, [sp, #0x50]
	ldr r0, [r0, #0x48]
	mov r9, r0
_080834F0:
	ldr r7, _0808356C
	ldr r4, [r7, #0]
	ldr r1, [r4, #0x28]
	movs r5, #1
	ands r5, r1
	cmp r5, #0
	bne _08083580
	ldr r0, [r4, #0x18]
	cmp r0, #0x13
	beq _08083580
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0808357C
	mov r2, r8
	lsrs r2, r2, #1
	mov r8, r2
	ldr r3, _08083570
	adds r0, r4, r3
	mov r1, r8
	adds r1, #0xd0
	ldr r3, _08083574
	ldr r2, [r4, #0x5c]
	lsls r2, r2, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r2, [r2, r3]
	asrs r2, r2, #5
	ldr r3, [r4, #0x54]
	adds r2, r2, r3
	adds r2, #0x60
	str r5, [sp, #0]
	movs r3, #2
	bl sub_08065230
	ldr r0, [r7, #0]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _08083542
	cmp r0, #0x11
	bne _08083580
_08083542:
	cmp r0, #0x12
	beq _08083580
	ldr r0, _08083578
	bl sub_08007290
	adds r4, r0, #2
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0801A3D0
	b _08083580
_08083568: .4byte 0x40000025
_0808356C: .4byte gUnk_03006440
_08083570: .4byte 0x000005EC
_08083574: .4byte gUnk_080B9704
_08083578: .4byte 0x00140185
_0808357C:
	movs r4, #0x40
	mov r8, r4
_08083580:
	bl sub_080003F0
_08083584:
	ldr r5, _080835AC
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _08083598
	bl sub_080021A8
	cmp r0, #0
	bne _08083598
	b _08083220
_08083598:
	bl sub_0806617C
	movs r0, #0
	bl sub_080586B4
	movs r0, #6
	bl sub_0801ABE8
	b _080835B4
	.2byte 0x0000
_080835AC: .4byte gUnk_03006440
_080835B0:
	bl sub_080003F0
_080835B4:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080835B0
	bl sub_08000E48
	ldr r0, [sp, #0x48]
	bl sub_0800115C
	ldr r0, [sp, #0x4c]
	bl sub_08001108
	movs r0, #0
	bl sub_080653D4
	movs r0, #0x10
	movs r1, #8
	bl sub_08000C08
	movs r0, #2
	movs r1, #0x12
	bl sub_0801A664
	ldr r5, [sp, #0x54]
	cmp r5, #8
	bls _080835EA
	b _080837F4
_080835EA:
	lsls r0, r5, #2
	ldr r1, _080835F4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080835F4: .4byte _080835F8
_080835F8:
	.4byte _0808361C
_080835FC: .4byte _080837F4
_08083600: .4byte _080837F4
_08083604: .4byte _080837F4
_08083608: .4byte _08083674
_0808360C: .4byte _080836CC
_08083610: .4byte _08083724
_08083614: .4byte _080837F4
_08083618: .4byte _08083774
_0808361C:
	bl sub_0800CE30
	cmp r0, #0
	beq _08083634
	ldr r0, _08083630
	ldr r0, [r0, #0]
	movs r7, #0xb5
	lsls r7, r7, #4
	adds r0, r0, r7
	b _0808363E
_08083630: .4byte gUnk_030034E0
_08083634:
	ldr r0, _0808366C
	ldr r0, [r0, #0]
	movs r1, #0x91
	lsls r1, r1, #4
	adds r0, r0, r1
_0808363E:
	movs r6, #9
	ldr r2, _08083670
	mov r8, r2
	movs r3, #0x82
	lsls r3, r3, #1
	adds r2, r0, #0
	adds r2, #0x90
_0808364C:
	lsls r1, r6, #4
	mov r4, r8
	ldr r0, [r4, #0]
	adds r0, r0, r1
	adds r1, r2, #0
	adds r0, r0, r3
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	adds r2, #0x10
	adds r6, #1
	cmp r6, #0xb
	bls _0808364C
	b _080837F4
	.2byte 0x0000
_0808366C: .4byte gUnk_030034E0
_08083670: .4byte gUnk_03006440
_08083674:
	bl sub_0800CE30
	cmp r0, #0
	beq _0808368C
	ldr r0, _08083688
	ldr r0, [r0, #0]
	movs r5, #0x9d
	lsls r5, r5, #4
	adds r0, r0, r5
	b _08083696
_08083688: .4byte gUnk_030034E0
_0808368C:
	ldr r0, _080836C4
	ldr r0, [r0, #0]
	movs r7, #0xf2
	lsls r7, r7, #3
	adds r0, r0, r7
_08083696:
	movs r6, #9
	ldr r1, _080836C8
	mov r8, r1
	movs r3, #0x82
	lsls r3, r3, #1
	adds r2, r0, #0
	adds r2, #0x90
_080836A4:
	lsls r1, r6, #4
	mov r4, r8
	ldr r0, [r4, #0]
	adds r0, r0, r1
	adds r1, r2, #0
	adds r0, r0, r3
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	adds r2, #0x10
	adds r6, #1
	cmp r6, #0xb
	bls _080836A4
	b _080837F4
	.2byte 0x0000
_080836C4: .4byte gUnk_030034E0
_080836C8: .4byte gUnk_03006440
_080836CC:
	bl sub_0800CE30
	cmp r0, #0
	beq _080836E4
	ldr r0, _080836E0
	ldr r0, [r0, #0]
	movs r5, #0xa9
	lsls r5, r5, #4
	adds r0, r0, r5
	b _080836EE
_080836E0: .4byte gUnk_030034E0
_080836E4:
	ldr r0, _0808371C
	ldr r0, [r0, #0]
	movs r7, #0x85
	lsls r7, r7, #4
	adds r0, r0, r7
_080836EE:
	movs r6, #9
	ldr r1, _08083720
	mov r8, r1
	movs r3, #0x82
	lsls r3, r3, #1
	adds r2, r0, #0
	adds r2, #0x90
_080836FC:
	lsls r1, r6, #4
	mov r4, r8
	ldr r0, [r4, #0]
	adds r0, r0, r1
	adds r1, r2, #0
	adds r0, r0, r3
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	adds r2, #0x10
	adds r6, #1
	cmp r6, #0xb
	bls _080836FC
	b _080837F4
	.2byte 0x0000
_0808371C: .4byte gUnk_030034E0
_08083720: .4byte gUnk_03006440
_08083724:
	ldr r2, _0808376C
	ldr r0, [r2, #0]
	adds r0, #0x6a
	ldrh r0, [r0, #0]
	lsls r1, r0, #4
	movs r6, #0
	cmp r1, r0
	beq _080837F4
	adds r3, r2, #0
	movs r5, #0xb8
	lsls r5, r5, #2
	mov r8, r5
	ldr r4, _08083770
_0808373E:
	ldr r1, [r3, #0]
	lsls r2, r6, #4
	adds r1, r1, r2
	ldr r0, [r4, #0]
	adds r0, r0, r2
	add r1, r8
	movs r7, #0x82
	lsls r7, r7, #1
	adds r0, r0, r7
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	adds r6, #1
	ldr r0, [r3, #0]
	adds r0, #0x6a
	ldrh r1, [r0, #0]
	lsls r0, r1, #4
	subs r0, r0, r1
	cmp r6, r0
	blo _0808373E
	b _080837F4
	.2byte 0x0000
_0808376C: .4byte gUnk_030034E0
_08083770: .4byte gUnk_03006440
_08083774:
	movs r6, #0
	ldr r0, _08083810
	mov r9, r0
	ldr r7, _08083814
	movs r1, #0xa6
	lsls r1, r1, #1
	mov r8, r1
	movs r2, #0x90
	adds r2, r2, r7
	mov sl, r2
	movs r5, #0x82
	lsls r5, r5, #1
_0808378C:
	mov r3, r9
	ldr r1, [r3, #0]
	lsls r0, r6, #4
	adds r0, r1, r0
	movs r4, #0x82
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080837D6
	adds r0, r1, r5
	bl sub_0805AB20
	cmp r0, #0
	bne _080837D6
	bl sub_080020F4
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r1, r7, #0
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r4, [r0, #0]
	bl sub_080020F4
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	add r0, sl
	ldr r1, [r0, #0]
	mov r3, r9
	ldr r2, [r3, #0]
	adds r2, r2, r5
	adds r0, r4, #0
	bl sub_08066490
_080837D6:
	adds r5, #0x10
	adds r6, #1
	cmp r6, #2
	bls _0808378C
	ldr r0, _08083810
	ldr r0, [r0, #0]
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r1, r0, r4
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _080837F4
	adds r0, r1, #0
	bl sub_0805AB20
_080837F4:
	bl sub_08085398
	ldr r0, _08083818
	bl sub_08000420
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08083810: .4byte gUnk_03006440
_08083814: .4byte gUnk_03003CE0
_08083818: .4byte 0x11201100
	thumb_func_end sub_08082BB0
