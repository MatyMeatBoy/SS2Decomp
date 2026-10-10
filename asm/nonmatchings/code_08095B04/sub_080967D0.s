	thumb_func_start sub_080967D0
sub_080967D0: @ 0x080967D0
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r7, _08096848
_080967DA:
	adds r0, r6, #0
	adds r1, r0, #1
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	movs r1, #0x5a
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r7
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x12
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809680E
	negs r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0809680E:
	bl sub_0800CCCC
	cmp r0, #0
	bne _08096854
	bl sub_0800CC98
	cmp r0, #0
	bne _08096854
	bl sub_0800CD8C
	cmp r0, #0
	bne _08096854
	bl sub_0800CD34
	cmp r0, #0
	bne _08096854
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_0800BB80
	ldr r0, _0809684C
	ldr r1, [r0, #0]
	ldr r0, _08096850
	ldrh r0, [r0, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	b _0809685C
	.2byte 0x0000
_08096848: .4byte gUnk_080B9704
_0809684C: .4byte gUnk_030034E0
_08096850: .4byte gUnk_0300029C
_08096854:
	ldr r0, _0809688C
	ldr r1, [r0, #0]
	ldr r0, _08096890
	ldrh r0, [r0, #0]
_0809685C:
	strh r0, [r1, #0x18]
	bl sub_080003F0
	lsls r0, r5, #0x10
	ldr r1, _08096894
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	bne _080967DA
	ldr r0, _0809688C
	ldr r1, [r0, #0]
	ldr r0, _08096890
	ldrh r0, [r0, #0]
	movs r2, #0
	strh r0, [r1, #0x18]
	ldr r0, _08096898
	ldr r0, [r0, #0]
	str r2, [r0, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809688C: .4byte gUnk_030034E0
_08096890: .4byte gUnk_0300029C
_08096894: .4byte 0xFFFF0000
_08096898: .4byte gUnk_03000298
	thumb_func_end sub_080967D0
