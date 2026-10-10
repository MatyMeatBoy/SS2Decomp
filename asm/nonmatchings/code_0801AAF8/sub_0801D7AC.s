	thumb_func_start sub_0801D7AC
sub_0801D7AC: @ 0x0801D7AC
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	mov ip, r1
	mov r8, r3
	ldr r1, _0801D7DC
	movs r4, #0xa6
	lsls r4, r4, #1
	adds r0, r7, #0
	muls r0, r4, r0
	adds r3, r0, r1
	ldrh r0, [r3, #0xc]
	mov r9, r1
	cmp r0, #2
	beq _0801D892
	cmp r0, #2
	bgt _0801D7E0
	cmp r0, #0
	beq _0801D7EE
	b _0801DB86
	.2byte 0x0000
_0801D7DC: .4byte gUnk_03003CE0
_0801D7E0:
	cmp r0, #3
	bne _0801D7E6
	b _0801D9CE
_0801D7E6:
	cmp r0, #5
	bne _0801D7EC
	b _0801D92E
_0801D7EC:
	b _0801DB86
_0801D7EE:
	mov r0, ip
	muls r0, r4, r0
	adds r4, r0, #0
	mov r1, r9
	adds r0, r4, r1
	adds r0, #0x68
	adds r1, r3, #0
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	beq _0801D808
	b _0801DB86
_0801D808:
	cmp r2, #7
	beq _0801D80E
	b _0801DB86
_0801D80E:
	cmp r7, ip
	bne _0801D814
	b _0801DB86
_0801D814:
	movs r6, #0
	mov r0, r9
	adds r0, #0x34
	adds r0, r4, r0
	ldr r4, [r0, #0]
	movs r5, #0
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r0, #2
	negs r0, r0
	cmp r1, r0
	bne _0801D83A
	ldrh r0, [r4, #4]
	cmp r0, #7
	bne _0801D83A
	ldrh r0, [r4, #2]
	cmp r0, r7
	bne _0801D83A
	b _0801DAE2
_0801D83A:
	adds r5, #1
	adds r4, #0x28
	cmp r5, #7
	bhi _0801D860
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #2
	negs r0, r0
	cmp r1, r0
	bne _0801D83A
	ldrh r0, [r4, #4]
	cmp r0, #7
	bne _0801D83A
	ldrh r0, [r4, #2]
	cmp r0, r7
	bne _0801D83A
	mov r1, r8
	strh r1, [r4, #6]
	movs r6, #1
_0801D860:
	cmp r6, #0
	beq _0801D866
	b _0801DB86
_0801D866:
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r2, ip
	muls r2, r0, r2
	adds r0, r2, #0
	mov r1, r9
	adds r1, #0x34
	adds r0, r0, r1
	ldr r4, [r0, #0]
	movs r5, #0
	movs r1, #1
	negs r1, r1
_0801D87E:
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, r1
	bne _0801D888
	b _0801DAE8
_0801D888:
	adds r5, #1
	adds r4, #0x28
	cmp r5, #7
	bls _0801D87E
	b _0801DB86
_0801D892:
	cmp r2, #7
	beq _0801D898
	b _0801DB86
_0801D898:
	mov r2, ip
	muls r2, r4, r2
	mov r1, r9
	adds r0, r2, r1
	adds r0, #0x68
	adds r1, r3, #0
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	beq _0801D8B0
	b _0801DB86
_0801D8B0:
	movs r6, #0
	mov r0, r9
	adds r0, #0x34
	adds r0, r2, r0
	ldr r4, [r0, #0]
	movs r5, #0
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r0, #2
	negs r0, r0
	cmp r1, r0
	bne _0801D8D6
	ldrh r0, [r4, #4]
	cmp r0, #7
	bne _0801D8D6
	ldrh r0, [r4, #2]
	cmp r0, r7
	bne _0801D8D6
	b _0801DAE2
_0801D8D6:
	adds r5, #1
	adds r4, #0x28
	cmp r5, #7
	bhi _0801D8FC
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #2
	negs r0, r0
	cmp r1, r0
	bne _0801D8D6
	ldrh r0, [r4, #4]
	cmp r0, #7
	bne _0801D8D6
	ldrh r0, [r4, #2]
	cmp r0, r7
	bne _0801D8D6
	mov r1, r8
	strh r1, [r4, #6]
	movs r6, #1
_0801D8FC:
	cmp r6, #0
	beq _0801D902
	b _0801DB86
_0801D902:
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r2, ip
	muls r2, r0, r2
	adds r0, r2, #0
	mov r1, r9
	adds r1, #0x34
	adds r0, r0, r1
	ldr r4, [r0, #0]
	movs r5, #0
	movs r1, #1
	negs r1, r1
_0801D91A:
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, r1
	bne _0801D924
	b _0801DAF8
_0801D924:
	adds r5, #1
	adds r4, #0x28
	cmp r5, #7
	bls _0801D91A
	b _0801DB86
_0801D92E:
	cmp r2, #7
	beq _0801D934
	b _0801DB86
_0801D934:
	movs r6, #0
	mov r2, ip
	muls r2, r4, r2
	mov r1, r9
	adds r0, r2, r1
	adds r0, #0x68
	adds r1, r3, #0
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	beq _0801D94E
	b _0801DB86
_0801D94E:
	mov r0, r9
	adds r0, #0x34
	adds r0, r2, r0
	ldr r2, [r0, #0]
	movs r5, #0
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r0, #2
	negs r0, r0
	cmp r1, r0
	bne _0801D976
	ldrh r0, [r2, #4]
	cmp r0, #7
	bne _0801D976
	ldrh r0, [r2, #2]
	cmp r0, r7
	bne _0801D976
	mov r0, r8
	strh r0, [r2, #6]
	b _0801DB86
_0801D976:
	adds r5, #1
	adds r2, #0x28
	cmp r5, #7
	bhi _0801D99C
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r0, #2
	negs r0, r0
	cmp r1, r0
	bne _0801D976
	ldrh r0, [r2, #4]
	cmp r0, #7
	bne _0801D976
	ldrh r0, [r2, #2]
	cmp r0, r7
	bne _0801D976
	mov r0, r8
	strh r0, [r2, #6]
	movs r6, #1
_0801D99C:
	cmp r6, #0
	beq _0801D9A2
	b _0801DB86
_0801D9A2:
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	mov r1, r9
	adds r1, #0x34
	adds r0, r0, r1
	ldr r2, [r0, #0]
	movs r5, #0
	movs r1, #1
	negs r1, r1
_0801D9BA:
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, r1
	bne _0801D9C4
	b _0801DB0C
_0801D9C4:
	adds r5, #1
	adds r2, #0x28
	cmp r5, #7
	bls _0801D9BA
	b _0801DB86
_0801D9CE:
	movs r1, #0xff
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #4
	bne _0801DAB6
	lsrs r2, r2, #8
	ands r2, r1
	cmp r2, #3
	bhi _0801DA40
	mov r0, ip
	muls r0, r4, r0
	add r0, r9
	adds r0, #0x68
	adds r1, r3, #0
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bne _0801D9F6
	b _0801DB86
_0801D9F6:
	adds r0, r2, #0
	muls r0, r4, r0
	mov r1, r9
	adds r1, #0x34
	adds r0, r0, r1
	ldr r4, [r0, #0]
	movs r5, #0
	movs r0, #1
	negs r0, r0
	mov r9, r0
	mov r6, sp
_0801DA0C:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r9
	bne _0801DA30
	movs r0, #0
	strh r0, [r6, #0]
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _0801DA3C
	bl CpuSet
	strh r7, [r4, #2]
	movs r0, #0x78
	strh r0, [r4, #0]
	movs r0, #4
	strh r0, [r4, #4]
	mov r2, r8
	strh r2, [r4, #6]
_0801DA30:
	adds r5, #1
	adds r4, #0x28
	cmp r5, #7
	bls _0801DA0C
	b _0801DB86
	.2byte 0x0000
_0801DA3C: .4byte 0x01000014
_0801DA40:
	movs r3, #0
	ldr r5, _0801DA9C
	movs r4, #0
_0801DA46:
	movs r1, #1
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _0801DAA8
	ldr r0, _0801DAA0
	ldr r0, [r0, #0]
	adds r0, r4, r0
	ldrh r1, [r0, #2]
	cmp r2, r1
	bne _0801DAA8
	adds r4, r0, #0
	adds r4, #0x8c
	movs r5, #0
	movs r3, #1
	negs r3, r3
	mov r6, sp
_0801DA6A:
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, r3
	bne _0801DA92
	movs r0, #0
	strh r0, [r6, #0]
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _0801DAA4
	str r3, [sp, #4]
	bl CpuSet
	strh r7, [r4, #2]
	movs r0, #0x78
	strh r0, [r4, #0]
	movs r0, #4
	strh r0, [r4, #4]
	mov r0, r8
	strh r0, [r4, #6]
	ldr r3, [sp, #4]
_0801DA92:
	adds r5, #1
	adds r4, #0x28
	cmp r5, #7
	bls _0801DA6A
	b _0801DB86
_0801DA9C: .4byte gUnk_030056FC
_0801DAA0: .4byte gUnk_030056F4
_0801DAA4: .4byte 0x01000014
_0801DAA8:
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r4, r4, r1
	adds r3, #1
	cmp r3, #4
	bls _0801DA46
	b _0801DB86
_0801DAB6:
	cmp r0, #6
	bne _0801DB86
	movs r6, #0
	mov r0, ip
	muls r0, r4, r0
	mov r1, r9
	adds r1, #0x34
	adds r0, r0, r1
	ldr r4, [r0, #0]
	movs r5, #0
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r0, #2
	negs r0, r0
	cmp r1, r0
	bne _0801DB34
	ldrh r0, [r4, #4]
	cmp r0, #6
	bne _0801DB34
	ldrh r0, [r4, #2]
	cmp r0, r7
	bne _0801DB34
_0801DAE2:
	mov r3, r8
	strh r3, [r4, #6]
	b _0801DB86
_0801DAE8:
	strh r7, [r4, #2]
	ldr r0, _0801DAF4
	strh r0, [r4, #0]
	movs r0, #7
	b _0801DB28
	.2byte 0x0000
_0801DAF4: .4byte 0x0000FFFE
_0801DAF8:
	strh r7, [r4, #2]
	ldr r0, _0801DB08
	strh r0, [r4, #0]
	movs r0, #7
	strh r0, [r4, #4]
	mov r1, r8
	strh r1, [r4, #6]
	b _0801DB86
_0801DB08: .4byte 0x0000FFFE
_0801DB0C:
	strh r7, [r2, #2]
	ldr r0, _0801DB1C
	strh r0, [r2, #0]
	movs r0, #7
	strh r0, [r2, #4]
	mov r3, r8
	strh r3, [r2, #6]
	b _0801DB86
_0801DB1C: .4byte 0x0000FFFE
_0801DB20:
	strh r7, [r4, #2]
	ldr r0, _0801DB30
	strh r0, [r4, #0]
	movs r0, #6
_0801DB28:
	strh r0, [r4, #4]
	mov r0, r8
	strh r0, [r4, #6]
	b _0801DB86
_0801DB30: .4byte 0x0000FFFE
_0801DB34:
	adds r5, #1
	adds r4, #0x28
	cmp r5, #7
	bhi _0801DB5A
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r0, #2
	negs r0, r0
	cmp r1, r0
	bne _0801DB34
	ldrh r0, [r4, #4]
	cmp r0, #6
	bne _0801DB34
	ldrh r0, [r4, #2]
	cmp r0, r7
	bne _0801DB34
	mov r3, r8
	strh r3, [r4, #6]
	movs r6, #1
_0801DB5A:
	cmp r6, #0
	bne _0801DB86
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	mov r1, r9
	adds r1, #0x34
	adds r0, r0, r1
	ldr r4, [r0, #0]
	movs r5, #0
	movs r1, #1
	negs r1, r1
_0801DB76:
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, r1
	beq _0801DB20
	adds r5, #1
	adds r4, #0x28
	cmp r5, #7
	bls _0801DB76
_0801DB86:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0801D7AC
