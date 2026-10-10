	thumb_func_start sub_08006550
sub_08006550: @ 0x08006550
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r5, _080065A8
	adds r0, r5, #0
	bl sub_08000470
	adds r6, r0, #0
	cmp r6, #0
	bne _0800659C
	lsls r4, r4, #0x10
	orrs r4, r7
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r5, #0x20]
	ldr r1, _080065AC
	str r1, [r5, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5, #0x10]
	movs r0, #0xa
	str r0, [r5, #8]
	str r6, [r5, #0x24]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl sub_08000274
_0800659C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080065A8: .4byte gUnk_030061E0
_080065AC: .4byte sub_08005A24
	thumb_func_end sub_08006550
