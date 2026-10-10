	thumb_func_start sub_0804AF80
sub_0804AF80: @ 0x0804AF80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, _0804AF9C
	ldr r2, [r0, #0]
	movs r1, #8
	ldr r0, [r2, #0x38]
	ands r0, r1
	cmp r0, #0
	bne _0804AFF8
	ldr r7, _0804AFA0
	ldr r0, _0804AFA4
	adds r4, r2, r0
	movs r6, #0
	b _0804AFAC
_0804AF9C: .4byte gUnk_03005CF4
_0804AFA0: .4byte sub_0804B054
_0804AFA4: .4byte 0x00000E34
_0804AFA8:
	adds r6, #1
	adds r4, #0x28
_0804AFAC:
	cmp r6, #0x1d
	bhi _0804B008
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _0804AFA8
	str r7, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _0804AFF4
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #7
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
	b _0804B008
	.2byte 0x0000
_0804AFF4: .4byte sub_0802A104
_0804AFF8:
	movs r1, #0xcc
	lsls r1, r1, #1
	movs r2, #0xac
	lsls r2, r2, #1
	movs r0, #8
	movs r3, #0
	bl sub_08028AAC
_0804B008:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804B04A
	bl sub_0801AB24
	cmp r0, #1
	beq _0804B02E
	cmp r0, #1
	bgt _0804B022
	cmp r0, #0
	beq _0804B028
	b _0804B042
_0804B022:
	cmp r0, #2
	beq _0804B036
	b _0804B042
_0804B028:
	bl sub_080576A8
	b _0804B042
_0804B02E:
	movs r0, #6
	bl sub_0801AB50
	b _0804B042
_0804B036:
	movs r0, #6
	bl sub_0801AB90
	b _0804B042
_0804B03E:
	bl sub_080003F0
_0804B042:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804B03E
_0804B04A:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0804AF80
