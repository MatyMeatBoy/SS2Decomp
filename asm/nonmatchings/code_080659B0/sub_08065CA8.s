	thumb_func_start sub_08065CA8
sub_08065CA8: @ 0x08065CA8
	push {r4, r5, r6, r7, lr}
	ldr r4, _08065D24
	movs r0, #0x28
	bl sub_08001494
	str r0, [r4, #0]
	ldr r4, _08065D28
	movs r0, #0xa0
	bl sub_08001494
	str r0, [r4, #0]
	ldr r4, _08065D2C
	ldr r0, _08065D30
	bl sub_08001494
	str r0, [r4, #0]
	ldr r1, _08065D34
	movs r3, #0
	str r3, [r1, #0]
	ldr r1, _08065D38
	movs r2, #0xff
	strb r2, [r1, #0]
	ldr r1, _08065D3C
	strb r2, [r1, #0]
	ldr r1, _08065D40
	strb r2, [r1, #0]
	ldr r1, _08065D44
	strb r3, [r1, #0]
	movs r2, #0
	movs r1, #0
_08065CE4:
	str r1, [r0, #4]
	strh r1, [r0, #2]
	adds r2, #1
	adds r0, #0x88
	cmp r2, #0x31
	bls _08065CE4
	movs r3, #0
	ldr r7, _08065D48
	ldr r6, _08065D4C
	movs r4, #1
	negs r4, r4
	movs r5, #0
_08065CFC:
	lsls r1, r3, #2
	adds r0, r1, r7
	str r5, [r0, #0]
	movs r2, #0
	adds r0, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r6
_08065D0C:
	stm r1!, {r4}
	adds r2, #1
	cmp r2, #9
	bls _08065D0C
	adds r3, r0, #0
	cmp r3, #3
	bls _08065CFC
	bl sub_08067AFC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08065D24: .4byte gUnk_03006368
_08065D28: .4byte gUnk_03006258
_08065D2C: .4byte gUnk_03006300
_08065D30: .4byte 0x00001A90
_08065D34: .4byte gUnk_03006338
_08065D38: .4byte gUnk_0300636C
_08065D3C: .4byte gUnk_03006224
_08065D40: .4byte gUnk_03006228
_08065D44: .4byte gUnk_03006220
_08065D48: .4byte gUnk_03006210
_08065D4C: .4byte gUnk_03006260
	thumb_func_end sub_08065CA8
