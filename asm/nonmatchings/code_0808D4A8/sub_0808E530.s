	thumb_func_start sub_0808E530
sub_0808E530: @ 0x0808E530
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	adds r6, r0, #0
	bl sub_0800CCCC
	cmp r0, #0
	beq _0808E548
	b _0808E65A
_0808E548:
	ldr r1, _0808E56C
	movs r3, #1
	negs r3, r3
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	lsrs r0, r6, #0x10
	movs r1, #0xff
	ands r1, r0
	str r0, [sp, #0x50]
	cmp r1, #0
	beq _0808E570
	cmp r1, #1
	beq _0808E576
	b _0808E57A
	.2byte 0x0000
_0808E56C: .4byte 0x000500F1
_0808E570:
	movs r0, #0xe
	str r0, [sp, #0x48]
	b _0808E57A
_0808E576:
	movs r1, #0xf
	str r1, [sp, #0x48]
_0808E57A:
	ldr r0, _0808E648
	ands r0, r6
	lsls r4, r0, #8
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r5, r0, #0
	adds r6, r0, #0
	movs r2, #0
	mov sl, r2
	bl sub_080020F4
	asrs r0, r4, #8
	mov r9, r0
	add r1, sp, #0x44
	mov r8, r1
	lsls r0, r0, #0x10
	str r0, [sp, #0x4c]
	mov r7, sp
	adds r7, #0x46
_0808E5A0:
	add r6, sl
	movs r2, #0x20
	negs r2, r2
	add sl, r2
	bl sub_0800CC98
	cmp r0, #0
	bne _0808E616
	bl sub_0800CCCC
	cmp r0, #0
	bne _0808E616
	bl sub_0800CD34
	cmp r0, #0
	bne _0808E616
	bl sub_0800CD8C
	adds r1, r0, #0
	cmp r1, #0
	bne _0808E616
	movs r0, #0x30
	str r0, [sp, #0]
	str r1, [sp, #4]
	ldr r1, [sp, #0x4c]
	asrs r0, r1, #0x10
	movs r2, #0xa0
	lsls r2, r2, #0xf
	asrs r1, r2, #0x10
	mov r2, r8
	adds r3, r7, #0
	bl sub_0800BC08
	mov r0, r9
	movs r1, #0x50
	movs r2, #0
	bl sub_0800BC44
	mov r1, r8
	ldrh r2, [r1, #0]
	ldrh r1, [r7, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r2, #0
	movs r2, #0
	ldr r3, [sp, #0x48]
	bl sub_08007870
	asrs r2, r6, #8
	ldr r1, [r0, #0xc]
	subs r1, r1, r2
	str r1, [r0, #0xc]
_0808E616:
	bl sub_080003F0
	bl sub_08056E90
	cmp r0, #0
	bne _0808E626
	cmp r6, #0
	bgt _0808E5A0
_0808E626:
	bl sub_08056E90
	cmp r0, #0
	bne _0808E65A
	movs r1, #0xff
	ldr r2, [sp, #0x50]
	ands r1, r2
	cmp r1, #0
	beq _0808E64C
	str r0, [sp, #0]
	movs r0, #4
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #5
	bl sub_08079888
	b _0808E65A
_0808E648: .4byte 0x0000FFFF
_0808E64C:
	str r1, [sp, #0]
	movs r0, #4
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #4
	bl sub_08079888
_0808E65A:
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0808E530
