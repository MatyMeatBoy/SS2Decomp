	thumb_func_start sub_0801E024
sub_0801E024: @ 0x0801E024
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x64
	ldrh r7, [r5, #0]
	adds r6, r4, #0
	adds r6, #0x66
	ldrb r0, [r6, #0]
	mov r8, r0
	adds r2, r4, #0
	adds r2, #0x38
	adds r3, r4, #0
	adds r3, #0x58
	ldr r1, _0801E09C
	mov r9, r1
	ldr r0, [r1, #0]
	adds r0, #0x30
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0801BA74
	adds r2, r4, #0
	adds r2, #0xc4
	adds r0, r4, #0
	adds r0, #0x62
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r3, [r0, #0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	ble _0801E070
	strh r3, [r2, #0]
_0801E070:
	ldrh r5, [r5, #0]
	cmp r7, r5
	bne _0801E07C
	ldrb r6, [r6, #0]
	cmp r8, r6
	beq _0801E08C
_0801E07C:
	bl sub_0806617C
	mov r1, r9
	ldr r0, [r1, #0]
	adds r0, #0x68
	ldrh r0, [r0, #0]
	bl sub_0805AD78
_0801E08C:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0801E09C: .4byte gUnk_030034E0
	thumb_func_end sub_0801E024
