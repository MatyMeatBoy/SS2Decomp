	thumb_func_start sub_08068F9C
sub_08068F9C: @ 0x08068F9C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r2, [r5, #0]
	cmp r2, #3
	bhi _08068FBC
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r2, r0
	ldr r1, _08068FB8
	adds r0, r0, r1
	movs r1, #0x3c
	ldrsh r4, [r0, r1]
	b _08068FD4
_08068FB8: .4byte gUnk_03003CE0
_08068FBC:
	ldr r0, _08069008
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	subs r1, r1, r2
	lsls r1, r1, #5
	ldr r0, [r0, #0]
	adds r1, r1, r0
	ldr r3, _0806900C
	adds r1, r1, r3
	movs r0, #0
	ldrsh r4, [r1, r0]
_08068FD4:
	bl sub_080008C8
	movs r1, #0x14
	bl __umodsi3
	adds r6, r0, #0
	adds r6, #0x64
	ldr r0, [r5, #0xc]
	cmp r0, #0x13
	beq _08069014
	adds r0, r4, #0
	adds r0, #0xf
	bl Sqrt
	ldr r3, _08069010
	ldr r2, [r5, #0xc]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	ldr r1, [r5, #0x14]
	adds r1, #1
	muls r2, r1, r2
	b _08069030
_08069008: .4byte gUnk_030056F4
_0806900C: .4byte 0xFFFFF688
_08069010: .4byte gUnk_084EBF1C
_08069014:
	adds r0, r4, #0
	adds r0, #0xf
	bl Sqrt
	ldr r3, _08069070
	ldr r2, [r5, #0x14]
	lsrs r1, r2, #0x10
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r3, [r1, #0]
	ldr r1, _08069074
	ands r2, r1
	adds r2, #1
	muls r2, r3, r2
_08069030:
	ldr r1, [r5, #0x10]
	adds r1, #0x14
	muls r1, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	muls r0, r1, r0
	muls r0, r6, r0
	ldr r1, _08069078
	bl __udivsi3
	adds r3, r0, #0
	cmp r7, #0
	beq _08069066
	ldr r2, _0806907C
	ldr r1, [r5, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0, #2]
	lsls r1, r3, #0x10
	lsrs r1, r1, #0x10
	adds r2, r7, #0
	bl sub_08021D00
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08069066:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08069070: .4byte gUnk_084EC15C
_08069074: .4byte 0x0000FFFF
_08069078: .4byte 0x00006978
_0806907C: .4byte gUnk_084EBF1C
	thumb_func_end sub_08068F9C
