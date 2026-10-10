	thumb_func_start sub_0805EFBC
sub_0805EFBC: @ 0x0805EFBC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0805EFE0
	ldr r7, [r0, #0]
	movs r6, #0
_0805EFC8:
	ldr r0, _0805EFE4
	ldrb r1, [r0, #0]
	asrs r1, r6
	movs r0, #1
	ands r1, r0
	adds r0, r6, #1
	mov r8, r0
	cmp r1, #0
	beq _0805F00A
	lsls r5, r6, #4
	b _0805EFEC
	.2byte 0x0000
_0805EFE0: .4byte gUnk_03005D68
_0805EFE4: .4byte gUnk_03005D6C
_0805EFE8:
	bl sub_080003F0
_0805EFEC:
	adds r0, r5, r6
	lsls r4, r0, #3
	adds r0, r7, r4
	bl sub_0805EE6C
	cmp r0, #0
	beq _0805EFE8
	b _0805F000
_0805EFFC:
	bl sub_080003F0
_0805F000:
	adds r0, r7, r4
	bl sub_0805EEFC
	cmp r0, #0
	beq _0805EFFC
_0805F00A:
	mov r1, r8
	lsls r0, r1, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0805EFC8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0805EFBC
