	thumb_func_start sub_0808381C
sub_0808381C: @ 0x0808381C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x7c
	adds r4, r0, #0
	ldr r1, _08083860
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #4
	movs r2, #0
	bl sub_08065158
	cmp r4, #9
	beq _0808384E
	cmp r4, #3
	beq _0808384E
	cmp r4, #4
	bne _08083864
_0808384E:
	ldr r1, [sp, #0x10]
	movs r0, #0x1e
	movs r2, #1
	bl sub_08000AF0
	add r1, sp, #4
	movs r0, #0xe
	strb r0, [r1, #0x1c]
	b _08083874
_08083860: .4byte gUnk_084ECBDC
_08083864:
	ldr r1, [sp, #0x10]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x1e
	movs r2, #1
	bl sub_08000AF0
_08083874:
	ldr r1, _080838E8
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r4, r0, #0
	ldr r0, _080838EC
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x28]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x28]
	movs r6, #0x40
	movs r7, #0
	movs r1, #0
	mov ip, r1
	movs r5, #0
	ldrb r0, [r4, #2]
	add r1, sp, #0x38
	mov r9, r1
	cmp r0, #0xfd
	beq _08083918
	mov r8, r9
	ldr r0, _080838F0
	mov sl, r0
_080838AE:
	adds r0, r5, #2
	adds r0, r4, r0
	ldrb r0, [r0, #0]
	cmp r0, #0xfc
	bne _080838F4
	adds r3, r7, #0
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	add r3, r8
	mov r1, sl
	ldr r2, [r1, #0]
	mov r1, ip
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	adds r1, r2, r1
	ldrb r0, [r1, #0]
	strb r0, [r3, #0]
	add r2, ip
	ldrb r0, [r2, #0]
	cmp r0, #0xfd
	bne _0808390E
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _0808390E
	.2byte 0x0000
_080838E8: .4byte gUnk_084ECC04
_080838EC: .4byte gUnk_03006440
_080838F0: .4byte gUnk_030034E0
_080838F4:
	adds r2, r7, #0
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	add r2, r8
	adds r1, r5, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, #2
	adds r1, r4, r1
	ldrb r0, [r1, #0]
	strb r0, [r2, #0]
_0808390E:
	adds r0, r5, #2
	adds r0, r4, r0
	ldrb r0, [r0, #0]
	cmp r0, #0xfd
	bne _080838AE
_08083918:
	mov r1, r9
	adds r0, r1, r7
	movs r1, #0xfd
	strb r1, [r0, #0]
	lsls r0, r6, #0x10
	cmp r0, #0
	ble _08083968
_08083926:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08083930
	b _08083AC2
_08083930:
	bl sub_080021A8
	adds r2, r0, #0
	cmp r2, #0
	beq _0808393C
	b _08083AC2
_0808393C:
	cmp r6, #1
	bne _08083942
	movs r6, #0
_08083942:
	lsls r0, r6, #0x10
	asrs r4, r0, #0x10
	asrs r0, r0, #0x11
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	adds r1, #0xf0
	str r2, [sp, #0]
	add r0, sp, #4
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
	bl sub_080003F0
	cmp r4, #0
	bgt _08083926
_08083968:
	movs r5, #0
	mov r6, r9
	add r4, sp, #0x58
	b _080839C4
_08083970:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0808397A
	b _08083AC2
_0808397A:
	bl sub_080021A8
	adds r3, r0, #0
	cmp r3, #0
	beq _08083986
	b _08083AC2
_08083986:
	adds r1, r4, r5
	adds r0, r6, r5
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r1, r5, #1
	adds r2, r4, r1
	movs r0, #0xfd
	strb r0, [r2, #0]
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	str r3, [sp, #0]
	add r0, sp, #4
	movs r1, #0xf0
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
	adds r0, r6, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0801A3D0
	bl sub_080003F0
_080839C4:
	adds r0, r6, #0
	bl sub_0801A638
	cmp r5, r0
	bls _08083970
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r5, #0
	ldr r0, _08083A10
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08083A70
	add r1, sp, #0x58
	mov r0, ip
	adds r6, r1, r0
	adds r0, #1
	adds r7, r1, r0
_080839EE:
	bl sub_0800CDF8
	cmp r0, #0
	bne _08083AC2
	bl sub_080021A8
	cmp r0, #0
	bne _08083AC2
	adds r1, r5, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r1, #0x1d
	bhi _08083A14
	movs r1, #1
	str r1, [sp, #0x78]
	b _08083A1C
_08083A10: .4byte gUnk_03001324
_08083A14:
	cmp r5, #0x1d
	bls _08083A1C
	movs r0, #0
	str r0, [sp, #0x78]
_08083A1C:
	cmp r5, #0x28
	bls _08083A22
	movs r5, #0
_08083A22:
	ldr r1, [sp, #0x78]
	cmp r1, #0
	beq _08083A32
	movs r0, #0xa0
	strb r0, [r6, #0]
	movs r0, #0xfd
	strb r0, [r7, #0]
	b _08083A36
_08083A32:
	movs r0, #0xfd
	strb r0, [r6, #0]
_08083A36:
	add r4, sp, #0x58
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #0xf0
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
	mov r0, r9
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0801A3D0
	bl sub_080003F0
	ldr r0, _08083AE0
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080839EE
_08083A70:
	movs r6, #0
	movs r0, #0xf
	bl sub_0805865C
_08083A78:
	bl sub_0800CDF8
	cmp r0, #0
	bne _08083AC2
	bl sub_080021A8
	adds r2, r0, #0
	cmp r2, #0
	bne _08083AC2
	cmp r6, #0x9f
	bne _08083A90
	movs r6, #0xa0
_08083A90:
	lsls r4, r6, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	subs r0, #0xa0
	asrs r0, r0, #1
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	adds r1, #0xf0
	str r2, [sp, #0]
	add r0, sp, #4
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
	bl sub_080003F0
	cmp r4, #0x9f
	ble _08083A78
	bl sub_080003F0
	bl sub_080003F0
_08083AC2:
	ldr r0, _08083AE4
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x28]
	movs r1, #3
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x28]
	add sp, #0x7c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08083AE0: .4byte gUnk_03001324
_08083AE4: .4byte gUnk_03006440
	thumb_func_end sub_0808381C
