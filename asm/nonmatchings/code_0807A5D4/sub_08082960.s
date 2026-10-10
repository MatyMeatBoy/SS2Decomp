	thumb_func_start sub_08082960
sub_08082960: @ 0x08082960
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r7, r0, #0
	cmp r7, #0
	bne _0808296C
	b _08082BA6
_0808296C:
	ldr r0, _08082A38
	bl sub_08007290
	adds r2, r0, #0
	adds r4, r2, #2
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #3
	bl sub_0801A3D0
	add r2, sp, #0x14
	movs r5, #0
	ldr r3, _08082A3C
	ldr r1, [r3, #0]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, r7, r0
	ldrh r0, [r0, #0]
	strb r0, [r2, #0]
	lsls r0, r0, #0x18
	adds r4, r2, #0
	cmp r0, #0
	beq _080829C8
_080829AA:
	adds r5, #1
	adds r2, #1
	cmp r5, #0x1e
	bhi _080829C8
	ldr r0, [r3, #0]
	lsls r1, r0, #5
	subs r1, r1, r0
	adds r1, r1, r5
	lsls r1, r1, #1
	adds r1, r7, r1
	ldrh r0, [r1, #0]
	strb r0, [r2, #0]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080829AA
_080829C8:
	movs r0, #0xfd
	strb r0, [r2, #0]
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0801A3D0
	movs r4, #0
	movs r5, #0
	movs r3, #0x80
	lsls r3, r3, #8
	movs r0, #0x9b
	lsls r0, r0, #1
	adds r2, r7, r0
_080829F2:
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080829FE
	adds r4, #1
_080829FE:
	adds r2, #2
	adds r5, #1
	cmp r5, #5
	bls _080829F2
	movs r1, #0
	str r1, [sp, #8]
	add r0, sp, #4
	strb r1, [r0, #8]
	movs r6, #0
	movs r5, #0
_08082A12:
	lsls r2, r5, #1
	movs r1, #0x9b
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r0, r0, r2
	ldrh r1, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08082AB0
	cmp r5, #5
	bhi _08082A80
	lsls r0, r5, #2
	ldr r1, _08082A40
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08082A38: .4byte 0x001403EC
_08082A3C: .4byte gUnk_03003470
_08082A40: .4byte _08082A44
_08082A44:
	.4byte _08082A5C
_08082A48: .4byte _08082A68
_08082A4C: .4byte _08082A62
_08082A50: .4byte _08082A6E
_08082A54: .4byte _08082A74
_08082A58: .4byte _08082A7A
_08082A5C:
	add r1, sp, #4
	movs r0, #2
	b _08082A7E
_08082A62:
	add r1, sp, #4
	movs r0, #3
	b _08082A7E
_08082A68:
	add r1, sp, #4
	movs r0, #4
	b _08082A7E
_08082A6E:
	add r1, sp, #4
	movs r0, #5
	b _08082A7E
_08082A74:
	add r1, sp, #4
	movs r0, #6
	b _08082A7E
_08082A7A:
	add r1, sp, #4
	movs r0, #7
_08082A7E:
	strh r0, [r1, #0]
_08082A80:
	add r1, sp, #4
	movs r3, #0x9b
	lsls r3, r3, #1
	adds r0, r7, r3
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	strh r0, [r1, #2]
	lsls r0, r6, #4
	adds r0, #0x80
	lsls r1, r4, #3
	subs r0, r0, r1
	ldr r1, _08082B08
	ldr r1, [r1, #0]
	lsls r2, r5, #3
	adds r1, #0x74
	adds r1, r1, r2
	ldr r2, [r1, #0]
	movs r1, #0x38
	subs r1, r1, r2
	add r2, sp, #4
	movs r3, #0
	bl sub_0805FC80
	adds r6, #1
_08082AB0:
	adds r5, #1
	cmp r5, #5
	bls _08082A12
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r4, r7, r0
	movs r6, #0
	movs r5, #0
	cmp r4, #0
	beq _08082BA6
	adds r1, r4, #0
_08082AC6:
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _08082AD2
	cmp r0, #0x29
	beq _08082AD2
	adds r6, #1
_08082AD2:
	adds r1, #4
	adds r5, #1
	cmp r5, #2
	bhi _08082ADE
	cmp r4, #0
	bne _08082AC6
_08082ADE:
	movs r5, #0
	cmp r4, #0
	beq _08082BA6
_08082AE4:
	ldrh r0, [r4, #0]
	cmp r0, #0
	beq _08082B9A
	cmp r0, #0x29
	beq _08082B9A
	ldrh r0, [r4, #2]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08082B0C
	ldrh r0, [r4, #0]
	lsls r0, r0, #1
	movs r3, #0xb1
	lsls r3, r3, #2
	adds r0, r0, r3
	b _08082B14
_08082B08: .4byte gUnk_03006440
_08082B0C:
	ldrh r0, [r4, #0]
	lsls r0, r0, #1
	ldr r1, _08082B30
	adds r0, r0, r1
_08082B14:
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r2, r0, #0
	cmp r6, #2
	beq _08082B54
	cmp r6, #2
	bhi _08082B34
	cmp r6, #1
	beq _08082B3A
	b _08082B9A
	.2byte 0x0000
_08082B30: .4byte 0x000002C3
_08082B34:
	cmp r6, #3
	beq _08082B78
	b _08082B9A
_08082B3A:
	movs r0, #2
	ldrsh r3, [r4, r0]
	cmp r3, #0
	bge _08082B44
	negs r3, r3
_08082B44:
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r6, [sp, #0]
	movs r0, #0xf
	movs r1, #0xb
	bl sub_08081518
	b _08082B9A
_08082B54:
	lsls r0, r5, #0x11
	movs r1, #0xa0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	movs r0, #2
	ldrsh r3, [r4, r0]
	cmp r3, #0
	bge _08082B68
	negs r3, r3
_08082B68:
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #0xf
	bl sub_08081518
	b _08082B9A
_08082B78:
	lsls r0, r5, #0x11
	movs r1, #0x90
	lsls r1, r1, #0xc
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	movs r0, #2
	ldrsh r3, [r4, r0]
	cmp r3, #0
	bge _08082B8C
	negs r3, r3
_08082B8C:
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #0xf
	bl sub_08081518
_08082B9A:
	adds r4, #4
	adds r5, #1
	cmp r5, #2
	bhi _08082BA6
	cmp r4, #0
	bne _08082AE4
_08082BA6:
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08082960
