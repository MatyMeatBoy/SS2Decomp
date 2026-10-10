	thumb_func_start sub_080B88F8
sub_080B88F8: @ 0x080B88F8
	push {r4, r5, lr}
	sub sp, #0x100
	adds r5, r1, #0
	lsls r3, r0, #0x10
	lsrs r4, r3, #0x10
	ldr r2, _080B8940
	ldrh r0, [r2, #0]
	ldr r1, _080B8944
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r0, _080B8948
	ldr r0, [r0, #0]
	ldr r1, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _080B892C
	lsrs r0, r3, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_080B85B4
	movs r0, #0xf
	ands r4, r0
_080B892C:
	ldr r3, _080B894C
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _080B8950
	ldr r1, _080B894C
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _080B8960
	.2byte 0x0000
_080B8940: .4byte 0x04000204
_080B8944: .4byte 0x0000FFFC
_080B8948: .4byte gUnk_030076E0
_080B894C: .4byte sub_080B88C8
_080B8950: .4byte sub_080B88F8
_080B8954:
	ldrh r0, [r3, #0]
	strh r0, [r2, #0]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_080B8960:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080B8954
	mov r3, sp
	adds r3, #1
	ldr r0, _080B898C
	ldr r0, [r0, #0]
	ldrb r1, [r0, #8]
	lsls r4, r1
	adds r1, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r1, r2
	ldrh r2, [r0, #4]
	adds r0, r5, #0
	bl sub_080B8F30
	add sp, #0x100
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000
_080B898C: .4byte gUnk_030076E0
	thumb_func_end sub_080B88F8
