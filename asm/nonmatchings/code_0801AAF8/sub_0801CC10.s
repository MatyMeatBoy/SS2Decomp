	thumb_func_start sub_0801CC10
sub_0801CC10: @ 0x0801CC10
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	bl sub_080020F4
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	ldr r1, _0801CC88
	adds r0, r0, r1
	mov ip, r0
	adds r0, r4, #0
	muls r0, r2, r0
	adds r5, r0, r1
	mov r0, ip
	adds r0, #0x8c
	ldr r2, [r0, #0]
	lsls r2, r2, #5
	adds r0, #4
	ldr r0, [r0, #0]
	lsls r0, r0, #5
	lsrs r3, r0, #0x10
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r4, r0, #0x17
	asrs r2, r2, #0x10
	lsrs r1, r1, #7
	subs r0, r2, r1
	cmp r0, #0
	bge _0801CC58
	negs r0, r0
_0801CC58:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r0, #0
	bge _0801CC6C
	negs r0, r0
_0801CC6C:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp ip, r5
	bne _0801CC8C
	mov r0, ip
	adds r0, #0xc4
	ldrh r2, [r0, #0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r3, r0, #0
	cmp r1, #0
	ble _0801CCAE
	adds r0, r2, r6
	b _0801CCAC
_0801CC88: .4byte gUnk_03003CE0
_0801CC8C:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r3, ip
	adds r3, #0xc4
	cmp r0, #0xd
	bgt _0801CCAE
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	bgt _0801CCAE
	ldrh r1, [r3, #0]
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #0
	ble _0801CCAE
	adds r0, r1, r6
_0801CCAC:
	strh r0, [r3, #0]
_0801CCAE:
	mov r0, ip
	adds r0, #0x62
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldrh r2, [r0, #0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	ble _0801CCC2
	strh r2, [r3, #0]
_0801CCC2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_0801CC10
