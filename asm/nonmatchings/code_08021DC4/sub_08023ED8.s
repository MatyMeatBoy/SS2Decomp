	thumb_func_start sub_08023ED8
sub_08023ED8: @ 0x08023ED8
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	adds r7, r1, #0
	ldr r6, _08023F18
	lsls r4, r7, #2
	adds r0, r4, r7
	lsls r0, r0, #3
	mov r8, r0
	ldr r5, _08023F1C
	add r5, r8
	ldr r0, [r6, #0]
	adds r0, r0, r5
	bl sub_08000470
	cmp r0, #0
	beq _08023F06
	ldr r0, [r6, #0]
	adds r0, r0, r5
	bl sub_080003A8
_08023F06:
	ldr r0, [r6, #0]
	movs r1, #0xc2
	lsls r1, r1, #5
	adds r0, r0, r1
	add r0, r8
	ldr r1, _08023F20
	str r1, [r0, #0]
	b _08023F28
	.2byte 0x0000
_08023F18: .4byte gUnk_03005CF4
_08023F1C: .4byte 0x00001834
_08023F20: .4byte sub_08023A3C
_08023F24:
	bl sub_080003F0
_08023F28:
	movs r0, #0x80
	lsls r0, r0, #2
	bl sub_08001494
	adds r1, r0, #0
	ldr r0, _08023F84
	ldr r3, [r0, #0]
	adds r0, r4, r7
	lsls r2, r0, #3
	ldr r5, _08023F88
	adds r0, r3, r5
	adds r0, r0, r2
	str r1, [r0, #0]
	cmp r1, #0
	beq _08023F24
	ldr r4, _08023F8C
	adds r0, r3, r4
	adds r0, r0, r2
	movs r5, #0xfe
	lsls r5, r5, #1
	adds r1, r1, r5
	str r1, [r0, #0]
	ldr r1, _08023F90
	adds r0, r3, r1
	adds r0, r0, r2
	movs r1, #0x46
	str r1, [r0, #0]
	adds r4, #0x14
	adds r0, r3, r4
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0, #0]
	ldr r5, _08023F94
	adds r0, r2, r5
	adds r0, r3, r0
	mov r1, r9
	adds r2, r7, #0
	bl sub_08000274
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08023F84: .4byte gUnk_03005CF4
_08023F88: .4byte 0x00001854
_08023F8C: .4byte 0x00001844
_08023F90: .4byte 0x0000183C
_08023F94: .4byte 0x00001834
	thumb_func_end sub_08023ED8
