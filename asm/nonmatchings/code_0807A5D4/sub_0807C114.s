	thumb_func_start sub_0807C114
sub_0807C114: @ 0x0807C114
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r4, _0807C158
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x20]
	bl sub_0807BD78
	ldr r0, [r4, #0]
	adds r0, #0xf4
	bl sub_0805AE94
	adds r2, r0, #0
	ldr r4, [r4, #0]
	adds r1, r4, #0
	adds r1, #0xf4
	ldrh r0, [r1, #0]
	cmp r0, #0xa
	beq _0807C16C
	cmp r0, #5
	bgt _0807C15C
	cmp r0, #2
	blt _0807C15C
	adds r0, r4, #0
	adds r0, #0xfc
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0807C16A
	adds r0, r2, #0
	movs r1, #0xa
	bl __udivsi3
	adds r2, r0, #0
	b _0807C16C
_0807C158: .4byte gUnk_03006440
_0807C15C:
	adds r0, r2, #0
	movs r1, #0xa
	bl __udivsi3
	adds r2, r0, #0
	cmp r2, #0
	bne _0807C16C
_0807C16A:
	movs r2, #1
_0807C16C:
	mov r0, sp
	movs r5, #0
	movs r1, #0xa
	strh r1, [r0, #0]
	str r2, [sp, #4]
	bl sub_0805AB20
	cmp r0, #0
	bne _0807C19C
	ldr r0, _0807C198
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #0x20]
	adds r2, #0xf4
	bl sub_0807BEA0
	movs r0, #0x61
	bl sub_0805865C
	movs r0, #0
	b _0807C1C8
	.2byte 0x0000
_0807C198: .4byte gUnk_03006440
_0807C19C:
	ldr r4, _0807C1D0
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x1c]
	str r0, [r1, #0x18]
	ldr r0, [r1, #0x20]
	str r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #8]
	add r0, sp, #0x10
	str r5, [sp, #0x10]
	adds r1, #0xf4
	ldr r2, _0807C1D4
	bl CpuSet
	ldr r1, [r4, #0]
	movs r0, #0x16
	str r0, [r1, #0x1c]
	str r5, [r1, #0x20]
	movs r0, #0x63
	bl sub_0805865C
	movs r0, #1
_0807C1C8:
	add sp, #0x14
	pop {r4, r5}
	pop {r1}
	bx r1
_0807C1D0: .4byte gUnk_03006440
_0807C1D4: .4byte 0x05000004
	thumb_func_end sub_0807C114
