	thumb_func_start sub_08002AA0
sub_08002AA0: @ 0x08002AA0
	push {r4, r5, r6, lr}
	sub sp, #0xc
	movs r0, #0
	movs r1, #1
	bl sub_08000990
	movs r0, #1
	str r0, [sp, #0]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08000A34
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	movs r0, #0xf8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	ldr r1, _08002B5C
	ldr r0, [sp, #8]
	ands r0, r1
	ldr r1, _08002B60
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #0
	add r1, sp, #8
	bl sub_08000AA8
	movs r6, #0
	ldr r1, _08002B64
	add r0, sp, #8
	strh r1, [r0, #0]
	movs r0, #1
	add r1, sp, #8
	bl sub_08000AA8
	ldr r1, _08002B68
	add r0, sp, #8
	strh r1, [r0, #0]
	movs r0, #2
	add r1, sp, #8
	bl sub_08000AA8
	ldr r1, _08002B6C
	add r0, sp, #8
	strh r1, [r0, #0]
	movs r0, #3
	add r1, sp, #8
	bl sub_08000AA8
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r4, #0xf
	str r4, [sp, #0]
	movs r0, #0x19
	movs r1, #3
	adds r2, r5, #0
	movs r3, #0
	bl sub_0800BCDC
	str r4, [sp, #0]
	movs r0, #0x14
	movs r1, #2
	adds r2, r5, #0
	movs r3, #0
	bl sub_0800BCDC
	str r4, [sp, #0]
	movs r0, #0x13
	movs r1, #1
	adds r2, r5, #0
	movs r3, #0
	bl sub_0800BCDC
	movs r0, #8
	str r0, [sp, #0]
	str r6, [sp, #4]
	movs r0, #4
	movs r1, #8
	movs r2, #1
	movs r3, #0
	bl sub_0800903C
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08002B5C: .4byte 0xFFFF0000
_08002B60: .4byte 0x00001C08
_08002B64: .4byte 0x00001D01
_08002B68: .4byte 0x00001E02
_08002B6C: .4byte 0x00001F03
	thumb_func_end sub_08002AA0
