	thumb_func_start sub_080B8C44
sub_080B8C44: @ 0x080B8C44
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x40
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bhi _080B8CCC
	ldr r6, _080B8CB4
	ldrh r1, [r6, #0]
	ldr r0, _080B8CB8
	mov r8, r0
	ands r1, r0
	ldr r0, _080B8CBC
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r6, #0]
	ldrb r4, [r2, #8]
	lsls r3, r4
	adds r4, r3, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r4, r4, r2
	ldr r1, _080B8CC0
	movs r5, #0xaa
	strb r5, [r1, #0]
	ldr r3, _080B8CC4
	movs r2, #0x55
	strb r2, [r3, #0]
	movs r0, #0x80
	strb r0, [r1, #0]
	strb r5, [r1, #0]
	strb r2, [r3, #0]
	movs r0, #0x30
	strb r0, [r4, #0]
	mov r0, sp
	bl sub_080B87C8
	ldr r0, _080B8CC8
	ldr r3, [r0, #0]
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0xff
	bl sub_080B8F30
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6, #0]
	mov r2, r8
	ands r1, r2
	movs r2, #3
	orrs r1, r2
	strh r1, [r6, #0]
	b _080B8CCE
	.2byte 0x0000
_080B8CB4: .4byte 0x04000204
_080B8CB8: .4byte 0x0000FFFC
_080B8CBC: .4byte gUnk_030076E0
_080B8CC0: .4byte 0x0E005555
_080B8CC4: .4byte 0x0E002AAA
_080B8CC8: .4byte gUnk_030076D8
_080B8CCC:
	ldr r0, _080B8CDC
_080B8CCE:
	add sp, #0x40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000
_080B8CDC: .4byte 0x000080FF
	thumb_func_end sub_080B8C44
