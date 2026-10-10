	thumb_func_start sub_0801A120
sub_0801A120: @ 0x0801A120
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r4
	cmp r0, #0
	beq _0801A144
	movs r7, #1
	ldr r0, _0801A140
	ands r4, r0
	b _0801A146
	.2byte 0x0000
_0801A140: .4byte 0xFFFF7FFF
_0801A144:
	movs r7, #0
_0801A146:
	ldr r0, _0801A19C
	cmp r4, r0
	bls _0801A14E
	adds r4, r0, #0
_0801A14E:
	ldr r0, [r3, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r3, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r5, sp
	adds r5, #0xa
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	add r2, sp, #8
	adds r3, r5, #0
	bl sub_0800BC08
	add r1, sp, #8
	adds r0, r1, #0
	ldrh r0, [r0, #0]
	subs r0, #8
	strh r0, [r1, #0]
	cmp r7, #0
	beq _0801A1A4
	adds r0, r1, #0
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	ldr r2, _0801A1A0
	ands r2, r4
	movs r3, #4
	str r3, [sp, #0]
	movs r3, #3
	bl sub_08065424
	b _0801A1C0
_0801A19C: .4byte 0x000003E7
_0801A1A0: .4byte 0x0FFFFFFF
_0801A1A4:
	add r0, sp, #8
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	movs r2, #4
	str r2, [sp, #0]
	adds r2, r4, #0
	movs r3, #0
	bl sub_08065424
_0801A1C0:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0801A120
