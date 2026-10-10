	thumb_func_start sub_08065A1C
sub_08065A1C: @ 0x08065A1C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0
	adds r4, r1, #0
	movs r0, #0xf
	mov r8, r0
	movs r0, #0xa0
	lsls r0, r0, #0xd
	orrs r0, r2
	bl sub_08007290
	adds r5, r0, #0
	adds r0, r5, #2
	bl sub_0801A638
	lsrs r0, r0, #1
	negs r1, r0
	subs r4, #1
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	beq _08065A7C
	adds r0, r1, #0
	adds r0, #0xf
	lsls r6, r0, #0x10
	mov r0, r8
	lsls r7, r0, #0x10
_08065A54:
	bl sub_0805F184
	cmp r0, #0
	bne _08065A6E
	bl sub_0800CC98
	cmp r0, #0
	bne _08065A6E
	adds r0, r5, #2
	lsrs r1, r6, #0x10
	lsrs r2, r7, #0x10
	bl sub_0801A3D0
_08065A6E:
	bl sub_080003F0
	subs r4, #1
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _08065A54
_08065A7C:
	mov r0, r8
	movs r1, #2
	bl sub_0801A664
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08065A1C
