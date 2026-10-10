	thumb_func_start sub_080811E0
sub_080811E0: @ 0x080811E0
	push {r4, r5, r6, lr}
	sub sp, #0x54
	adds r5, r0, #0
	ldr r0, _0808121C
	ldr r2, [r0, #0]
	ldr r1, [r2, #0x1c]
	adds r6, r0, #0
	cmp r1, #0x16
	bne _08081270
	adds r0, r2, #0
	adds r0, #0xf0
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	cmp r0, #1
	beq _08081224
	cmp r0, #1
	blt _08081258
	cmp r0, #5
	bgt _08081258
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _080812A0
	add r4, sp, #0x24
	ldr r0, _08081220
	ldr r0, [r0, #0]
	adds r0, #0x30
	str r0, [sp, #0]
	adds r0, r5, #0
	b _080812AE
	.2byte 0x0000
_0808121C: .4byte gUnk_03006440
_08081220: .4byte gUnk_030034E0
_08081224:
	add r4, sp, #0x24
	ldr r0, _08081254
	ldr r0, [r0, #0]
	adds r0, #0x30
	str r0, [sp, #0]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #4
	adds r3, r4, #0
	bl sub_0801BA74
	ldr r0, [r6, #0]
	adds r0, #0xf0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #2]
	cmp r0, #9
	beq _08081302
	cmp r0, #9
	ble _080812E0
	cmp r0, #0xa
	beq _0808130E
	cmp r0, #0xb
	bne _0808133E
	b _0808131A
_08081254: .4byte gUnk_030034E0
_08081258:
	ldr r0, [r6, #0]
	adds r0, #0xf0
	ldr r1, [r0, #0]
	add r4, sp, #0x24
	ldr r0, _0808126C
	ldr r0, [r0, #0]
	adds r0, #0x30
	str r0, [sp, #0]
	adds r0, r5, #0
	b _080812AE
_0808126C: .4byte gUnk_030034E0
_08081270:
	adds r1, r2, #0
	adds r1, #0xf4
	ldrh r0, [r1, #0]
	cmp r0, #1
	beq _080812BC
	cmp r0, #1
	blt _08081326
	cmp r0, #5
	bgt _08081326
	adds r0, r2, #0
	adds r0, #0xfc
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _080812A0
	add r4, sp, #0x24
	ldr r0, _0808129C
	ldr r0, [r0, #0]
	adds r0, #0x30
	str r0, [sp, #0]
	adds r0, r5, #0
	b _080812AE
	.2byte 0x0000
_0808129C: .4byte gUnk_030034E0
_080812A0:
	add r4, sp, #0x24
	ldr r0, _080812B8
	ldr r0, [r0, #0]
	adds r0, #0x30
	str r0, [sp, #0]
	adds r0, r5, #0
	movs r1, #0
_080812AE:
	add r2, sp, #4
	adds r3, r4, #0
	bl sub_0801BA74
	b _0808133E
_080812B8: .4byte gUnk_030034E0
_080812BC:
	add r4, sp, #0x24
	ldr r0, _080812E8
	ldr r0, [r0, #0]
	adds r0, #0x30
	str r0, [sp, #0]
	adds r0, r5, #0
	movs r1, #0
	add r2, sp, #4
	adds r3, r4, #0
	bl sub_0801BA74
	ldr r0, [r6, #0]
	adds r0, #0xf6
	ldrh r0, [r0, #0]
	cmp r0, #9
	beq _08081302
	cmp r0, #9
	bgt _080812EC
_080812E0:
	cmp r0, #8
	beq _080812F6
	b _0808133E
	.2byte 0x0000
_080812E8: .4byte gUnk_030034E0
_080812EC:
	cmp r0, #0xa
	beq _0808130E
	cmp r0, #0xb
	beq _0808131A
	b _0808133E
_080812F6:
	add r1, sp, #4
	adds r0, r1, #0
	ldrh r0, [r0, #0]
	adds r0, #1
	strh r0, [r1, #0]
	b _0808133E
_08081302:
	add r1, sp, #4
	adds r0, r1, #0
	ldrh r0, [r0, #2]
	adds r0, #1
	strh r0, [r1, #2]
	b _0808133E
_0808130E:
	add r1, sp, #4
	adds r0, r1, #0
	ldrh r0, [r0, #6]
	adds r0, #1
	strh r0, [r1, #6]
	b _0808133E
_0808131A:
	add r1, sp, #4
	adds r0, r1, #0
	ldrh r0, [r0, #4]
	adds r0, #1
	strh r0, [r1, #4]
	b _0808133E
_08081326:
	ldr r1, [r6, #0]
	adds r1, #0xf4
	add r4, sp, #0x24
	ldr r0, _08081514
	ldr r0, [r0, #0]
	adds r0, #0x30
	str r0, [sp, #0]
	adds r0, r5, #0
	add r2, sp, #4
	adds r3, r4, #0
	bl sub_0801BA74
_0808133E:
	adds r0, r5, #0
	adds r0, #0x58
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r3, #2
	cmp r1, r0
	bgt _08081358
	movs r3, #0
	cmp r1, r0
	bge _08081358
	movs r3, #1
_08081358:
	movs r0, #0
	ldrsh r2, [r4, r0]
	movs r0, #6
	movs r1, #0xe
	bl sub_0805FB7C
	adds r1, r5, #0
	adds r1, #0x5a
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r3, #2
	cmp r0, r1
	bgt _08081380
	movs r3, #0
	cmp r0, r1
	bge _08081380
	movs r3, #1
_08081380:
	movs r0, #2
	ldrsh r2, [r4, r0]
	movs r0, #6
	movs r1, #0xf
	bl sub_0805FB7C
	adds r0, r5, #0
	adds r0, #0x7c
	movs r2, #0x24
	ldrsh r1, [r4, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r3, #2
	cmp r1, r0
	bgt _080813A6
	movs r3, #0
	cmp r1, r0
	bge _080813A6
	movs r3, #1
_080813A6:
	movs r0, #0x24
	ldrsh r2, [r4, r0]
	movs r0, #0x16
	movs r1, #0xe
	bl sub_0805FB7C
	adds r0, r5, #0
	adds r0, #0x7e
	movs r2, #0x26
	ldrsh r1, [r4, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r3, #2
	cmp r1, r0
	bgt _080813CC
	movs r3, #0
	cmp r1, r0
	bge _080813CC
	movs r3, #1
_080813CC:
	movs r0, #0x26
	ldrsh r2, [r4, r0]
	movs r0, #0x16
	movs r1, #0xf
	bl sub_0805FB7C
	adds r0, r5, #0
	adds r0, #0x80
	movs r2, #0x28
	ldrsh r1, [r4, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r3, #2
	cmp r1, r0
	bgt _080813F2
	movs r3, #0
	cmp r1, r0
	bge _080813F2
	movs r3, #1
_080813F2:
	movs r0, #0x28
	ldrsh r2, [r4, r0]
	movs r0, #0x16
	movs r1, #0x10
	bl sub_0805FB7C
	adds r0, r5, #0
	adds r0, #0x82
	movs r2, #0x2a
	ldrsh r1, [r4, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r3, #2
	cmp r1, r0
	bgt _08081418
	movs r3, #0
	cmp r1, r0
	bge _08081418
	movs r3, #1
_08081418:
	movs r0, #0x2a
	ldrsh r2, [r4, r0]
	movs r0, #0x1d
	movs r1, #0xe
	bl sub_0805FB7C
	adds r0, r5, #0
	adds r0, #0x84
	movs r2, #0x2c
	ldrsh r1, [r4, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r3, #2
	cmp r1, r0
	bgt _0808143E
	movs r3, #0
	cmp r1, r0
	bge _0808143E
	movs r3, #1
_0808143E:
	movs r0, #0x2c
	ldrsh r2, [r4, r0]
	movs r0, #0x1d
	movs r1, #0xf
	bl sub_0805FB7C
	adds r0, r5, #0
	adds r0, #0x86
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r3, #2
	cmp r1, r0
	bgt _08081464
	movs r3, #0
	cmp r1, r0
	bge _08081464
	movs r3, #1
_08081464:
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	movs r0, #0x1d
	movs r1, #0x10
	bl sub_0805FB7C
	add r0, sp, #4
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0x38
	ldrsh r0, [r5, r2]
	movs r3, #2
	cmp r1, r0
	bgt _08081488
	movs r3, #0
	cmp r1, r0
	bge _08081488
	movs r3, #1
_08081488:
	add r0, sp, #4
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r0, #0xf
	movs r1, #0xe
	bl sub_0805FB7C
	add r0, sp, #4
	movs r2, #6
	ldrsh r1, [r0, r2]
	movs r2, #0x3e
	ldrsh r0, [r5, r2]
	movs r3, #2
	cmp r1, r0
	bgt _080814AE
	movs r3, #0
	cmp r1, r0
	bge _080814AE
	movs r3, #1
_080814AE:
	add r0, sp, #4
	movs r1, #6
	ldrsh r2, [r0, r1]
	movs r0, #6
	movs r1, #0x10
	bl sub_0805FB7C
	add r0, sp, #4
	movs r2, #4
	ldrsh r1, [r0, r2]
	movs r2, #0x3c
	ldrsh r0, [r5, r2]
	movs r3, #2
	cmp r1, r0
	bgt _080814D4
	movs r3, #0
	cmp r1, r0
	bge _080814D4
	movs r3, #1
_080814D4:
	add r0, sp, #4
	movs r1, #4
	ldrsh r2, [r0, r1]
	movs r0, #0xf
	movs r1, #0x10
	bl sub_0805FB7C
	add r0, sp, #4
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r2, #0x3a
	ldrsh r0, [r5, r2]
	movs r3, #2
	cmp r1, r0
	bgt _080814FC
	movs r3, #0
	cmp r1, r0
	bge _080814FC
	movs r3, #1
_080814FC:
	add r0, sp, #4
	movs r1, #2
	ldrsh r2, [r0, r1]
	movs r0, #0xf
	movs r1, #0xf
	bl sub_0805FB7C
	add sp, #0x54
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08081514: .4byte gUnk_030034E0
	thumb_func_end sub_080811E0
