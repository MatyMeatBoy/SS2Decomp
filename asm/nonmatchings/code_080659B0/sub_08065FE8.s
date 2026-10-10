	thumb_func_start sub_08065FE8
sub_08065FE8: @ 0x08065FE8
	push {r4, r5, lr}
	ldr r5, _08065FF8
	ldr r2, [r5, #0]
	cmp r2, #0x31
	bls _08065FFC
	movs r0, #0
	b _0806602C
	.2byte 0x0000
_08065FF8: .4byte gUnk_03006338
_08065FFC:
	ldr r1, _08066034
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r4, [r1, #0]
	adds r4, r4, r0
	movs r0, #1
	str r0, [r4, #4]
	movs r0, #0x85
	strb r0, [r4, #0]
	ldr r0, _08066038
	ldr r0, [r0, #0]
	adds r0, #0x22
	adds r1, r4, #0
	adds r1, #8
	movs r2, #0xa
	bl CpuSet
	movs r0, #3
	strb r0, [r4, #1]
	ldr r0, [r5, #0]
	adds r0, #1
	str r0, [r5, #0]
	movs r0, #1
_0806602C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000
_08066034: .4byte gUnk_03006300
_08066038: .4byte gUnk_03005CF4
	thumb_func_end sub_08065FE8
