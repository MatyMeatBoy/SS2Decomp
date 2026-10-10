	thumb_func_start sub_08094EE4
sub_08094EE4: @ 0x08094EE4
	push {r4, lr}
	ldr r4, _08094F34
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _08094F2C
	bl sub_08000470
	cmp r0, #0
	bne _08094EFE
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _08094F2C
_08094EFE:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	ldr r1, [r4, #0]
	str r0, [r1, #0x20]
	cmp r0, #0
	beq _08094F2C
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, _08094F38
	str r0, [r1, #0xc]
	movs r0, #0
	str r0, [r1, #0x24]
	movs r0, #0x44
	str r0, [r1, #8]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_08000274
_08094F2C:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08094F34: .4byte gUnk_0300027C
_08094F38: .4byte sub_08094DEC
	thumb_func_end sub_08094EE4
