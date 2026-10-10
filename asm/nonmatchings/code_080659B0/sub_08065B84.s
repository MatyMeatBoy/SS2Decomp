	thumb_func_start sub_08065B84
sub_08065B84: @ 0x08065B84
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08065B98
	ldr r0, [r0, #0]
	mov r8, r0
	movs r4, #0
_08065B92:
	lsls r6, r4, #2
	adds r7, r4, #1
	b _08065BA0
_08065B98: .4byte gUnk_03006030
_08065B9C:
	bl sub_080003F0
_08065BA0:
	adds r0, r6, r4
	lsls r0, r0, #3
	add r0, r8
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _08065B9C
	adds r4, r7, #0
	cmp r4, #3
	bls _08065B92
	ldr r4, _08065BCC
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r4, #0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08065BCC: .4byte gUnk_03006030
	thumb_func_end sub_08065B84
