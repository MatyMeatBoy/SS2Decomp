	thumb_func_start sub_08067FE0
sub_08067FE0: @ 0x08067FE0
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r4, _08067FF8
	ldr r2, [r4, #0]
	cmp r2, #0x31
	bls _08067FFC
	movs r0, #0
	b _08068024
	.2byte 0x0000
_08067FF8: .4byte gUnk_03006338
_08067FFC:
	cmp r3, #0
	beq _08068022
	ldr r1, _0806802C
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	movs r2, #1
	str r2, [r1, #4]
	movs r0, #0xa0
	strb r0, [r1, #0]
	lsls r0, r5, #0x10
	orrs r3, r0
	str r3, [r1, #8]
	strb r2, [r1, #1]
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
_08068022:
	movs r0, #1
_08068024:
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000
_0806802C: .4byte gUnk_03006300
	thumb_func_end sub_08067FE0
