	thumb_func_start sub_080B8BD0
sub_080B8BD0: @ 0x080B8BD0
	push {r4, r5, r6, lr}
	sub sp, #0x40
	ldr r5, _080B8C2C
	ldrh r1, [r5, #0]
	ldr r6, _080B8C30
	ands r1, r6
	ldr r0, _080B8C34
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	orrs r1, r0
	strh r1, [r5, #0]
	ldr r1, _080B8C38
	movs r4, #0xaa
	strb r4, [r1, #0]
	ldr r3, _080B8C3C
	movs r2, #0x55
	strb r2, [r3, #0]
	movs r0, #0x80
	strb r0, [r1, #0]
	strb r4, [r1, #0]
	strb r2, [r3, #0]
	movs r0, #0x10
	strb r0, [r1, #0]
	mov r0, sp
	bl sub_080B87C8
	ldr r0, _080B8C40
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r3, [r0, #0]
	movs r0, #3
	movs r2, #0xff
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5, #0]
	ands r1, r6
	movs r2, #3
	orrs r1, r2
	strh r1, [r5, #0]
	add sp, #0x40
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000
_080B8C2C: .4byte 0x04000204
_080B8C30: .4byte 0x0000FFFC
_080B8C34: .4byte gUnk_030076E0
_080B8C38: .4byte 0x0E005555
_080B8C3C: .4byte 0x0E002AAA
_080B8C40: .4byte gUnk_030076D8
	thumb_func_end sub_080B8BD0
