	thumb_func_start sub_08016E04
sub_08016E04: @ 0x08016E04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	movs r4, #0
	ldr r5, _08016E50
	movs r3, #0x80
	lsls r3, r3, #0xb
	movs r2, #0
_08016E20:
	movs r1, #1
	lsls r1, r4
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _08016E58
	ldr r1, _08016E54
	adds r0, r2, r1
	ldr r0, [r0, #0]
	cmp r0, r8
	bne _08016E58
	adds r0, r1, #4
	adds r0, r2, r0
	ldr r0, [r0, #0]
	cmp r0, ip
	bne _08016E58
	adds r0, r1, #0
	adds r0, #8
	adds r0, r2, r0
	ldr r1, [r0, #0]
	adds r1, #1
	str r1, [r0, #0]
	lsrs r0, r3, #0x10
	b _08016EBE
_08016E50: .4byte gUnk_030056F8
_08016E54: .4byte gUnk_03005700
_08016E58:
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
	adds r2, #0xc
	adds r4, #1
	cmp r4, #2
	bls _08016E20
	movs r4, #0
	ldr r0, _08016EA4
	mov sl, r0
	movs r7, #1
	movs r6, #0x80
	lsls r6, r6, #0xb
	ldr r3, _08016EA8
	movs r5, #0
	adds r0, r3, #4
	mov r9, r0
_08016E7A:
	adds r1, r7, #0
	lsls r1, r4
	mov r0, sl
	ldr r2, [r0, #0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08016EAC
	mov r4, r8
	str r4, [r3, #0]
	mov r4, r9
	adds r0, r5, r4
	mov r4, ip
	str r4, [r0, #0]
	str r7, [r3, #8]
	orrs r2, r1
	ldr r0, _08016EA4
	str r2, [r0, #0]
	lsrs r0, r6, #0x10
	b _08016EBE
	.2byte 0x0000
_08016EA4: .4byte gUnk_030056F8
_08016EA8: .4byte gUnk_03005700
_08016EAC:
	movs r0, #0x80
	lsls r0, r0, #9
	adds r6, r6, r0
	adds r3, #0xc
	adds r5, #0xc
	adds r4, #1
	cmp r4, #2
	bls _08016E7A
	subs r0, #1
_08016EBE:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08016E04
