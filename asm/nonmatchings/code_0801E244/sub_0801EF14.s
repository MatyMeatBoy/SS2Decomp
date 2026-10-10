	thumb_func_start sub_0801EF14
sub_0801EF14: @ 0x0801EF14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r1, #0
	movs r1, #0x81
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r0, [r0, #0x28]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	mov r8, r0
	movs r2, #0xe7
	lsls r2, r2, #1
	adds r1, r7, r2
	subs r2, #2
	adds r0, r4, r2
	ldrh r5, [r0, #0]
	ldrh r6, [r1, #0]
	bl sub_080008C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x32
	bl sub_080B95E4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	movs r0, #0xc8
	lsls r0, r0, #0xf
	adds r4, r4, r0
	lsrs r4, r4, #0x10
	adds r1, r5, #0
	muls r1, r5, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r5, r5, r6
	adds r1, r5, #0
	bl sub_080B9394
	muls r0, r4, r0
	movs r1, #0xc8
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	movs r1, #0xa
	bl sub_080B956C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0801EF8A
	movs r1, #1
_0801EF8A:
	mov r0, r8
	adds r0, #0xbc
	ldrh r0, [r0, #0]
	adds r3, r1, #0
	movs r1, #0x86
	lsls r1, r1, #2
	adds r2, r7, r1
	subs r0, #1
	cmp r0, #6
	bhi _0801F004
	lsls r0, r0, #2
	ldr r1, _0801EFA8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801EFA8: .4byte _0801EFAC
_0801EFAC:
	.4byte _0801EFC8
_0801EFB0: .4byte _0801EFCC
_0801EFB4: .4byte _0801EFD0
_0801EFB8: .4byte _0801EFD4
_0801EFBC: .4byte _0801EFD8
_0801EFC0: .4byte _0801EFDC
_0801EFC4: .4byte _0801EFDC
_0801EFC8:
	ldrh r1, [r2, #0]
	b _0801EFDE
_0801EFCC:
	ldrh r1, [r2, #2]
	b _0801EFDE
_0801EFD0:
	ldrh r1, [r2, #4]
	b _0801EFDE
_0801EFD4:
	ldrh r1, [r2, #6]
	b _0801EFDE
_0801EFD8:
	ldrh r1, [r2, #8]
	b _0801EFDE
_0801EFDC:
	ldrh r1, [r2, #0xa]
_0801EFDE:
	ldr r0, _0801F01C
	muls r0, r3, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	ldr r2, _0801F020
	adds r1, r1, r2
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r3
	cmp r0, #0
	beq _0801F004
	movs r3, #1
_0801F004:
	adds r0, r3, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bgt _0801F010
	movs r1, #1
_0801F010:
	adds r0, r1, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0801F01C: .4byte 0x00001388
_0801F020: .4byte 0x000009C4
	thumb_func_end sub_0801EF14
