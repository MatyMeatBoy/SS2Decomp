	thumb_func_start sub_080B70CC
sub_080B70CC: @ 0x080B70CC
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _080B70E0
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_080B70E0:
	ldr r3, _080B7128
	adds r0, r6, r3
	ldrb r5, [r0, #0]
	ldr r4, _080B712C
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r5, #4
	ldr r5, [r0, #0]
	lsrs r5, r1
	adds r0, r6, #1
	adds r0, r0, r3
	ldrb r1, [r0, #0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r1, #4
	ldr r0, [r0, #0]
	lsrs r0, r1
	mov r1, ip
	ldr r4, [r1, #4]
	subs r0, r0, r5
	adds r1, r7, #0
	bl sub_080B64D8
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl sub_080B64D8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080B7128: .4byte gUnk_080BB878
_080B712C: .4byte gUnk_080BB92C
	thumb_func_end sub_080B70CC
