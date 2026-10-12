	thumb_func_start sub_08057B64
sub_08057B64: @ 0x08057B64
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800CE30
	cmp r0, #0
	bne _08057B80
	ldr r0, _08057B7C
	ldr r0, [r0, #0]
	movs r1, #0xd8
	lsls r1, r1, #1
	b _08057B88
	.2byte 0x0000
_08057B7C: .4byte gUnk_03005CF4
_08057B80:
	ldr r0, _08057B94
	ldr r0, [r0, #0]
	movs r1, #0xde
	lsls r1, r1, #1
_08057B88:
	adds r0, r0, r1
	adds r0, r0, r4
	ldrb r0, [r0, #0]
	pop {r4}
	pop {r1}
	bx r1
_08057B94: .4byte gUnk_03005CF4
	thumb_func_end sub_08057B64
