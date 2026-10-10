	thumb_func_start sub_08069A30
sub_08069A30: @ 0x08069A30
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov ip, r1
	mov r8, r2
	ldr r0, [sp, #0x18]
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r5, #0
	ldr r4, _08069AD8
	movs r1, #1
	ldr r0, [r4, #0]
	ands r0, r1
	cmp r0, #0
	beq _08069A68
	movs r2, #1
_08069A56:
	adds r5, #1
	cmp r5, #0x1f
	bhi _08069ACE
	adds r1, r2, #0
	lsls r1, r5
	ldr r0, [r4, #0]
	ands r0, r1
	cmp r0, #0
	bne _08069A56
_08069A68:
	cmp r5, #0x1f
	bhi _08069ACE
	ldr r1, _08069ADC
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, [r1, #0]
	adds r4, r1, r0
	asrs r0, r6, #8
	strh r0, [r4, #0]
	mov r1, ip
	asrs r0, r1, #8
	strh r0, [r4, #2]
	mov r0, r8
	strh r0, [r4, #8]
	strh r5, [r4, #0xa]
	strh r7, [r4, #4]
	strh r3, [r4, #6]
	movs r0, #0xa0
	lsls r0, r0, #3
	bl sub_08001494
	adds r2, r0, #0
	ldr r0, _08069AE0
	ldr r1, [r0, #0]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r1, r0, r1
	str r2, [r1, #0x20]
	cmp r2, #0
	beq _08069ACE
	movs r0, #0x34
	str r0, [r1, #8]
	ldr r0, _08069AE4
	str r0, [r1, #0xc]
	ldr r3, _08069AE8
	adds r0, r2, r3
	str r0, [r1, #0x10]
	movs r0, #0
	str r0, [r1, #0x24]
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08000274
	ldr r2, _08069AD8
	movs r1, #1
	lsls r1, r5
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
_08069ACE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08069AD8: .4byte gUnk_0300641C
_08069ADC: .4byte gUnk_03006420
_08069AE0: .4byte gUnk_03006370
_08069AE4: .4byte sub_080698D4
_08069AE8: .4byte 0x000004FC
	thumb_func_end sub_08069A30
