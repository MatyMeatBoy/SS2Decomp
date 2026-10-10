	thumb_func_start sub_08067D28
sub_08067D28: @ 0x08067D28
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r6, _08067D38
	ldr r2, [r6, #0]
	cmp r2, #0x31
	bls _08067D3C
	movs r0, #0
	b _08067D66
_08067D38: .4byte gUnk_03006338
_08067D3C:
	ldr r1, _08067D6C
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r4, [r1, #0]
	adds r4, r4, r0
	movs r5, #1
	str r5, [r4, #4]
	movs r0, #0x8b
	strb r0, [r4, #0]
	adds r1, r4, #0
	adds r1, #8
	ldr r2, _08067D70
	adds r0, r3, #0
	bl sub_080B8578
	strb r5, [r4, #1]
	ldr r0, [r6, #0]
	adds r0, #1
	str r0, [r6, #0]
	movs r0, #1
_08067D66:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08067D6C: .4byte gUnk_03006300
_08067D70: .4byte 0x04000002
	thumb_func_end sub_08067D28
