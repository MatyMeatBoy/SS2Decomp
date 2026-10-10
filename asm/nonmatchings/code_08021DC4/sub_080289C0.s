	thumb_func_start sub_080289C0
sub_080289C0: @ 0x080289C0
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	mov r8, r1
	mov r9, r2
	ldr r0, _080289E0
	ldr r0, [r0, #0]
	ldr r1, _080289E4
	adds r4, r0, r1
	movs r5, #0
	ldr r2, _080289E8
	adds r6, r0, r2
	b _080289F4
	.2byte 0x0000
_080289E0: .4byte gUnk_03005CF4
_080289E4: .4byte 0x000007A4
_080289E8: .4byte 0x000007EC
_080289EC:
	adds r5, #1
	adds r4, #0x70
	adds r6, r4, #0
	adds r6, #0x48
_080289F4:
	cmp r5, #0xe
	bhi _08028A64
	adds r0, r6, #0
	bl sub_08000470
	cmp r0, #0
	bne _080289EC
	ldr r0, _08028A58
	ldr r2, [r0, #0]
	movs r3, #1
	adds r1, r3, #0
	lsls r1, r5
	ldr r0, [r2, #0x54]
	orrs r0, r1
	str r0, [r2, #0x54]
	ldr r0, [r2, #0x4c]
	str r0, [r4, #0]
	ldr r0, [r2, #0x4c]
	adds r0, #1
	str r0, [r2, #0x4c]
	str r7, [r4, #4]
	str r3, [r4, #0x3c]
	mov r1, r8
	lsls r0, r1, #8
	str r0, [r4, #8]
	mov r2, r9
	lsls r0, r2, #8
	str r0, [r4, #0xc]
	movs r0, #0x3c
	str r0, [r4, #0x50]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x68]
	ldr r1, _08028A5C
	str r1, [r4, #0x54]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x58]
	ldr r0, _08028A60
	str r0, [r4, #0x6c]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08000274
	ldr r5, [r4, #0]
	b _08028A6C
	.2byte 0x0000
_08028A58: .4byte gUnk_03005CF4
_08028A5C: .4byte sub_080284F4
_08028A60: .4byte sub_0805A780
_08028A64:
	movs r5, #0
	b _08028A6C
_08028A68:
	adds r4, r1, #0
	b _08028A98
_08028A6C:
	ldr r0, _08028A8C
	ldr r0, [r0, #0]
	ldr r2, _08028A90
	adds r1, r0, r2
	movs r2, #0
_08028A76:
	ldr r0, [r1, #0]
	cmp r0, r5
	beq _08028A68
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08028A76
	bl sub_080003F0
	movs r4, #0
	b _08028A98
_08028A8C: .4byte gUnk_03005CF4
_08028A90: .4byte 0x000007A4
_08028A94:
	bl sub_080003F0
_08028A98:
	ldr r0, [r4, #0x3c]
	cmp r0, #1
	beq _08028A94
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_080289C0
