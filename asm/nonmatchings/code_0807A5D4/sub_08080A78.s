	thumb_func_start sub_08080A78
sub_08080A78: @ 0x08080A78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08080AA4
	ldr r0, [r0, #0]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r6, r0, r1
	movs r5, #0
_08080A90:
	movs r7, #8
	ldrh r0, [r6, #0]
	cmp r0, #3
	beq _08080ABA
	cmp r0, #3
	bgt _08080AA8
	cmp r0, #2
	beq _08080AB2
	b _08080AD6
	.2byte 0x0000
_08080AA4: .4byte gUnk_030034E0
_08080AA8:
	cmp r0, #4
	beq _08080AC2
	cmp r0, #5
	beq _08080ACA
	b _08080AD6
_08080AB2:
	adds r0, r6, #0
	bl sub_0805AE34
	b _08080AD0
_08080ABA:
	adds r0, r6, #0
	bl sub_0805D278
	b _08080AD0
_08080AC2:
	adds r0, r6, #0
	bl sub_0805D210
	b _08080AD0
_08080ACA:
	adds r0, r6, #0
	bl sub_0805D2E0
_08080AD0:
	cmp r0, #0
	bne _08080AD6
	movs r7, #0xa
_08080AD6:
	ldr r0, _08080B1C
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	bne _08080B24
	ldr r0, [r1, #0x20]
	cmp r0, r5
	bne _08080B24
	ldr r0, _08080B20
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08080B4A
	adds r0, r5, #0
	movs r1, #5
	bl sub_080B95E4
	adds r4, r0, #0
	lsls r4, r4, #4
	adds r4, #0x58
	adds r0, r5, #0
	movs r1, #5
	bl sub_080B956C
	adds r1, r0, #0
	lsls r1, r1, #4
	adds r1, #0x20
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0805FC80
	b _08080B4A
	.2byte 0x0000
_08080B1C: .4byte gUnk_03006440
_08080B20: .4byte gUnk_03002344
_08080B24:
	adds r0, r5, #0
	movs r1, #5
	bl sub_080B95E4
	adds r4, r0, #0
	lsls r4, r4, #4
	adds r4, #0x58
	adds r0, r5, #0
	movs r1, #5
	bl sub_080B956C
	adds r1, r0, #0
	lsls r1, r1, #4
	adds r1, #0x20
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0805FC80
_08080B4A:
	adds r5, #1
	adds r6, #0x10
	cmp r5, #0x18
	bls _08080A90
	ldr r0, _08080BB4
	ldr r4, [r0, #0]
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	movs r1, #3
	bl sub_080B956C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r2, r1, #3
	mov r8, r2
	lsls r0, r1, #4
	adds r0, #0x70
	adds r6, r4, r0
	adds r5, r1, #0
	cmp r5, r8
	bhs _08080C16
	ldr r4, _08080BB8
_08080B7C:
	movs r7, #8
	adds r0, r6, #0
	bl sub_0805AE34
	cmp r0, #0
	bne _08080B8A
	movs r7, #0xa
_08080B8A:
	ldr r0, _08080BBC
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x1c]
	cmp r1, #1
	bne _08080BC4
	ldr r0, [r0, #0x20]
	cmp r0, r5
	bne _08080BC4
	ldr r0, _08080BC0
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _08080C0C
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r0, #0x38
	movs r2, #2
	ldrsh r1, [r4, r2]
	adds r1, #0x10
	b _08080BE4
	.2byte 0x0000
_08080BB4: .4byte gUnk_030034E0
_08080BB8: .4byte gUnk_084ECBBC
_08080BBC: .4byte gUnk_03006440
_08080BC0: .4byte gUnk_03002344
_08080BC4:
	ldr r0, _08080BF0
	ldr r0, [r0, #0]
	adds r0, #0x68
	ldrh r0, [r0, #0]
	cmp r0, r5
	bne _08080BF8
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r0, #0x38
	movs r2, #2
	ldrsh r1, [r4, r2]
	ldr r2, _08080BF4
	ldr r2, [r2, #0]
	ldr r2, [r2, #0x74]
	subs r2, #0x10
	subs r1, r1, r2
_08080BE4:
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0805FC80
	b _08080C0C
	.2byte 0x0000
_08080BF0: .4byte gUnk_030034E0
_08080BF4: .4byte gUnk_03006440
_08080BF8:
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r0, #0x38
	movs r2, #2
	ldrsh r1, [r4, r2]
	adds r1, #0x10
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0805FC80
_08080C0C:
	adds r4, #4
	adds r5, #1
	adds r6, #0x10
	cmp r5, r8
	blo _08080B7C
_08080C16:
	ldr r4, _08080C5C
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #5
	bne _08080C22
	b _08080DF0
_08080C22:
	ldr r0, _08080C60
	ldr r0, [r0, #0]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r6, r0, r3
	movs r7, #0
	adds r0, r6, #0
	bl sub_0805D210
	cmp r0, #0
	bne _08080C3A
	movs r7, #2
_08080C3A:
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #2
	bne _08080C68
	ldr r0, _08080C64
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08080C78
	movs r0, #0x40
	movs r1, #0x30
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0805FC80
	b _08080C78
_08080C5C: .4byte gUnk_03006440
_08080C60: .4byte gUnk_030034E0
_08080C64: .4byte gUnk_03002344
_08080C68:
	ldr r0, [r1, #0x7c]
	movs r1, #0x30
	subs r1, r1, r0
	movs r0, #0x40
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0805FC80
_08080C78:
	ldr r0, _08080CB4
	ldr r0, [r0, #0]
	movs r4, #0x90
	lsls r4, r4, #1
	adds r6, r0, r4
	movs r7, #0
	adds r0, r6, #0
	bl sub_0805D2E0
	cmp r0, #0
	bne _08080C90
	movs r7, #2
_08080C90:
	ldr r0, _08080CB8
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #3
	bne _08080CC0
	ldr r0, _08080CBC
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08080CD4
	movs r0, #0x3c
	movs r1, #0x60
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0805FC80
	b _08080CD4
_08080CB4: .4byte gUnk_030034E0
_08080CB8: .4byte gUnk_03006440
_08080CBC: .4byte gUnk_03002344
_08080CC0:
	adds r0, r1, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	movs r1, #0x60
	subs r1, r1, r0
	movs r0, #0x3c
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0805FC80
_08080CD4:
	ldr r0, _08080D18
	ldr r0, [r0, #0]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r6, r0, r1
	movs r7, #0
	adds r0, r6, #0
	bl sub_0805D278
	cmp r0, #0
	bne _08080CEC
	movs r7, #2
_08080CEC:
	ldr r0, _08080D1C
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x1c]
	cmp r0, #4
	bne _08080D24
	ldr r0, _08080D20
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08080D38
	adds r0, r2, #0
	adds r0, #0x84
	ldr r0, [r0, #0]
	movs r1, #0x48
	subs r1, r1, r0
	movs r0, #0x40
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0805FC80
	b _08080D38
_08080D18: .4byte gUnk_030034E0
_08080D1C: .4byte gUnk_03006440
_08080D20: .4byte gUnk_03002344
_08080D24:
	adds r0, r2, #0
	adds r0, #0x84
	ldr r0, [r0, #0]
	movs r1, #0x48
	subs r1, r1, r0
	movs r0, #0x40
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0805FC80
_08080D38:
	ldr r0, _08080D6C
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x1c]
	cmp r0, #5
	bne _08080D78
	ldr r0, _08080D70
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08080D94
	adds r0, r2, #0
	adds r0, #0x9c
	ldr r0, [r0, #0]
	movs r1, #0x40
	subs r1, r1, r0
	ldr r0, _08080D74
	ldr r2, [r0, #0]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0xc
	movs r3, #8
	bl sub_0805FC80
	b _08080D94
_08080D6C: .4byte gUnk_03006440
_08080D70: .4byte gUnk_03002344
_08080D74: .4byte gUnk_030034E0
_08080D78:
	adds r0, r2, #0
	adds r0, #0x9c
	ldr r0, [r0, #0]
	movs r1, #0x40
	subs r1, r1, r0
	ldr r0, _08080DC8
	ldr r2, [r0, #0]
	movs r4, #0x98
	lsls r4, r4, #1
	adds r2, r2, r4
	movs r0, #0xc
	movs r3, #8
	bl sub_0805FC80
_08080D94:
	ldr r0, _08080DCC
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x1c]
	cmp r0, #6
	bne _08080DD4
	ldr r0, _08080DD0
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08080DF0
	adds r0, r2, #0
	adds r0, #0x94
	ldr r0, [r0, #0]
	movs r1, #0x60
	subs r1, r1, r0
	ldr r0, _08080DC8
	ldr r2, [r0, #0]
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0x10
	movs r3, #8
	bl sub_0805FC80
	b _08080DF0
_08080DC8: .4byte gUnk_030034E0
_08080DCC: .4byte gUnk_03006440
_08080DD0: .4byte gUnk_03002344
_08080DD4:
	adds r0, r2, #0
	adds r0, #0x94
	ldr r0, [r0, #0]
	movs r1, #0x60
	subs r1, r1, r0
	ldr r0, _08080E78
	ldr r2, [r0, #0]
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0x10
	movs r3, #8
	bl sub_0805FC80
_08080DF0:
	ldr r0, _08080E7C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #2
	bne _08080ED2
	ldr r4, _08080E78
	ldr r0, [r4, #0]
	adds r0, #0x54
	ldrh r0, [r0, #0]
	movs r1, #3
	bl sub_080B956C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r0, r1, #3
	mov r8, r0
	adds r5, r1, #0
	cmp r5, r8
	bhs _08080ED2
	mov sl, r4
	mov r9, sp
_08080E1E:
	mov r1, sl
	ldr r0, [r1, #0]
	lsls r4, r5, #1
	adds r0, #0x56
	adds r1, r0, r4
	ldrh r0, [r1, #0]
	adds r7, r5, #1
	cmp r0, #0
	beq _08080ECC
	subs r0, #1
	bl sub_0805D548
	adds r1, r0, #0
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _08080E80
	lsls r0, r1, #4
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r0, r0, r2
	mov r3, sl
	ldr r1, [r3, #0]
	adds r6, r1, r0
	movs r2, #0
	movs r3, #0
	ldr r0, _08080E78
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_08080E5C:
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _08080E6C
	ldrh r0, [r6, #2]
	ldrh r4, [r1, #2]
	cmp r0, r4
	bne _08080E6C
	adds r2, #1
_08080E6C:
	adds r1, #0x10
	adds r3, #1
	cmp r3, #0x18
	bls _08080E5C
	b _08080E98
	.2byte 0x0000
_08080E78: .4byte gUnk_030034E0
_08080E7C: .4byte gUnk_03006440
_08080E80:
	movs r2, #0
	mov r6, sp
	movs r0, #1
	mov r1, r9
	strh r0, [r1, #0]
	mov r3, sl
	ldr r0, [r3, #0]
	adds r0, #0x56
	adds r0, r0, r4
	ldrh r0, [r0, #0]
	subs r0, #1
	strh r0, [r1, #2]
_08080E98:
	mov r0, r8
	subs r4, r0, r7
	lsls r4, r4, #2
	ldr r1, _08080F00
	adds r5, r4, r1
	movs r3, #0
	ldrsh r0, [r5, r3]
	adds r0, #0xb8
	ldr r1, _08080F04
	adds r4, r4, r1
	movs r3, #0
	ldrsh r1, [r4, r3]
	adds r1, #0x18
	movs r3, #0
	bl sub_0805FAC0
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r0, #0xb8
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r1, #0x10
	adds r2, r6, #0
	movs r3, #0
	bl sub_0805FC80
_08080ECC:
	adds r5, r7, #0
	cmp r5, r8
	blo _08080E1E
_08080ED2:
	ldr r1, _08080F08
	ldr r2, [r1, #0]
	ldr r0, [r2, #0]
	cmp r0, #3
	bne _08080FB2
	movs r5, #0
	mov r8, r1
_08080EE0:
	lsls r0, r5, #4
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r0, r3
	mov r4, r8
	ldr r1, [r4, #0]
	adds r6, r1, r0
	movs r7, #8
	ldrh r0, [r6, #0]
	cmp r0, #3
	beq _08080F1E
	cmp r0, #3
	bgt _08080F0C
	cmp r0, #2
	beq _08080F16
	b _08080F3A
_08080F00: .4byte gUnk_084ECBB0
_08080F04: .4byte gUnk_084ECBB2
_08080F08: .4byte gUnk_03006440
_08080F0C:
	cmp r0, #4
	beq _08080F26
	cmp r0, #5
	beq _08080F2E
	b _08080F3A
_08080F16:
	adds r0, r6, #0
	bl sub_0805AE34
	b _08080F34
_08080F1E:
	adds r0, r6, #0
	bl sub_0805D278
	b _08080F34
_08080F26:
	adds r0, r6, #0
	bl sub_0805D210
	b _08080F34
_08080F2E:
	adds r0, r6, #0
	bl sub_0805D2E0
_08080F34:
	cmp r0, #0
	bne _08080F3A
	movs r7, #0xa
_08080F3A:
	mov r0, r8
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0xb
	bne _08080F84
	ldr r0, [r1, #0x20]
	cmp r0, r5
	bne _08080F84
	ldr r0, _08080F80
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08080FAA
	adds r0, r5, #0
	movs r1, #3
	bl sub_080B95E4
	adds r4, r0, #0
	lsls r4, r4, #4
	adds r4, #0xb8
	adds r0, r5, #0
	movs r1, #3
	bl sub_080B956C
	adds r1, r0, #0
	lsls r1, r1, #4
	adds r1, #0xb8
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0805FC80
	b _08080FAA
	.2byte 0x0000
_08080F80: .4byte gUnk_03002344
_08080F84:
	adds r0, r5, #0
	movs r1, #3
	bl sub_080B95E4
	adds r4, r0, #0
	lsls r4, r4, #4
	adds r4, #0xb8
	adds r0, r5, #0
	movs r1, #3
	bl sub_080B956C
	adds r1, r0, #0
	lsls r1, r1, #4
	adds r1, #0x20
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0805FC80
_08080FAA:
	adds r5, #1
	cmp r5, #0xb
	bls _08080EE0
	b _080811CA
_08080FB2:
	cmp r0, #4
	bne _08081084
	ldr r1, [r2, #0x44]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r6, r2, r0
	movs r5, #0
_08080FC8:
	movs r7, #8
	ldrh r0, [r6, #0]
	cmp r0, #3
	beq _08080FEC
	cmp r0, #3
	bgt _08080FDA
	cmp r0, #2
	beq _08080FE4
	b _08081008
_08080FDA:
	cmp r0, #4
	beq _08080FF4
	cmp r0, #5
	beq _08080FFC
	b _08081008
_08080FE4:
	adds r0, r6, #0
	bl sub_0805AE34
	b _08081002
_08080FEC:
	adds r0, r6, #0
	bl sub_0805D278
	b _08081002
_08080FF4:
	adds r0, r6, #0
	bl sub_0805D210
	b _08081002
_08080FFC:
	adds r0, r6, #0
	bl sub_0805D2E0
_08081002:
	cmp r0, #0
	bne _08081008
	movs r7, #0xa
_08081008:
	ldr r0, _0808104C
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0xd
	bne _08081054
	ldr r0, [r1, #0x20]
	cmp r0, r5
	bne _08081054
	ldr r0, _08081050
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808107A
	adds r0, r5, #0
	movs r1, #3
	bl sub_080B95E4
	adds r4, r0, #0
	lsls r4, r4, #4
	adds r4, #0xb8
	adds r0, r5, #0
	movs r1, #3
	bl sub_080B956C
	adds r1, r0, #0
	lsls r1, r1, #4
	adds r1, #0x20
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0805FC80
	b _0808107A
_0808104C: .4byte gUnk_03006440
_08081050: .4byte gUnk_03002344
_08081054:
	adds r0, r5, #0
	movs r1, #3
	bl sub_080B95E4
	adds r4, r0, #0
	lsls r4, r4, #4
	adds r4, #0xb8
	adds r0, r5, #0
	movs r1, #3
	bl sub_080B956C
	adds r1, r0, #0
	lsls r1, r1, #4
	adds r1, #0x20
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0805FC80
_0808107A:
	adds r5, #1
	adds r6, #0x10
	cmp r5, #0xe
	bls _08080FC8
	b _080811CA
_08081084:
	cmp r0, #6
	beq _0808108A
	b _080811CA
_0808108A:
	movs r3, #0x82
	lsls r3, r3, #1
	adds r6, r2, r3
	movs r5, #0
_08081092:
	movs r7, #8
	ldrh r0, [r6, #0]
	cmp r0, #3
	beq _080810B6
	cmp r0, #3
	bgt _080810A4
	cmp r0, #2
	beq _080810AE
	b _080810D2
_080810A4:
	cmp r0, #4
	beq _080810BE
	cmp r0, #5
	beq _080810C6
	b _080810D2
_080810AE:
	adds r0, r6, #0
	bl sub_0805AE34
	b _080810CC
_080810B6:
	adds r0, r6, #0
	bl sub_0805D278
	b _080810CC
_080810BE:
	adds r0, r6, #0
	bl sub_0805D210
	b _080810CC
_080810C6:
	adds r0, r6, #0
	bl sub_0805D2E0
_080810CC:
	cmp r0, #0
	bne _080810D2
	movs r7, #0xa
_080810D2:
	ldr r0, _08081108
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x10
	bne _08081110
	ldr r0, [r1, #0x20]
	cmp r0, r5
	bne _08081110
	ldr r0, _0808110C
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08081126
	adds r0, r5, #0
	movs r1, #3
	bl sub_080B95E4
	lsls r0, r0, #4
	adds r0, #0xb8
	movs r1, #0x30
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0805FC80
	b _08081126
	.2byte 0x0000
_08081108: .4byte gUnk_03006440
_0808110C: .4byte gUnk_03002344
_08081110:
	adds r0, r5, #0
	movs r1, #3
	bl sub_080B95E4
	lsls r0, r0, #4
	adds r0, #0xb8
	movs r1, #0x30
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0805FC80
_08081126:
	adds r5, #1
	adds r6, #0x10
	cmp r5, #2
	bls _08081092
	movs r7, #8
	ldr r0, _0808114C
	ldr r0, [r0, #0]
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r6, r0, r4
	ldrh r0, [r6, #0]
	cmp r0, #3
	beq _08081162
	cmp r0, #3
	bgt _08081150
	cmp r0, #2
	beq _0808115A
	b _0808117E
	.2byte 0x0000
_0808114C: .4byte gUnk_03006440
_08081150:
	cmp r0, #4
	beq _0808116A
	cmp r0, #5
	beq _08081172
	b _0808117E
_0808115A:
	adds r0, r6, #0
	bl sub_0805AE34
	b _08081178
_08081162:
	adds r0, r6, #0
	bl sub_0805D278
	b _08081178
_0808116A:
	adds r0, r6, #0
	bl sub_0805D210
	b _08081178
_08081172:
	adds r0, r6, #0
	bl sub_0805D2E0
_08081178:
	cmp r0, #0
	bne _0808117E
	movs r7, #0xa
_0808117E:
	ldr r0, _080811A4
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x1c]
	cmp r0, #0x11
	bne _080811AC
	ldr r0, _080811A8
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080811CA
	ldr r1, [r2, #0x54]
	adds r1, #0x60
	movs r0, #0xc8
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0805FC80
	b _080811CA
_080811A4: .4byte gUnk_03006440
_080811A8: .4byte gUnk_03002344
_080811AC:
	ldr r1, _080811DC
	ldr r0, [r2, #0x5c]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	asrs r1, r1, #5
	ldr r0, [r2, #0x54]
	adds r1, r1, r0
	adds r1, #0x60
	movs r0, #0xc8
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0805FC80
_080811CA:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080811DC: .4byte gUnk_080B9704
	thumb_func_end sub_08080A78
