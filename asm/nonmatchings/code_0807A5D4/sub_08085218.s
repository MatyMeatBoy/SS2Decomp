	thumb_func_start sub_08085218
sub_08085218: @ 0x08085218
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	ldr r0, _08085234
	ldr r0, [r0, #0]
	movs r1, #0xc4
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r4, [r0, #0]
	movs r6, #0
	b _0808523C
	.2byte 0x0000
_08085234: .4byte gUnk_03006440
_08085238:
	adds r6, #1
	adds r4, #0x28
_0808523C:
	cmp r6, #4
	bhi _0808527C
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08085238
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _08085238
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0808527C
	ldr r0, _08085288
	str r0, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, r8
	bl sub_08000274
_0808527C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08085288: .4byte sub_08085534
	thumb_func_end sub_08085218
