	thumb_func_start sub_08079FD0
sub_08079FD0: @ 0x08079FD0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0807A00C
	adds r6, r1, r0
	movs r4, #7
	movs r5, #0x80
	lsls r5, r5, #0xc
_08079FE8:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0806898C
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _0807A010
	adds r0, r6, #0
	adds r0, #0xc2
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, r1
	blt _0807A010
	lsrs r0, r5, #0x10
	b _0807A01C
	.2byte 0x0000
_0807A00C: .4byte gUnk_03003CE0
_0807A010:
	ldr r0, _0807A024
	adds r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bgt _08079FE8
	movs r0, #0
_0807A01C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_0807A024: .4byte 0xFFFF0000
	thumb_func_end sub_08079FD0
