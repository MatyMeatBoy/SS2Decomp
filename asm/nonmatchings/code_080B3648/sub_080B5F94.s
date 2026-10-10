	thumb_func_start sub_080B5F94
sub_080B5F94: @ 0x080B5F94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _080B6018
	movs r1, #0
	strb r1, [r0, #0]
	ldr r0, _080B601C
	strb r1, [r0, #0]
	ldr r0, _080B6020
	strb r1, [r0, #0]
	movs r5, #0
	movs r4, #0
	movs r7, #0
	movs r0, #6
	mov sl, r0
	movs r1, #0xaa
	mov r9, r1
	movs r0, #0x2a
	mov r8, r0
_080B5FC0:
	ldr r1, _080B6024
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	asrs r0, r0, #6
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #2
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	bl sub_0800CC98
	cmp r0, #0
	bne _080B6060
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B6060
	ldr r0, _080B6020
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _080B6028
	movs r0, #0xf8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	mov r0, r9
	subs r4, r4, r0
	add r5, r8
	asrs r1, r4, #8
	movs r0, #1
	movs r2, #0
	bl sub_0800BBD8
	asrs r1, r5, #8
	movs r0, #3
	movs r2, #0
	bl sub_0800BBD8
	b _080B604C
_080B6018: .4byte gUnk_030007E8
_080B601C: .4byte gUnk_030007E9
_080B6020: .4byte gUnk_030007EA
_080B6024: .4byte gUnk_080B9704
_080B6028:
	movs r1, #8
	mov sl, r1
	movs r0, #0x2a
	mov r9, r0
	movs r1, #0x15
	mov r8, r1
	subs r4, #0x2a
	adds r5, #0x15
	asrs r1, r4, #8
	movs r0, #1
	movs r2, #0
	bl sub_0800BBD8
	asrs r1, r5, #8
	movs r0, #3
	movs r2, #0
	bl sub_0800BBD8
_080B604C:
	adds r3, r6, #0
	movs r0, #0x10
	str r0, [sp, #0]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #2
	movs r1, #0x3c
	movs r2, #1
	bl sub_0800903C
_080B6060:
	bl sub_080003F0
	b _080B5FC0
	thumb_func_end sub_080B5F94
