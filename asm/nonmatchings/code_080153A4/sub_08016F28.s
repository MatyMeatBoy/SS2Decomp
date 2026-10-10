	thumb_func_start sub_08016F28
sub_08016F28: @ 0x08016F28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r5, r0, #0
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r9, r0
	movs r7, #0xff
	ldr r1, _08016FB8
	adds r3, r5, r1
	ldrb r1, [r3, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08016F74
	adds r2, r5, #0
	adds r2, #0x8a
	ldrh r0, [r2, #0]
	adds r0, #1
	movs r4, #0
	strh r0, [r2, #0]
	lsls r0, r0, #0x10
	movs r1, #0xe1
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _08016F74
	ldrb r1, [r3, #0]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r3, #0]
	ldr r0, _08016FBC
	ldr r0, [r0, #0]
	strh r4, [r0, #0xc]
	strh r4, [r2, #0]
_08016F74:
	bl sub_08002204
	negs r1, r0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #8]
	cmp r1, #0
	bne _08016F86
	b _080170B0
_08016F86:
	ldrh r0, [r5, #0xc]
	movs r2, #0x62
	adds r2, r2, r5
	mov r8, r2
	cmp r0, #0xa
	bne _08016FE4
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _08016FE4
	mov r4, r9
	adds r4, #0x50
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r6, #0xff
	movs r3, #0
	ldrb r1, [r4, #1]
	b _08016FD0
	.2byte 0x0000
_08016FB8: .4byte 0x00000201
_08016FBC: .4byte gUnk_03005CF4
_08016FC0:
	adds r3, #1
	adds r4, #4
	cmp r3, #2
	bhi _08016FD6
	ldrb r0, [r4, #1]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08016FD0:
	cmp r2, r1
	bhs _08016FC0
	ldrb r6, [r4, #0]
_08016FD6:
	adds r7, r6, #0
	ldr r3, _08017024
	adds r2, r5, r3
	ldrb r1, [r2, #0]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #0]
_08016FE4:
	ldr r4, _08017028
	adds r0, r5, r4
	ldrb r0, [r0, #0]
	cmp r0, #0xe
	bne _08017050
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0, #0]
	cmp r0, #1
	bls _0801709C
	cmp r7, #0xff
	bne _0801709C
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0, #0]
	cmp r0, #1
	bne _0801709C
	mov r4, r9
	adds r4, #0x5c
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r6, #0xff
	movs r3, #0
	ldrb r1, [r4, #1]
	b _0801703C
	.2byte 0x0000
_08017024: .4byte 0x00000201
_08017028: .4byte 0x000001FD
_0801702C:
	adds r3, #1
	adds r4, #4
	cmp r3, #2
	bhi _08017042
	ldrb r0, [r4, #1]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0801703C:
	cmp r2, r1
	bhs _0801702C
	ldrb r6, [r4, #0]
_08017042:
	adds r7, r6, #0
	ldr r3, _0801704C
	adds r2, r5, r3
	b _08017094
	.2byte 0x0000
_0801704C: .4byte 0x00000201
_08017050:
	cmp r7, #0xff
	bne _0801709C
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0, #0]
	cmp r0, #1
	bne _0801709C
	mov r4, r9
	adds r4, #0x5c
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r6, #0xff
	movs r3, #0
	ldrb r1, [r4, #1]
	b _08017088
_08017078:
	adds r3, #1
	adds r4, #4
	cmp r3, #2
	bhi _0801708E
	ldrb r0, [r4, #1]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08017088:
	cmp r2, r1
	bhs _08017078
	ldrb r6, [r4, #0]
_0801708E:
	adds r7, r6, #0
	ldr r4, _0801714C
	adds r2, r5, r4
_08017094:
	ldrb r1, [r2, #0]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #0]
_0801709C:
	mov r1, r8
	ldrh r0, [r1, #0]
	cmp r0, #0xa
	bne _080170B0
	ldr r3, _0801714C
	adds r2, r5, r3
	ldrb r1, [r2, #0]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2, #0]
_080170B0:
	ldr r4, _0801714C
	adds r0, r5, r4
	ldrb r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080170C0
	b _080175AE
_080170C0:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _080170C8
	b _080175A4
_080170C8:
	cmp r7, #0xff
	beq _080170CE
	b _08017426
_080170CE:
	movs r0, #0xf0
	str r0, [sp, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08017176
	add r1, sp, #4
	mov sl, r1
	ldr r3, _08017150
	movs r2, #1
	negs r2, r2
	mov r8, r2
	movs r4, #0
	movs r6, #0
_080170EA:
	movs r1, #1
	lsls r1, r4
	ldr r2, _08017154
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _08017132
	ldr r1, _08017158
	ldr r0, [r1, #0]
	adds r1, r0, r6
	cmp r1, r5
	beq _08017132
	ldr r2, [r1, #0x14]
	ldr r0, [r5, #0x14]
	subs r2, r2, r0
	asrs r2, r2, #8
	ldr r1, [r1, #0x18]
	ldr r0, [r5, #0x18]
	subs r1, r1, r0
	asrs r1, r1, #8
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	str r3, [sp, #0x1c]
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, [sp, #0x1c]
	cmp r3, r0
	ble _08017132
	adds r3, r0, #0
	mov r8, r4
_08017132:
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r6, r6, r0
	adds r4, #1
	cmp r4, #4
	bls _080170EA
	movs r0, #1
	negs r0, r0
	cmp r8, r0
	bne _0801715C
	movs r3, #0xff
	b _08017162
	.2byte 0x0000
_0801714C: .4byte 0x00000201
_08017150: .4byte 0x0000FFFF
_08017154: .4byte gUnk_030056FC
_08017158: .4byte gUnk_030056F4
_0801715C:
	mov r1, sl
	str r3, [r1, #0]
	mov r3, r8
_08017162:
	movs r4, #0xfe
	lsls r4, r4, #1
	adds r2, r5, r4
	lsls r3, r3, #4
	ldrb r1, [r2, #0]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0]
	b _08017190
_08017176:
	adds r0, r5, #0
	add r1, sp, #4
	bl sub_08016B30
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r3, r5, r1
	lsls r0, r0, #4
	ldrb r2, [r3, #0]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0]
_08017190:
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r2, r5, r3
	ldrb r1, [r2, #0]
	lsls r3, r1, #0x18
	lsrs r0, r3, #0x1c
	cmp r0, #9
	bls _080171A2
	b _0801741E
_080171A2:
	ldr r4, _080171D0
	adds r0, r5, r4
	ldrb r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080171D8
	lsrs r1, r3, #0x1c
	ldr r0, _080171D4
	ldr r2, [r0, #0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r2
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0, #0]
	mov r2, r9
	ldr r0, [r2, #0x10]
	b _080171E2
_080171D0: .4byte 0x00000201
_080171D4: .4byte gUnk_030056F4
_080171D8:
	ldr r0, _08017214
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x20]
	mov r3, r9
	ldr r0, [r3, #0x10]
_080171E2:
	subs r1, r1, r0
	mov r0, r9
	adds r0, #0x4e
	ldrh r0, [r0, #0]
	cmp r0, r1
	bge _0801729A
	mov r0, r9
	adds r0, #0x48
	ldr r1, [sp, #4]
	ldrh r0, [r0, #0]
	cmp r1, r0
	bge _0801722E
	mov r4, r9
	adds r4, #0xb0
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r6, #0xff
	movs r3, #0
	ldrb r1, [r4, #1]
	b _08017228
_08017214: .4byte gUnk_030034E0
_08017218:
	adds r3, #1
	adds r4, #4
	cmp r3, #2
	bhi _08017298
	ldrb r0, [r4, #1]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08017228:
	cmp r2, r1
	bhs _08017218
	b _08017296
_0801722E:
	mov r0, r9
	adds r0, #0x4a
	ldrh r0, [r0, #0]
	cmp r1, r0
	bge _08017268
	mov r4, r9
	adds r4, #0xbc
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r6, #0xff
	movs r3, #0
	ldrb r1, [r4, #1]
	b _08017262
_08017252:
	adds r3, #1
	adds r4, #4
	cmp r3, #2
	bhi _08017298
	ldrb r0, [r4, #1]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08017262:
	cmp r2, r1
	bhs _08017252
	b _08017296
_08017268:
	mov r4, r9
	adds r4, #0xc8
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r6, #0xff
	movs r3, #0
	ldrb r1, [r4, #1]
	b _08017292
_08017282:
	adds r3, #1
	adds r4, #4
	cmp r3, #2
	bhi _08017298
	ldrb r0, [r4, #1]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08017292:
	cmp r2, r1
	bhs _08017282
_08017296:
	ldrb r6, [r4, #0]
_08017298:
	adds r7, r6, #0
_0801729A:
	cmp r7, #0xff
	beq _080172A0
	b _08017426
_080172A0:
	adds r0, r5, #0
	adds r0, #0x5c
	movs r4, #0
	ldrsh r1, [r0, r4]
	movs r0, #0x64
	muls r0, r1, r0
	movs r2, #0xeb
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r9
	adds r1, #0x4c
	ldrh r1, [r1, #0]
	cmp r1, r0
	bls _08017370
	mov r0, r9
	adds r0, #0x48
	ldr r1, [sp, #4]
	ldrh r0, [r0, #0]
	cmp r1, r0
	bge _08017304
	mov r4, r9
	adds r4, #0x8c
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r6, #0xff
	movs r3, #0
	ldrb r1, [r4, #1]
	b _080172FE
_080172EE:
	adds r3, #1
	adds r4, #4
	cmp r3, #2
	bhi _0801736E
	ldrb r0, [r4, #1]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080172FE:
	cmp r2, r1
	bhs _080172EE
	b _0801736C
_08017304:
	mov r0, r9
	adds r0, #0x4a
	ldrh r0, [r0, #0]
	cmp r1, r0
	bge _0801733E
	mov r4, r9
	adds r4, #0x98
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r6, #0xff
	movs r3, #0
	ldrb r1, [r4, #1]
	b _08017338
_08017328:
	adds r3, #1
	adds r4, #4
	cmp r3, #2
	bhi _0801736E
	ldrb r0, [r4, #1]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08017338:
	cmp r2, r1
	bhs _08017328
	b _0801736C
_0801733E:
	mov r4, r9
	adds r4, #0xa4
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r6, #0xff
	movs r3, #0
	ldrb r1, [r4, #1]
	b _08017368
_08017358:
	adds r3, #1
	adds r4, #4
	cmp r3, #2
	bhi _0801736E
	ldrb r0, [r4, #1]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08017368:
	cmp r2, r1
	bhs _08017358
_0801736C:
	ldrb r6, [r4, #0]
_0801736E:
	adds r7, r6, #0
_08017370:
	cmp r7, #0xff
	bne _08017426
	mov r0, r9
	adds r0, #0x48
	ldr r1, [sp, #4]
	ldrh r0, [r0, #0]
	cmp r1, r0
	bgt _080173B0
	mov r4, r9
	adds r4, #0x68
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r6, #0xff
	movs r3, #0
	ldrb r1, [r4, #1]
	b _080173AA
_0801739A:
	adds r3, #1
	adds r4, #4
	cmp r3, #2
	bhi _0801741A
	ldrb r0, [r4, #1]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080173AA:
	cmp r2, r1
	bhs _0801739A
	b _08017418
_080173B0:
	mov r0, r9
	adds r0, #0x4a
	ldrh r0, [r0, #0]
	cmp r1, r0
	bgt _080173EA
	mov r4, r9
	adds r4, #0x74
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r6, #0xff
	movs r3, #0
	ldrb r1, [r4, #1]
	b _080173E4
_080173D4:
	adds r3, #1
	adds r4, #4
	cmp r3, #2
	bhi _0801741A
	ldrb r0, [r4, #1]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080173E4:
	cmp r2, r1
	bhs _080173D4
	b _08017418
_080173EA:
	mov r4, r9
	adds r4, #0x80
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r6, #0xff
	movs r3, #0
	ldrb r1, [r4, #1]
	b _08017414
_08017404:
	adds r3, #1
	adds r4, #4
	cmp r3, #2
	bhi _0801741A
	ldrb r0, [r4, #1]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08017414:
	cmp r2, r1
	bhs _08017404
_08017418:
	ldrb r6, [r4, #0]
_0801741A:
	adds r7, r6, #0
	b _08017426
_0801741E:
	movs r7, #1
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0]
_08017426:
	cmp r7, #0xd
	bne _08017444
	adds r0, r5, #0
	adds r0, #0x74
	ldrh r0, [r0, #0]
	mov r4, r9
	ldrh r4, [r4, #0x20]
	cmp r0, r4
	bhs _08017444
	ldr r0, _080174C8
	adds r1, r5, r0
	ldrb r0, [r1, #0]
	cmp r0, #0xff
	beq _08017444
	adds r7, r0, #0
_08017444:
	cmp r7, #0xff
	bne _0801744A
	b _0801759C
_0801744A:
	ldr r1, _080174CC
	adds r3, r5, r1
	ldrb r0, [r3, #0]
	movs r1, #0xfe
	ands r1, r0
	strb r1, [r3, #0]
	ldr r4, _080174C8
	adds r2, r5, r4
	ldrb r0, [r2, #0]
	cmp r0, r7
	bne _08017462
	b _080175A4
_08017462:
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1, #0]
	strb r7, [r2, #0]
	ldrb r2, [r3, #0]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080174D4
	ldr r2, _080174D0
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r0, #0]
	lsrs r1, r1, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #5
	ldr r1, [r2, #0]
	adds r4, r1, r0
	ldr r0, [r4, #0x14]
	lsls r0, r0, #8
	ldr r1, [r4, #0x18]
	lsls r1, r1, #8
	ldr r2, [r5, #0x14]
	asrs r2, r2, #8
	asrs r0, r0, #0x10
	subs r0, r0, r2
	ldr r2, [r5, #0x18]
	asrs r2, r2, #8
	asrs r1, r1, #0x10
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x14
	adds r0, r0, r2
	lsrs r6, r0, #0x1c
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r5, r3
	b _08017532
_080174C8: .4byte 0x000001FD
_080174CC: .4byte 0x00000201
_080174D0: .4byte gUnk_030056F4
_080174D4:
	movs r4, #0xfe
	lsls r4, r4, #1
	adds r0, r5, r4
	ldrb r0, [r0, #0]
	lsrs r0, r0, #4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08017590
	adds r0, r1, r0
	movs r7, #0xa4
	lsls r7, r7, #1
	adds r1, r0, r7
	ldr r0, [r1, #0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _080174FE
	movs r0, #1
	orrs r0, r2
	strb r0, [r3, #0]
_080174FE:
	ldr r1, [r1, #0]
	ldrh r0, [r1, #0]
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	ldr r2, [r5, #0x14]
	asrs r2, r2, #8
	lsrs r0, r0, #4
	subs r0, r0, r2
	ldr r2, [r5, #0x18]
	asrs r2, r2, #8
	lsrs r1, r1, #0x14
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x14
	adds r0, r0, r1
	lsrs r6, r0, #0x1c
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r5, r2
_08017532:
	strb r6, [r0, #0]
	movs r3, #0
	ldr r4, _08017594
	mov sl, r4
	ldr r7, _08017598
	mov r8, r7
	movs r6, #0
	movs r7, #0x80
	lsls r7, r7, #2
_08017544:
	ldrh r0, [r5, #0]
	cmp r0, r3
	beq _0801757A
	movs r1, #1
	lsls r1, r3
	mov r2, sl
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _0801757A
	mov r4, r8
	ldr r0, [r4, #0]
	adds r4, r0, r6
	adds r1, r5, r7
	adds r0, r4, r7
	ldrb r2, [r1, #0]
	ldrb r0, [r0, #0]
	cmp r2, r0
	bne _0801757A
	adds r0, r2, #1
	movs r2, #0
	strb r0, [r1, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _0801757A
	strb r2, [r1, #0]
_0801757A:
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r6, r6, r0
	adds r3, #1
	cmp r3, #4
	bls _08017544
	ldrh r0, [r5, #0]
	bl sub_080662C4
	b _080175A4
	.2byte 0x0000
_08017590: .4byte gUnk_03003CE0
_08017594: .4byte gUnk_030056FC
_08017598: .4byte gUnk_030056F4
_0801759C:
	ldr r2, _08017614
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1, #0]
_080175A4:
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r5, r3
	movs r0, #0
	strb r0, [r1, #0]
_080175AE:
	ldr r4, _08017618
	adds r3, r5, r4
	ldrb r2, [r3, #0]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08017620
	ldr r2, _0801761C
	movs r7, #0xfe
	lsls r7, r7, #1
	adds r0, r5, r7
	ldrb r1, [r0, #0]
	lsrs r1, r1, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #5
	ldr r1, [r2, #0]
	adds r4, r1, r0
	ldr r0, [r4, #0x14]
	lsls r0, r0, #8
	ldr r1, [r4, #0x18]
	lsls r1, r1, #8
	ldr r2, [r5, #0x14]
	asrs r2, r2, #8
	asrs r0, r0, #0x10
	subs r0, r0, r2
	ldr r2, [r5, #0x18]
	asrs r2, r2, #8
	asrs r1, r1, #0x10
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x14
	adds r0, r0, r1
	lsrs r6, r0, #0x1c
	ldr r0, [r4, #0x14]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [r4, #0x18]
	lsls r0, r0, #8
	lsrs r7, r0, #0x10
	b _08017686
_08017614: .4byte 0x000001FD
_08017618: .4byte 0x00000201
_0801761C: .4byte gUnk_030056F4
_08017620:
	movs r4, #0xfe
	lsls r4, r4, #1
	adds r0, r5, r4
	ldrb r0, [r0, #0]
	lsrs r0, r0, #4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080176A0
	adds r0, r1, r0
	movs r7, #0xa4
	lsls r7, r7, #1
	adds r4, r0, r7
	ldr r0, [r4, #0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0801764A
	movs r0, #1
	orrs r0, r2
	strb r0, [r3, #0]
_0801764A:
	ldr r1, [r4, #0]
	ldrh r0, [r1, #0]
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	ldr r2, [r5, #0x14]
	asrs r2, r2, #8
	lsrs r0, r0, #4
	subs r0, r0, r2
	ldr r2, [r5, #0x18]
	asrs r2, r2, #8
	lsrs r1, r1, #0x14
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x14
	adds r0, r0, r1
	lsrs r6, r0, #0x1c
	ldr r1, [r4, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	mov r8, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r7, r0, #0x14
_08017686:
	ldr r2, _080176A4
	adds r0, r5, r2
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #0x71
	bls _08017694
	b _08017C3C
_08017694:
	lsls r0, r0, #2
	ldr r1, _080176A8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080176A0: .4byte gUnk_03003CE0
_080176A4: .4byte 0x000001FD
_080176A8: .4byte _080176AC
_080176AC:
	.4byte _08017874
_080176B0: .4byte _080178A8
_080176B4: .4byte _080178DC
_080176B8: .4byte _08017918
_080176BC: .4byte _08017964
_080176C0: .4byte _080179B0
_080176C4: .4byte _08017A24
_080176C8: .4byte _08017C56
_080176CC: .4byte _08017C56
_080176D0: .4byte _08017C56
_080176D4: .4byte _08017C56
_080176D8: .4byte _08017C56
_080176DC: .4byte _08017B24
_080176E0: .4byte _08017B64
_080176E4: .4byte _08017C56
_080176E8: .4byte _08017C56
_080176EC: .4byte _08017C56
_080176F0: .4byte _08017BCC
_080176F4: .4byte _08017BCC
_080176F8: .4byte _08017BCC
_080176FC: .4byte _08017BCC
_08017700: .4byte _08017C56
_08017704: .4byte _08017C56
_08017708: .4byte _08017C56
_0801770C: .4byte _08017C56
_08017710: .4byte _08017C56
_08017714: .4byte _08017C56
_08017718: .4byte _08017C56
_0801771C: .4byte _08017C56
_08017720: .4byte _08017C56
_08017724: .4byte _08017C08
_08017728: .4byte _08017C08
_0801772C: .4byte _08017C08
_08017730: .4byte _08017C08
_08017734: .4byte _08017C08
_08017738: .4byte _08017C08
_0801773C: .4byte _08017C08
_08017740: .4byte _08017C08
_08017744: .4byte _08017C08
_08017748: .4byte _08017C08
_0801774C: .4byte _08017C08
_08017750: .4byte _08017C08
_08017754: .4byte _08017C08
_08017758: .4byte _08017C08
_0801775C: .4byte _08017C08
_08017760: .4byte _08017C08
_08017764: .4byte _08017C08
_08017768: .4byte _08017C08
_0801776C: .4byte _08017C08
_08017770: .4byte _08017C08
_08017774: .4byte _08017C08
_08017778: .4byte _08017C08
_0801777C: .4byte _08017C08
_08017780: .4byte _08017C08
_08017784: .4byte _08017C08
_08017788: .4byte _08017C08
_0801778C: .4byte _08017C08
_08017790: .4byte _08017C08
_08017794: .4byte _08017C08
_08017798: .4byte _08017C08
_0801779C: .4byte _08017C08
_080177A0: .4byte _08017C08
_080177A4: .4byte _08017C08
_080177A8: .4byte _08017C08
_080177AC: .4byte _08017C08
_080177B0: .4byte _08017C08
_080177B4: .4byte _08017C08
_080177B8: .4byte _08017C08
_080177BC: .4byte _08017C08
_080177C0: .4byte _08017C08
_080177C4: .4byte _08017C08
_080177C8: .4byte _08017C08
_080177CC: .4byte _08017C08
_080177D0: .4byte _08017C08
_080177D4: .4byte _08017C08
_080177D8: .4byte _08017C08
_080177DC: .4byte _08017C08
_080177E0: .4byte _08017C08
_080177E4: .4byte _08017C08
_080177E8: .4byte _08017C08
_080177EC: .4byte _08017C08
_080177F0: .4byte _08017C08
_080177F4: .4byte _08017C08
_080177F8: .4byte _08017C08
_080177FC: .4byte _08017C08
_08017800: .4byte _08017C08
_08017804: .4byte _08017C08
_08017808: .4byte _08017C08
_0801780C: .4byte _08017C08
_08017810: .4byte _08017C08
_08017814: .4byte _08017C08
_08017818: .4byte _08017C08
_0801781C: .4byte _08017C08
_08017820: .4byte _08017C08
_08017824: .4byte _08017C08
_08017828: .4byte _08017C08
_0801782C: .4byte _08017C08
_08017830: .4byte _08017C08
_08017834: .4byte _08017C08
_08017838: .4byte _08017C08
_0801783C: .4byte _08017C08
_08017840: .4byte _08017C08
_08017844: .4byte _08017C08
_08017848: .4byte _08017C08
_0801784C: .4byte _08017C08
_08017850: .4byte _08017C08
_08017854: .4byte _08017C08
_08017858: .4byte _08017C08
_0801785C: .4byte _08017C08
_08017860: .4byte _08017C08
_08017864: .4byte _08017C08
_08017868: .4byte _08017C08
_0801786C: .4byte _08017C08
_08017870: .4byte _08017C08
_08017874:
	movs r0, #0
	strh r0, [r5, #6]
	strh r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1, #0]
	ldr r3, [sp, #8]
	cmp r3, #0
	bne _08017888
	b _08017C56
_08017888:
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r5, r4
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bhi _0801789E
	b _08017C56
_0801789E:
	ldr r7, _080178A4
	adds r0, r5, r7
	b _0801790A
_080178A4: .4byte 0x00000201
_080178A8:
	movs r0, #0
	strh r0, [r5, #6]
	strh r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1, #0]
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _080178BC
	b _08017C56
_080178BC:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bhi _080178D2
	b _08017C56
_080178D2:
	ldr r3, _080178D8
	adds r0, r5, r3
	b _0801790A
_080178D8: .4byte 0x00000201
_080178DC:
	movs r0, #0
	strh r0, [r5, #6]
	strh r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1, #0]
	ldr r4, [sp, #8]
	cmp r4, #0
	bne _080178F0
	b _08017C56
_080178F0:
	movs r7, #0xff
	lsls r7, r7, #1
	adds r1, r5, r7
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x5a
	bhi _08017906
	b _08017C56
_08017906:
	ldr r1, _08017914
	adds r0, r5, r1
_0801790A:
	ldrb r1, [r0, #0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0]
	b _08017C56
_08017914: .4byte 0x00000201
_08017918:
	mov r0, r9
	adds r0, #0x48
	ldrh r1, [r0, #0]
	adds r0, r5, #0
	bl sub_08016D40
	movs r2, #0
	strh r2, [r5, #6]
	ldr r3, [sp, #8]
	cmp r3, #0
	bne _08017930
	b _08017C56
_08017930:
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08017940
	strh r2, [r5, #4]
_08017940:
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _08017948
	b _08017C56
_08017948:
	ldr r4, _0801795C
	adds r2, r5, r4
	ldrb r1, [r2, #0]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #0]
	ldr r0, _08017960
	adds r0, r6, r0
	b _08017B04
	.2byte 0x0000
_0801795C: .4byte 0x00000201
_08017960: .4byte gUnk_084790B4
_08017964:
	mov r0, r9
	adds r0, #0x4a
	ldrh r1, [r0, #0]
	adds r0, r5, #0
	bl sub_08016D40
	movs r2, #0
	strh r2, [r5, #6]
	ldr r7, [sp, #8]
	cmp r7, #0
	bne _0801797C
	b _08017C56
_0801797C:
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801798C
	strh r2, [r5, #4]
_0801798C:
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _08017994
	b _08017C56
_08017994:
	ldr r0, _080179A8
	adds r2, r5, r0
	ldrb r1, [r2, #0]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #0]
	ldr r0, _080179AC
	adds r0, r6, r0
	b _08017B04
	.2byte 0x0000
_080179A8: .4byte 0x00000201
_080179AC: .4byte gUnk_084790B4
_080179B0:
	mov r2, r9
	adds r2, #0x48
	ldr r1, _08017A14
	mov r9, r1
	ldr r1, _08017A18
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r5, r3
	ldrb r0, [r0, #0]
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	add r0, r9
	ldrb r1, [r0, #0]
	ldrh r3, [r2, #0]
	adds r4, r5, #0
	adds r4, #0x24
	mov r0, r8
	lsls r0, r0, #8
	str r0, [sp, #0xc]
	lsls r7, r7, #8
	str r7, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r3
	cmp r0, #0
	beq _080179E6
	movs r3, #0
_080179E6:
	ldr r2, _08017A1C
	ldr r0, _08017A20
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r3, r0
	ldr r7, [sp, #0x10]
	adds r0, r0, r7
	str r0, [r4, #4]
	ldrh r0, [r1, #0]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r3, r0
	ldr r2, [sp, #0xc]
	b _08017A84
	.2byte 0x0000
_08017A14: .4byte gUnk_084790B4
_08017A18: .4byte gUnk_084790C4
_08017A1C: .4byte gUnk_080B9704
_08017A20: .4byte gUnk_0847AD0A
_08017A24:
	mov r2, r9
	adds r2, #0x4a
	ldr r0, _08017B0C
	mov r9, r0
	ldr r1, _08017B10
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r5, r3
	ldrb r0, [r0, #0]
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	add r0, r9
	ldrb r1, [r0, #0]
	ldrh r3, [r2, #0]
	adds r4, r5, #0
	adds r4, #0x24
	mov r0, r8
	lsls r0, r0, #8
	str r0, [sp, #0x14]
	lsls r7, r7, #8
	str r7, [sp, #0x18]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r3
	cmp r0, #0
	beq _08017A5A
	movs r3, #0
_08017A5A:
	ldr r2, _08017B14
	ldr r0, _08017B18
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r3, r0
	ldr r7, [sp, #0x18]
	adds r0, r0, r7
	str r0, [r4, #4]
	ldrh r0, [r1, #0]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r3, r0
	ldr r2, [sp, #0x14]
_08017A84:
	adds r0, r0, r2
	str r0, [r5, #0x24]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	str r0, [r4, #4]
	ldr r0, [r5, #0x24]
	asrs r0, r0, #8
	str r0, [r5, #0x24]
	ldr r0, _08017B1C
	ldr r0, [r0, #0]
	movs r1, #0x19
	bl __umodsi3
	ldrh r2, [r5, #0]
	lsls r1, r2, #2
	adds r1, r1, r2
	cmp r0, r1
	bne _08017ABA
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	movs r4, #8
	str r4, [sp, #0]
	bl sub_08016C88
	strh r0, [r5, #4]
_08017ABA:
	adds r1, r5, #0
	adds r1, #0x44
	ldrh r0, [r1, #0]
	adds r0, #1
	movs r2, #0
	strh r0, [r1, #0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _08017AD2
	strh r2, [r1, #0]
	strh r2, [r5, #4]
_08017AD2:
	strh r2, [r5, #6]
	ldr r3, [sp, #8]
	cmp r3, #0
	bne _08017ADC
	b _08017C56
_08017ADC:
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08017AEC
	strh r2, [r5, #4]
_08017AEC:
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _08017AF4
	b _08017C56
_08017AF4:
	ldr r4, _08017B20
	adds r2, r5, r4
	ldrb r1, [r2, #0]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #0]
	mov r7, r9
	adds r0, r6, r7
_08017B04:
	ldrb r0, [r0, #0]
	strh r0, [r5, #8]
	b _08017C56
	.2byte 0x0000
_08017B0C: .4byte gUnk_084790B4
_08017B10: .4byte gUnk_084790C4
_08017B14: .4byte gUnk_080B9704
_08017B18: .4byte gUnk_0847AD0A
_08017B1C: .4byte gUnk_03002344
_08017B20: .4byte 0x00000201
_08017B24:
	ldr r0, _08017B5C
	adds r0, r6, r0
	ldrb r0, [r0, #0]
	movs r1, #0
	strh r0, [r5, #8]
	movs r0, #1
	strh r0, [r5, #6]
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x42
	strh r1, [r0, #0]
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _08017B42
	b _08017C56
_08017B42:
	adds r0, r5, #0
	adds r0, #0x74
	movs r2, #0x89
	lsls r2, r2, #2
	adds r1, r5, r2
	ldrh r0, [r0, #0]
	ldrh r1, [r1, #0]
	cmp r0, r1
	bhi _08017B56
	b _08017C56
_08017B56:
	ldr r3, _08017B60
	adds r2, r5, r3
	b _08017C4E
_08017B5C: .4byte gUnk_084790B4
_08017B60: .4byte 0x00000201
_08017B64:
	movs r1, #0
	movs r0, #1
	strh r0, [r5, #6]
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x42
	strh r1, [r0, #0]
	ldr r4, [sp, #8]
	cmp r4, #0
	beq _08017C56
	movs r7, #0xff
	lsls r7, r7, #1
	adds r2, r5, r7
	ldrb r0, [r2, #0]
	cmp r0, #1
	beq _08017BB8
	cmp r0, #1
	bgt _08017B8E
	cmp r0, #0
	beq _08017B94
	b _08017C56
_08017B8E:
	cmp r0, #2
	beq _08017BC2
	b _08017C56
_08017B94:
	ldr r0, _08017BB4
	adds r0, r6, r0
	ldrb r0, [r0, #0]
	strh r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x74
	movs r3, #0x89
	lsls r3, r3, #2
	adds r1, r5, r3
	ldrh r0, [r0, #0]
	ldrh r1, [r1, #0]
	cmp r0, r1
	bls _08017C56
	ldrb r0, [r2, #0]
	adds r0, #1
	b _08017C54
_08017BB4: .4byte gUnk_084790B4
_08017BB8:
	ldrh r0, [r5, #0xc]
	cmp r0, #0
	bne _08017C56
	movs r0, #2
	b _08017C54
_08017BC2:
	ldr r4, _08017BC8
	adds r2, r5, r4
	b _08017C4E
_08017BC8: .4byte 0x00000201
_08017BCC:
	ldr r0, _08017C00
	adds r0, r6, r0
	ldrb r0, [r0, #0]
	movs r1, #0
	strh r0, [r5, #8]
	movs r0, #2
	strh r0, [r5, #6]
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x42
	strh r1, [r0, #0]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq _08017C56
	adds r0, #0x32
	movs r2, #0x89
	lsls r2, r2, #2
	adds r1, r5, r2
	ldrh r0, [r0, #0]
	ldrh r1, [r1, #0]
	cmp r0, r1
	bls _08017C56
	ldr r3, _08017C04
	adds r2, r5, r3
	b _08017C4E
	.2byte 0x0000
_08017C00: .4byte gUnk_084790B4
_08017C04: .4byte 0x00000201
_08017C08:
	ldr r0, _08017C34
	adds r0, r6, r0
	ldrb r0, [r0, #0]
	strh r0, [r5, #8]
	movs r0, #2
	strh r0, [r5, #6]
	strh r0, [r5, #4]
	ldr r4, [sp, #8]
	cmp r4, #0
	beq _08017C56
	adds r0, r5, #0
	adds r0, #0x74
	movs r7, #0x89
	lsls r7, r7, #2
	adds r1, r5, r7
	ldrh r0, [r0, #0]
	ldrh r1, [r1, #0]
	cmp r0, r1
	bls _08017C56
	ldr r0, _08017C38
	adds r2, r5, r0
	b _08017C4E
_08017C34: .4byte gUnk_084790B4
_08017C38: .4byte 0x00000201
_08017C3C:
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r1, [r0, #0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08017C56
	ldr r1, _08017C68
	adds r2, r5, r1
_08017C4E:
	ldrb r1, [r2, #0]
	movs r0, #1
	orrs r0, r1
_08017C54:
	strb r0, [r2, #0]
_08017C56:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08017C68: .4byte 0x00000201
	thumb_func_end sub_08016F28
