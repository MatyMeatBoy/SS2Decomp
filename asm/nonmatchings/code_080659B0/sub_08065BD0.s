	thumb_func_start sub_08065BD0
sub_08065BD0: @ 0x08065BD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r1, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08065C4C
	adds r7, r1, r0
	subs r4, #1
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	beq _08065C44
	mov r6, sp
	adds r6, #0xa
	adds r5, r7, #2
_08065BF0:
	bl sub_0800CC98
	cmp r0, #0
	bne _08065C36
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #1
	str r2, [sp, #4]
	add r2, sp, #8
	adds r3, r6, #0
	bl sub_0800BC08
	adds r0, r5, #0
	bl sub_0801A638
	add r1, sp, #8
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r0, r0, #2
	subs r1, r1, r0
	movs r0, #0
	ldrsh r2, [r6, r0]
	subs r2, #0x30
	adds r0, r5, #0
	bl sub_0801A764
_08065C36:
	bl sub_080003F0
	subs r4, #1
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _08065BF0
_08065C44:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08065C4C: .4byte gUnk_03003CE0
	thumb_func_end sub_08065BD0
