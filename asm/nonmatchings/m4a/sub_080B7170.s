	thumb_func_start sub_080B7170
sub_080B7170: @ 0x080B7170
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080B71D8
	movs r1, #2
	negs r1, r1
	ands r0, r1
	ldr r1, _080B71DC
	ldr r2, _080B71E0
	bl sub_080B8578
	ldr r0, _080B71E4
	bl sub_080B7548
	ldr r0, _080B71E8
	bl sub_080B73F8
	ldr r0, _080B71EC
	bl sub_080B76B4
	ldr r0, _080B71F0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080B71CC
	ldr r1, _080B71F4
	mov r8, r1
	mov r5, r8
	movs r7, #0
	adds r6, r0, #0
_080B71AC:
	ldr r4, [r5, #0]
	mov r0, r8
	adds r0, #4
	adds r0, r7, r0
	ldr r1, [r0, #0]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl sub_080B7828
	ldr r0, _080B71F8
	str r0, [r4, #0x18]
	adds r5, #0xc
	adds r7, #0xc
	subs r6, #1
	cmp r6, #0
	bne _080B71AC
_080B71CC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080B71D8: .4byte sub_080B656C
_080B71DC: .4byte gUnk_03000E3C
_080B71E0: .4byte 0x04000100
_080B71E4: .4byte gUnk_03006480
_080B71E8: .4byte gUnk_030074C0
_080B71EC: .4byte 0x0093D800
_080B71F0: .4byte 0x00000004
_080B71F4: .4byte gUnk_080BC5DC
_080B71F8: .4byte gUnk_03007680
	thumb_func_end sub_080B7170
