	thumb_func_start sub_080B85D8
sub_080B85D8: @ 0x080B85D8
	push {r4, r5, lr}
	sub sp, #0x44
	mov r0, sp
	bl sub_080B87C8
	mov r5, sp
	adds r5, #1
	ldr r2, _080B8600
	movs r0, #0xaa
	strb r0, [r2, #0]
	ldr r1, _080B8604
	movs r0, #0x55
	strb r0, [r1, #0]
	movs r0, #0x90
	strb r0, [r2, #0]
	add r1, sp, #0x40
	ldr r2, _080B8608
	adds r0, r2, #0
	b _080B8610
	.2byte 0x0000
_080B8600: .4byte 0x0E005555
_080B8604: .4byte 0x0E002AAA
_080B8608: .4byte 0x00004E20
_080B860C:
	ldrh r0, [r1, #0]
	subs r0, #1
_080B8610:
	strh r0, [r1, #0]
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _080B860C
	ldr r0, _080B864C
	bl sub_080B8F38
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x10
	movs r0, #0xe0
	lsls r0, r0, #0x14
	bl sub_080B8F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	orrs r4, r0
	ldr r1, _080B8650
	movs r0, #0xaa
	strb r0, [r1, #0]
	ldr r2, _080B8654
	movs r0, #0x55
	strb r0, [r2, #0]
	movs r0, #0xf0
	strb r0, [r1, #0]
	strb r0, [r1, #0]
	add r1, sp, #0x40
	ldr r2, _080B8658
	adds r0, r2, #0
	b _080B8660
	.2byte 0x0000
_080B864C: .4byte 0x0E000001
_080B8650: .4byte 0x0E005555
_080B8654: .4byte 0x0E002AAA
_080B8658: .4byte 0x00004E20
_080B865C:
	ldrh r0, [r1, #0]
	subs r0, #1
_080B8660:
	strh r0, [r1, #0]
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _080B865C
	adds r0, r4, #0
	add sp, #0x44
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_080B85D8
