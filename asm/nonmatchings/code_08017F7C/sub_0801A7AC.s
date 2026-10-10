	thumb_func_start sub_0801A7AC
sub_0801A7AC: @ 0x0801A7AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _0801A7F4
	movs r0, #1
	strh r0, [r1, #0]
	ldr r0, _0801A7F8
	mov r9, r0
	ldr r7, _0801A7FC
_0801A7C2:
	movs r0, #0x64
	bl sub_080003F4
	ldr r0, _0801A7F4
	ldrh r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _0801A874
	ldr r0, _0801A7FC
	adds r0, #0x40
	movs r2, #0
	movs r1, #0xff
	strh r1, [r0, #0]
	mov r1, r9
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0801A804
	ldr r4, _0801A800
	strh r2, [r4, #0]
	b _0801A80A
	.2byte 0x0000
_0801A7F4: .4byte gUnk_03000028
_0801A7F8: .4byte gUnk_03000026
_0801A7FC: .4byte gUnk_03001250
_0801A800: .4byte gUnk_03001294
_0801A804:
	movs r0, #0x10
	ldr r1, _0801A864
	strh r0, [r1, #0]
_0801A80A:
	bl sub_080003F0
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	movs r2, #1
	bl sub_080009F8
	ldr r4, _0801A868
	ldr r5, _0801A86C
	ldr r6, _0801A864
	ldr r2, _0801A870
	mov sl, r2
_0801A824:
	ldrh r0, [r4, #0]
	lsls r0, r0, #4
	ldrh r1, [r5, #0]
	bl sub_080B9394
	strh r0, [r6, #0]
	mov r3, r9
	ldrh r0, [r3, #0]
	ldrh r1, [r4, #0]
	adds r2, r0, r1
	strh r2, [r4, #0]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	ble _0801A84C
	ldrh r1, [r5, #0]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _0801A908
_0801A84C:
	cmp r3, #0
	bge _0801A85C
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	ands r2, r0
	cmp r2, #0
	bne _0801A908
_0801A85C:
	bl sub_080003F0
	b _0801A824
	.2byte 0x0000
_0801A864: .4byte gUnk_03001294
_0801A868: .4byte gUnk_03000022
_0801A86C: .4byte gUnk_03000020
_0801A870: .4byte gUnk_03000026
_0801A874:
	movs r3, #0x10
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	beq _0801A920
	mov r4, r9
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0801A898
	ldr r3, _0801A894
	strh r2, [r3, #0]
	b _0801A89C
	.2byte 0x0000
_0801A894: .4byte gUnk_03001294
_0801A898:
	ldr r4, _0801A8F4
	strh r3, [r4, #0]
_0801A89C:
	ldr r5, _0801A8F8
	ldr r4, _0801A8FC
	ldr r6, _0801A900
	movs r0, #0x44
	adds r0, r0, r5
	mov r8, r0
	ldr r1, _0801A904
	mov sl, r1
_0801A8AC:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xff
	strh r0, [r1, #0]
	ldrh r0, [r4, #0]
	lsls r0, r0, #4
	ldrh r1, [r6, #0]
	bl sub_080B9394
	mov r2, r8
	strh r0, [r2, #0]
	mov r3, r9
	ldrh r0, [r3, #0]
	ldrh r1, [r4, #0]
	adds r2, r0, r1
	strh r2, [r4, #0]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	ble _0801A8DE
	ldrh r1, [r6, #0]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _0801A908
_0801A8DE:
	cmp r3, #0
	bge _0801A8EE
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	ands r2, r0
	cmp r2, #0
	bne _0801A908
_0801A8EE:
	bl sub_080003F0
	b _0801A8AC
_0801A8F4: .4byte gUnk_03001294
_0801A8F8: .4byte gUnk_03001250
_0801A8FC: .4byte gUnk_03000022
_0801A900: .4byte gUnk_03000020
_0801A904: .4byte gUnk_03000026
_0801A908:
	mov r4, sl
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0801A99E
	movs r3, #0
	ldr r2, _0801A91C
	strh r3, [r2, #0]
	b _0801A99E
	.2byte 0x0000
_0801A91C: .4byte gUnk_03000022
_0801A920:
	ldr r0, _0801A964
	movs r1, #2
	strh r1, [r0, #0]
	ldr r5, _0801A968
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _0801A978
	ldr r0, _0801A96C
	strh r0, [r7, #0x3a]
	strh r4, [r7, #0x38]
	movs r0, #0xf0
	strh r0, [r7, #0x30]
	movs r0, #0xa0
	strh r0, [r7, #0x34]
	bl sub_080003F0
	ldr r0, _0801A970
	strh r4, [r0, #0]
	bl sub_08000B38
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	movs r2, #1
	bl sub_080009C0
	ldr r1, _0801A974
	movs r0, #1
	strh r0, [r1, #0]
	strh r4, [r5, #0]
	bl sub_080003F0
	b _0801A99E
_0801A964: .4byte gUnk_03000020
_0801A968: .4byte gUnk_03000026
_0801A96C: .4byte 0x00003F3F
_0801A970: .4byte gUnk_03001F40
_0801A974: .4byte gUnk_03000022
_0801A978:
	strh r4, [r7, #0x3a]
	ldr r0, _0801A9B0
	strh r0, [r7, #0x38]
	strh r4, [r7, #0x30]
	strh r4, [r7, #0x34]
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	movs r2, #1
	bl sub_080009F8
	ldr r0, _0801A9B4
	strh r4, [r0, #0]
	movs r3, #1
	negs r3, r3
	adds r0, r3, #0
	strh r0, [r5, #0]
	bl sub_080003F0
_0801A99E:
	ldr r0, _0801A9B8
	ldrh r1, [r0, #0]
	movs r4, #0x17
	negs r4, r4
	adds r2, r4, #0
	ands r1, r2
	strh r1, [r0, #0]
	b _0801A7C2
	.2byte 0x0000
_0801A9B0: .4byte 0x00003F3F
_0801A9B4: .4byte gUnk_03000022
_0801A9B8: .4byte gUnk_03000028
	thumb_func_end sub_0801A7AC
