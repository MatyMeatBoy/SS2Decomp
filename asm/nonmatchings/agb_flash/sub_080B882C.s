	thumb_func_start sub_080B882C
sub_080B882C: @ 0x080B882C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x80
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	lsls r3, r0, #0x10
	lsrs r4, r3, #0x10
	ldr r2, _080B8878
	ldrh r0, [r2, #0]
	ldr r1, _080B887C
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r0, _080B8880
	ldr r0, [r0, #0]
	ldr r1, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _080B8864
	lsrs r0, r3, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_080B85B4
	movs r0, #0xf
	ands r4, r0
_080B8864:
	ldr r3, _080B8884
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _080B8888
	ldr r1, _080B8884
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _080B8898
	.2byte 0x0000
_080B8878: .4byte 0x04000204
_080B887C: .4byte 0x0000FFFC
_080B8880: .4byte gUnk_030076E0
_080B8884: .4byte sub_080B8808
_080B8888: .4byte sub_080B882C
_080B888C:
	ldrh r0, [r3, #0]
	strh r0, [r2, #0]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_080B8898:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080B888C
	mov r3, sp
	adds r3, #1
	ldr r0, _080B88C4
	ldr r0, [r0, #0]
	ldrb r0, [r0, #8]
	lsls r4, r0
	adds r0, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r5, r2
	adds r0, r0, r1
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_080B8F30
	add sp, #0x80
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B88C4: .4byte gUnk_030076E0
	thumb_func_end sub_080B882C
