	thumb_func_start sub_0805DF38
sub_0805DF38: @ 0x0805DF38
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r7, [sp, #0x18]
	movs r1, #0
	ldr r0, _0805DF68
	ldrb r2, [r0, #0]
	movs r3, #1
_0805DF46:
	adds r0, r2, #0
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _0805DF6C
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0805DF46
	movs r0, #0xff
_0805DF5C:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xff
	bne _0805DF70
_0805DF64:
	movs r0, #0
	b _0805E0B2
_0805DF68: .4byte gUnk_03005D6C
_0805DF6C:
	adds r0, r1, #0
	b _0805DF5C
_0805DF70:
	ldr r1, _0805DFAC
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r6, r1, r0
	adds r0, r6, #0
	adds r0, #0x70
	strb r2, [r0, #0]
	movs r0, #0
	movs r1, #0xe
	movs r2, #0x1b
	movs r3, #3
	bl sub_0805D720
	str r0, [r6, #0x28]
	movs r0, #2
	negs r0, r0
	cmp r7, r0
	bne _0805E014
	ldr r0, _0805DFB0
	ldr r0, [r0, #0]
	cmp r0, #4
	bhi _0805E01A
	lsls r0, r0, #2
	ldr r1, _0805DFB4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0805DFAC: .4byte gUnk_03005D68
_0805DFB0: .4byte gUnk_03003470
_0805DFB4: .4byte _0805DFB8
_0805DFB8:
	.4byte _0805DFCC
_0805DFBC: .4byte _0805DFD8
_0805DFC0: .4byte _0805DFE4
_0805DFC4: .4byte _0805DFF0
_0805DFC8: .4byte _0805DFFC
_0805DFCC:
	adds r0, r6, #0
	adds r0, #0x2c
	ldr r1, _0805DFD4
	b _0805E002
_0805DFD4: .4byte 0x00050002
_0805DFD8:
	adds r0, r6, #0
	adds r0, #0x2c
	ldr r1, _0805DFE0
	b _0805E002
_0805DFE0: .4byte 0x0005015B
_0805DFE4:
	adds r0, r6, #0
	adds r0, #0x2c
	ldr r1, _0805DFEC
	b _0805E002
_0805DFEC: .4byte 0x0005015C
_0805DFF0:
	adds r0, r6, #0
	adds r0, #0x2c
	ldr r1, _0805DFF8
	b _0805E002
_0805DFF8: .4byte 0x0005015D
_0805DFFC:
	adds r0, r6, #0
	adds r0, #0x2c
	ldr r1, _0805E010
_0805E002:
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r2, #0
	str r2, [sp, #0]
	bl sub_08065158
	b _0805E01A
_0805E010: .4byte 0x0005015E
_0805E014:
	cmp r7, #0
	ble _0805E01A
	movs r7, #0x8c
_0805E01A:
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq _0805DF64
	adds r0, r6, #0
	adds r0, #0x69
	movs r4, #0
	movs r5, #1
	strb r5, [r0, #0]
	adds r1, r6, #0
	adds r1, #0x6a
	movs r0, #0xf
	strb r0, [r1, #0]
	subs r1, #2
	movs r0, #2
	strb r0, [r1, #0]
	ldr r0, [sp, #0x1c]
	bl sub_08007290
	str r0, [r6, #0x60]
	adds r0, r6, #0
	adds r0, #0x6c
	strh r4, [r0, #0]
	adds r0, #2
	strh r4, [r0, #0]
	str r5, [r6, #0x74]
	adds r0, #0x16
	str r7, [r0, #0]
	subs r0, #4
	strh r4, [r0, #0]
	subs r0, #8
	strh r4, [r0, #0]
	adds r0, #2
	strh r4, [r0, #0]
	adds r0, #2
	strh r4, [r0, #0]
	adds r0, #2
	strh r4, [r0, #0]
	str r4, [r6, #0x64]
	ldr r0, _0805E074
	str r0, [r6, #0xc]
	str r4, [r6, #0x24]
	adds r4, r6, #0
	adds r4, #0x70
	b _0805E07C
	.2byte 0x0000
_0805E074: .4byte sub_0805E0C4
_0805E078:
	bl sub_080003F0
_0805E07C:
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r6, #0x20]
	cmp r0, #0
	beq _0805E078
	ldr r1, _0805E0BC
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r0, #0x15
	str r0, [r6, #8]
	movs r0, #0
	str r0, [r6, #0]
	str r0, [r6, #0x18]
	adds r0, r6, #0
	adds r1, r6, #0
	bl sub_08000274
	ldr r2, _0805E0C0
	movs r0, #1
	ldrb r4, [r4, #0]
	lsls r0, r4
	ldrb r1, [r2, #0]
	orrs r0, r1
	strb r0, [r2, #0]
	adds r0, r6, #0
_0805E0B2:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_0805E0BC: .4byte 0x000007FC
_0805E0C0: .4byte gUnk_03005D6C
	thumb_func_end sub_0805DF38
