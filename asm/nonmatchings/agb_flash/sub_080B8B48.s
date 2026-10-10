	thumb_func_start sub_080B8B48
sub_080B8B48: @ 0x080B8B48
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	movs r0, #0
	mov r8, r0
	adds r0, r4, #0
	bl sub_080B86D8
	ldr r7, _080B8B70
	movs r0, #0xc0
	lsls r0, r0, #8
	orrs r4, r0
	lsls r4, r4, #0x10
	b _080B8B94
_080B8B70: .4byte gUnk_030076D4
_080B8B74:
	ldr r0, _080B8B8C
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x14]
	cmp r0, #0xc2
	bne _080B8B84
	ldr r1, _080B8B90
	movs r0, #0xf0
	strb r0, [r1, #0]
_080B8B84:
	lsrs r4, r4, #0x10
	mov r8, r4
	b _080B8BBC
	.2byte 0x0000
_080B8B8C: .4byte gUnk_030076E0
_080B8B90: .4byte 0x0E005555
_080B8B94:
	ldr r1, [r7, #0]
	adds r0, r5, #0
	bl sub_080B8F28
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	beq _080B8BBC
	ldr r0, _080B8BCC
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080B8B94
	ldr r1, [r7, #0]
	adds r0, r5, #0
	bl sub_080B8F28
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _080B8B74
_080B8BBC:
	bl sub_080B8780
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080B8BCC: .4byte gUnk_030076D0
	thumb_func_end sub_080B8B48
