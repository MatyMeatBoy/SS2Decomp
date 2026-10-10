	thumb_func_start sub_0801B58C
sub_0801B58C: @ 0x0801B58C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x10
	cmp r0, #8
	bls _0801B5A0
	b _0801B6EC
_0801B5A0:
	lsls r0, r0, #2
	ldr r1, _0801B5AC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0801B5AC: .4byte _0801B5B0
_0801B5B0:
	.4byte _0801B5D4
_0801B5B4: .4byte _0801B6B6
_0801B5B8: .4byte _0801B62C
_0801B5BC: .4byte _0801B60E
_0801B5C0: .4byte _0801B66A
_0801B5C4: .4byte _0801B64C
_0801B5C8: .4byte _0801B6B6
_0801B5CC: .4byte _0801B698
_0801B5D0: .4byte _0801B6B6
_0801B5D4:
	adds r0, r4, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #2
	beq _0801B5EE
	cmp r0, #2
	bgt _0801B5E8
	cmp r0, #1
	beq _0801B6C0
	b _0801B6EC
_0801B5E8:
	cmp r0, #3
	beq _0801B5FE
	b _0801B6EC
_0801B5EE:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0801E0AC
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #1
	b _0801B6CE
_0801B5FE:
	adds r0, r5, #0
	movs r1, #2
	bl sub_0801E0AC
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #2
	b _0801B6CE
_0801B60E:
	adds r0, r4, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #2
	beq _0801B6C0
	cmp r0, #4
	bne _0801B6EC
	adds r0, r5, #0
	movs r1, #1
	bl sub_0801E0AC
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #1
	b _0801B6CE
_0801B62C:
	adds r0, r4, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #3
	beq _0801B63C
	cmp r0, #7
	bne _0801B6EC
	b _0801B6C0
_0801B63C:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0801E0AC
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #1
	b _0801B6CE
_0801B64C:
	adds r0, r4, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #6
	beq _0801B6C0
	cmp r0, #8
	bne _0801B6EC
	adds r0, r5, #0
	movs r1, #1
	bl sub_0801E0AC
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #1
	b _0801B6CE
_0801B66A:
	adds r0, r4, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #4
	bne _0801B6BC
	adds r0, r5, #0
	movs r1, #1
	bl sub_0801E0AC
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #1
	bl sub_0801E0AC
	adds r5, r0, #0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0xd
	adds r4, #0x64
	muls r0, r4, r0
	movs r1, #0x64
	b _0801B6E2
_0801B698:
	adds r0, r4, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq _0801B6C0
	cmp r0, #8
	bne _0801B6EC
	adds r0, r5, #0
	movs r1, #1
	bl sub_0801E0AC
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #1
	b _0801B6CE
_0801B6B6:
	adds r0, r4, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
_0801B6BC:
	cmp r0, #5
	bne _0801B6EC
_0801B6C0:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0801E0AC
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0
_0801B6CE:
	bl sub_0801E0AC
	adds r5, r0, #0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r4, #0xa
	muls r0, r4, r0
	movs r1, #0xa
_0801B6E2:
	bl sub_080B9394
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r6, r5, #0x10
_0801B6EC:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_0801B58C
