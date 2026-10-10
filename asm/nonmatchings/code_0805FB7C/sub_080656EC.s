	thumb_func_start sub_080656EC
sub_080656EC: @ 0x080656EC
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r0, _08065708
	ldr r0, [r0, #0]
	adds r0, #4
	mov r9, r0
	movs r6, #0
_080656FE:
	lsls r7, r6, #2
	adds r0, r6, #1
	mov r8, r0
	b _08065712
	.2byte 0x0000
_08065708: .4byte gUnk_0300602C
_0806570C:
	adds r0, r4, #0
	bl sub_080003A8
_08065712:
	adds r0, r7, r6
	lsls r0, r0, #3
	mov r1, r9
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _0806570C
	mov r6, r8
	cmp r6, #0x1d
	bls _080656FE
	ldr r4, _08065744
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r4, #0]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08065744: .4byte gUnk_0300602C
	thumb_func_end sub_080656EC
