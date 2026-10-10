	thumb_func_start sub_0807386C
sub_0807386C: @ 0x0807386C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r5, r1, #0
	mov ip, r2
	mov r8, r3
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _080738EC
	adds r6, r1, r0
	movs r4, #0
	ldr r1, _080738F0
	lsls r0, r7, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _080738AE
	movs r3, #1
_0807389A:
	adds r4, #1
	cmp r4, #0xf
	bls _080738A2
	b _08073CCE
_080738A2:
	adds r1, r3, #0
	lsls r1, r4
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne _0807389A
_080738AE:
	cmp r4, #0xf
	bls _080738B4
	b _08073CCE
_080738B4:
	ldr r0, _080738F4
	lsls r3, r7, #2
	adds r0, r3, r0
	ldr r1, [r0, #0]
	lsls r2, r4, #1
	adds r0, r2, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	str r7, [r0, #0]
	str r4, [r0, #4]
	mov r1, ip
	str r1, [r0, #8]
	str r5, [r0, #0xc]
	mov r1, r8
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x18]
	str r1, [r0, #0x10]
	subs r0, r5, #1
	adds r5, r3, #0
	mov r8, r2
	cmp r0, #0x14
	bls _080738E2
	b _08073C6A
_080738E2:
	lsls r0, r0, #2
	ldr r1, _080738F8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080738EC: .4byte gUnk_03003CE0
_080738F0: .4byte gUnk_030063E0
_080738F4: .4byte gUnk_03006380
_080738F8: .4byte _080738FC
_080738FC:
	.4byte _08073950
_08073900: .4byte _0807396C
_08073904: .4byte _08073988
_08073908: .4byte _080739A4
_0807390C: .4byte _080739C0
_08073910: .4byte _080739FA
_08073914: .4byte _08073C04
_08073918: .4byte _08073AD0
_0807391C: .4byte _08073AEC
_08073920: .4byte _08073B08
_08073924: .4byte _08073B24
_08073928: .4byte _08073B40
_0807392C: .4byte _08073B5C
_08073930: .4byte _08073B94
_08073934: .4byte _08073BB0
_08073938: .4byte _08073B78
_0807393C: .4byte _08073BCC
_08073940: .4byte _08073BE8
_08073944: .4byte _08073C20
_08073948: .4byte _08073C3C
_0807394C: .4byte _08073C58
_08073950:
	ldr r0, _08073964
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08073968
	b _08073C68
	.2byte 0x0000
_08073964: .4byte gUnk_030063B0
_08073968: .4byte sub_08069C44
_0807396C:
	ldr r0, _08073980
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08073984
	b _08073C68
	.2byte 0x0000
_08073980: .4byte gUnk_030063B0
_08073984: .4byte sub_0806A19C
_08073988:
	ldr r0, _0807399C
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _080739A0
	b _08073C68
	.2byte 0x0000
_0807399C: .4byte gUnk_030063B0
_080739A0: .4byte sub_0806B3C4
_080739A4:
	ldr r0, _080739B8
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _080739BC
	b _08073C68
	.2byte 0x0000
_080739B8: .4byte gUnk_030063B0
_080739BC: .4byte sub_0806BE24
_080739C0:
	ldr r0, _080739D4
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _080739D8
	b _08073C68
	.2byte 0x0000
_080739D4: .4byte gUnk_030063B0
_080739D8: .4byte sub_0806C568
_080739DC:
	strh r7, [r5, #2]
	movs r0, #6
	strh r0, [r5, #4]
	ldrh r0, [r6, #0x26]
	strh r0, [r5, #6]
	ldrh r1, [r5, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x28
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	strh r1, [r5, #0]
	b _08073AB4
_080739FA:
	bl sub_080020F4
	cmp r7, r0
	bne _08073AC0
	ldr r0, _08073A80
	adds r0, r5, r0
	add r4, r8
	lsls r4, r4, #3
	ldr r0, [r0, #0]
	adds r4, r4, r0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r5, r0, #0
	muls r5, r1, r5
	ldr r0, _08073A84
	adds r5, r5, r0
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	bl sub_0806898C
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, #0xc2
	ldrh r1, [r5, #0]
	subs r1, r1, r0
	strh r1, [r5, #0]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _08073A3E
	movs r0, #0
	strh r0, [r5, #0]
_08073A3E:
	ldr r5, [r6, #0x34]
	ldr r0, _08073A88
	bl sub_0805865C
	movs r4, #0
_08073A48:
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _08073A8C
	ldrh r0, [r5, #4]
	cmp r0, #6
	bne _08073A8C
	ldrh r0, [r5, #2]
	cmp r0, r7
	bne _08073A8C
	ldrh r0, [r5, #6]
	ldrh r3, [r6, #0x26]
	cmp r0, r3
	bhs _08073A7C
	strh r7, [r5, #2]
	ldrh r0, [r6, #0x26]
	strh r0, [r5, #6]
	ldrh r1, [r5, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x28
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	strh r1, [r5, #0]
_08073A7C:
	ldr r2, _08073A84
	b _08073AB4
_08073A80: .4byte gUnk_03006380
_08073A84: .4byte gUnk_03003CE0
_08073A88: .4byte 0x00000165
_08073A8C:
	adds r4, #1
	adds r5, #0x28
	cmp r4, #7
	bls _08073A48
	ldr r2, _08073ACC
	movs r0, #0
	cmp r0, #0
	bne _08073AB4
	ldr r5, [r6, #0x34]
	movs r4, #0
	movs r1, #1
	negs r1, r1
_08073AA4:
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, r1
	beq _080739DC
	adds r4, #1
	adds r5, #0x28
	cmp r4, #7
	bls _08073AA4
_08073AB4:
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r7, r0
	adds r0, r0, r2
	bl sub_0801FD64
_08073AC0:
	adds r0, r7, #0
	movs r1, #6
	bl sub_08074DE8
	b _08073CCE
	.2byte 0x0000
_08073ACC: .4byte gUnk_03003CE0
_08073AD0:
	ldr r0, _08073AE4
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08073AE8
	b _08073C68
	.2byte 0x0000
_08073AE4: .4byte gUnk_030063B0
_08073AE8: .4byte sub_0806CDF0
_08073AEC:
	ldr r0, _08073B00
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08073B04
	b _08073C68
	.2byte 0x0000
_08073B00: .4byte gUnk_030063B0
_08073B04: .4byte sub_0806DB1C
_08073B08:
	ldr r0, _08073B1C
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08073B20
	b _08073C68
	.2byte 0x0000
_08073B1C: .4byte gUnk_030063B0
_08073B20: .4byte sub_0806D4A4
_08073B24:
	ldr r0, _08073B38
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08073B3C
	b _08073C68
	.2byte 0x0000
_08073B38: .4byte gUnk_030063B0
_08073B3C: .4byte sub_0806D7EC
_08073B40:
	ldr r0, _08073B54
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08073B58
	b _08073C68
	.2byte 0x0000
_08073B54: .4byte gUnk_030063B0
_08073B58: .4byte sub_0806A88C
_08073B5C:
	ldr r0, _08073B70
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08073B74
	b _08073C68
	.2byte 0x0000
_08073B70: .4byte gUnk_030063B0
_08073B74: .4byte sub_0806ABC0
_08073B78:
	ldr r0, _08073B8C
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08073B90
	b _08073C68
	.2byte 0x0000
_08073B8C: .4byte gUnk_030063B0
_08073B90: .4byte sub_0806FE1C
_08073B94:
	ldr r0, _08073BA8
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08073BAC
	b _08073C68
	.2byte 0x0000
_08073BA8: .4byte gUnk_030063B0
_08073BAC: .4byte sub_0806DE94
_08073BB0:
	ldr r0, _08073BC4
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08073BC8
	b _08073C68
	.2byte 0x0000
_08073BC4: .4byte gUnk_030063B0
_08073BC8: .4byte sub_0806E7D4
_08073BCC:
	ldr r0, _08073BE0
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08073BE4
	b _08073C68
	.2byte 0x0000
_08073BE0: .4byte gUnk_030063B0
_08073BE4: .4byte sub_0806FF1C
_08073BE8:
	ldr r0, _08073BFC
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08073C00
	b _08073C68
	.2byte 0x0000
_08073BFC: .4byte gUnk_030063B0
_08073C00: .4byte sub_0806F0CC
_08073C04:
	ldr r0, _08073C18
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08073C1C
	b _08073C68
	.2byte 0x0000
_08073C18: .4byte gUnk_030063B0
_08073C1C: .4byte sub_080710DC
_08073C20:
	ldr r0, _08073C34
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08073C38
	b _08073C68
	.2byte 0x0000
_08073C34: .4byte gUnk_030063B0
_08073C38: .4byte sub_08072390
_08073C3C:
	ldr r0, _08073C50
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08073C54
	b _08073C68
	.2byte 0x0000
_08073C50: .4byte gUnk_030063B0
_08073C54: .4byte sub_0807356C
_08073C58:
	ldr r0, _08073CD8
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, _08073CDC
_08073C68:
	str r1, [r0, #0xc]
_08073C6A:
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_08001494
	adds r2, r0, #0
	ldr r0, _08073CD8
	adds r0, r5, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r3, r0, r1
	str r2, [r3, #0x20]
	cmp r2, #0
	beq _08073CCE
	movs r0, #0x34
	str r0, [r3, #8]
	ldr r1, _08073CE0
	adds r0, r2, r1
	str r0, [r3, #0x10]
	ldr r0, _08073CE4
	str r0, [r3, #0x24]
	ldr r1, _08073CE8
	adds r1, r5, r1
	mov r2, r8
	adds r0, r2, r4
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	adds r0, r3, #0
	bl sub_08000274
	ldr r2, _08073CEC
	adds r2, r5, r2
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
	bl sub_080020F4
	cmp r7, r0
	bne _08073CCE
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r7, r0
	ldr r1, _08073CF0
	adds r0, r0, r1
	bl sub_0801FD64
_08073CCE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08073CD8: .4byte gUnk_030063B0
_08073CDC: .4byte sub_08072D5C
_08073CE0: .4byte 0x000007FC
_08073CE4: .4byte sub_0807A120
_08073CE8: .4byte gUnk_03006380
_08073CEC: .4byte gUnk_030063E0
_08073CF0: .4byte gUnk_03003CE0
	thumb_func_end sub_0807386C
