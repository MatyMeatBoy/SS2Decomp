	thumb_func_start sub_08016A7C
sub_08016A7C: @ 0x08016A7C
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r0, _08016B20
	ldr r3, [r0, #0]
	movs r4, #0
	movs r2, #0
	ldr r0, _08016B24
	movs r7, #1
	ldr r5, [r0, #0]
_08016A94:
	adds r1, r7, #0
	lsls r1, r2
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08016AA8
	ldr r0, [r3, #0x2c]
	cmp r0, r6
	bne _08016AA8
	orrs r4, r1
_08016AA8:
	adds r2, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r3, r3, r0
	cmp r2, #4
	bls _08016A94
	adds r7, r4, #0
	movs r3, #0
	movs r5, #1
	ldr r1, _08016B20
	mov r8, r1
	movs r4, #0
	movs r1, #0xb8
	lsls r1, r1, #2
	mov ip, r1
_08016AC6:
	adds r0, r5, #0
	lsls r0, r3
	ands r0, r7
	cmp r0, #0
	beq _08016AE0
	mov r1, r8
	ldr r0, [r1, #0]
	adds r0, r4, r0
	adds r0, #0x7a
	ldrh r2, [r0, #0]
	adds r1, r5, #0
	orrs r1, r2
	strh r1, [r0, #0]
_08016AE0:
	add r4, ip
	adds r3, #1
	cmp r3, #4
	bls _08016AC6
	movs r2, #0
	ldr r7, _08016B28
	movs r5, #1
	ldr r4, _08016B2C
	movs r3, #0xff
_08016AF2:
	ldrh r0, [r7, #0]
	asrs r0, r2
	ands r0, r5
	cmp r0, #0
	beq _08016B0E
	ldr r0, [r4, #0]
	lsls r1, r2, #3
	adds r1, r1, r0
	ldr r0, [r1, #0]
	cmp r0, r6
	bne _08016B0E
	ldrb r0, [r1, #4]
	orrs r0, r3
	strb r0, [r1, #4]
_08016B0E:
	adds r2, #1
	cmp r2, #1
	bls _08016AF2
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08016B20: .4byte gUnk_030056F4
_08016B24: .4byte gUnk_030056FC
_08016B28: .4byte gUnk_03005724
_08016B2C: .4byte gUnk_030042E8
	thumb_func_end sub_08016A7C
