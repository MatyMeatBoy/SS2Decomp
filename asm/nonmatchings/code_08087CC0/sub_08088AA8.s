	thumb_func_start sub_08088AA8
sub_08088AA8: @ 0x08088AA8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _08088AC0
	ldr r0, [r0, #0]
	ldr r1, _08088AC4
	adds r4, r0, r1
	movs r5, #0
	adds r1, #0x48
	adds r7, r0, r1
	b _08088AD0
_08088AC0: .4byte gUnk_03005CF4
_08088AC4: .4byte 0x000007A4
_08088AC8:
	adds r5, #1
	adds r4, #0x70
	adds r7, r4, #0
	adds r7, #0x48
_08088AD0:
	cmp r5, #0xe
	bhi _08088B10
	adds r0, r7, #0
	bl sub_08000470
	adds r6, r0, #0
	cmp r6, #0
	bne _08088AC8
	adds r0, r4, #0
	adds r0, #0x40
	strh r5, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x68]
	ldr r1, _08088B1C
	str r1, [r4, #0x54]
	ldr r1, _08088B20
	adds r0, r0, r1
	str r0, [r4, #0x58]
	movs r0, #0xa
	str r0, [r4, #0x50]
	str r6, [r4, #0x6c]
	adds r0, r7, #0
	adds r1, r4, #0
	mov r2, r8
	bl sub_08000274
	movs r0, #2
	bl sub_08057624
_08088B10:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08088B1C: .4byte sub_080887D4
_08088B20: .4byte 0x000007FC
	thumb_func_end sub_08088AA8
